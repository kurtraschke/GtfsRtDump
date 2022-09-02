import Foundation
import ArgumentParser
import Alamofire
import SwiftProtobuf

#if !(os(Linux) || os(Windows))
final class CustomServerTrustManager: ServerTrustManager {
    let disableValidation: Bool

    init(disableValidation: Bool) {
        self.disableValidation = disableValidation
        super.init(evaluators: [:])
    }

    override func serverTrustEvaluator(forHost host: String) -> ServerTrustEvaluating? {
        if (disableValidation) {
            return DisabledTrustEvaluator()
        } else {
            return DefaultTrustEvaluator()
        }
    }
}
#endif

func get(url: URL, headers: HTTPHeaders?, disableValidation: Bool) async throws -> Data? {
    #if !(os(Linux) || os(Windows))
    let stm = CustomServerTrustManager(disableValidation: disableValidation)
    #else
    let stm : ServerTrustManager? = nil
    #endif

    let s = Session(serverTrustManager: stm)

    async let response = s.request(url, headers: headers)
            .validate()
            .serializingData()

    return try await response.value
}

func dumpFeed(feedContents: Data, extensionMap: ExtensionMap, json: Bool = false) throws -> String {
    let fm = try TransitRealtime_FeedMessage(serializedData: feedContents, extensions: extensionMap)

    if (json) {
        return try fm.jsonString()
    } else {
        return fm.textFormatString()
    }
}

enum GtfsRtExtension: String, CaseIterable, ExpressibleByArgument {
    case OBA
    case NYCT
    case LIRR
    case MNR
    case MTARR
    case MERCURY
    case CROWDING
}

var allExtensions: [GtfsRtExtension: SwiftProtobuf.SimpleExtensionMap] = [
    GtfsRtExtension.OBA: TransitRealtime_Gtfs_u45Realtime_u45OneBusAway_Extensions,
    GtfsRtExtension.NYCT: TransitRealtime_Gtfs_u45Realtime_u45Nyct_Extensions,
    GtfsRtExtension.LIRR: TransitRealtime_Gtfs_u45Realtime_u45Lirr_Extensions,
    GtfsRtExtension.MNR: TransitRealtime_Gtfs_u45Realtime_u45Mnr_Extensions,
    GtfsRtExtension.MTARR: TransitRealtime_Gtfs_u45Realtime_u45Mtarr_Extensions,
    GtfsRtExtension.MERCURY: TransitRealtime_Gtfs_u45Realtime_u45Service_u45Status_Extensions,
    GtfsRtExtension.CROWDING: TransitRealtime_Gtfs_u45Realtime_u45Crowding_Extensions
]

@main
struct GtfsRtDump: AsyncParsableCommand {

    @Option(name: .shortAndLong,
            help: "File from which to read GTFS-rt feed; if omitted, reads from standard input",
            completion: .file(), transform: URL.init(fileURLWithPath:))
    var file: URL?

    @Option(name: .shortAndLong,
            help: "URL from which to read GTFS-rt feed",
            transform: URL.init(string:))
    var url: URL?

    @Option(name: [.customShort("X"), .customLong("extension")],
            help: "Enable parsing of the specified GTFS-rt extension (allowed: \(GtfsRtExtension.allValueStrings.joined(separator: ", ")))")
    var extensions: [GtfsRtExtension] = []

    @Option(name: [.customShort("H"), .customLong("header")],
            help: "Set specified HTTP header (format: 'name=value')",
            transform: { (s: String) -> HTTPHeader in
                let parts = s.split(separator: "=", maxSplits: 1)
                guard parts.count == 2 else {
                    throw ValidationError("Custom HTTP header must be specified as 'name=value'")
                }
                return HTTPHeader(name: String(parts[0]), value: String(parts[1]))
            })
    var headers: [HTTPHeader] = []

    #if !(os(Linux) || os(Windows))
    @Flag(help: "Disable all TLS validation; potentially hazardous")
    var disableTlsValidation: Bool = false
    #else
    var disableTlsValidation: Bool = false
    #endif

    @Flag(help: "Output feed as JSON")
    var json: Bool = false

    mutating func validate() throws {
        guard file == nil || url == nil else {
            throw ValidationError("File and URL cannot both be specified")
        }
        guard (headers.count == 0 || url != nil) else {
            throw ValidationError("Headers can only be specified when an HTTP(S) URL is provided")
        }
        guard (disableTlsValidation && url?.scheme == "https" || !disableTlsValidation) else {
            throw ValidationError("TLS validation can only be disabled if an HTTPS URL is provided")
        }
    }

    var fileHandle: FileHandle {
        get throws {
            guard let file = file else {
                return .standardInput
            }
            return try FileHandle(forReadingFrom: file)
        }
    }

    mutating func run() async throws {
        var data: Data?

        if let url = url {
            data = try await get(url: url, headers: HTTPHeaders(headers), disableValidation: disableTlsValidation)
        } else {
            data = try fileHandle.readToEnd()
        }

        var em = SimpleExtensionMap()
        extensions.map {
                    allExtensions[$0]!
                }
                .forEach {
                    em.formUnion($0)
                }

        if let data = data {
            try print(dumpFeed(feedContents: data, extensionMap: em, json: json))
        } else {
            throw ValidationError("no data?")
        }
    }
}