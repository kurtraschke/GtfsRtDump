import XCTest
import class Foundation.Bundle

final class GtfsRtDumpTests: XCTestCase {
    func bartTest() throws {
        guard #available(macOS 10.13, *) else {
            return
        }

        #if !targetEnvironment(macCatalyst)

        let binary = productsDirectory.appendingPathComponent("GtfsRtDump")

        let inputFile = Bundle.module.path(forResource:"bart", ofType: "pb")!

        print(inputFile)

        let process = Process()
        process.executableURL = binary
        process.arguments = ["--file", inputFile]

        let pipe = Pipe()
        process.standardOutput = pipe

        process.standardInput = FileHandle(forReadingAtPath: inputFile)

        try process.run()
        //process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let actualOutput = String(data: data, encoding: .utf8)

        let expectedOutputPath = Bundle.module.path(forResource: "bart", ofType: "pbtext")!

        let expectedOutput = try String(contentsOf: URL(fileURLWithPath: expectedOutputPath))

        XCTAssertEqual(actualOutput, expectedOutput)
        #endif
    }

    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }

}
