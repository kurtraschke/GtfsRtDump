// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
        name: "GtfsRtDump",
        platforms: [
            .macOS(.v11)
        ],
        dependencies: [
            .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.19.2"),
            .package(url: "https://github.com/apple/swift-argument-parser", from: "1.1.4"),
            .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.2"))
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .executableTarget(
                    name: "GtfsRtDump",
                    dependencies: [
                        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                        .product(name: "ArgumentParser", package: "swift-argument-parser"),
                        .product(name: "Alamofire", package: "Alamofire")
                    ],
                    exclude: ["proto/google/transit/gtfs-realtime.proto",
                              "proto/google/transit/gtfs-realtime-crowding.proto",
                              "proto/google/transit/gtfs-realtime-LIRR.proto",
                              "proto/google/transit/gtfs-realtime-MNR.proto",
                              "proto/google/transit/gtfs-realtime-MTARR.proto",
                              "proto/google/transit/gtfs-realtime-NYCT.proto",
                              "proto/google/transit/gtfs-realtime-OneBusAway.proto",
                              "proto/google/transit/gtfs-realtime-service-status.proto"],
                    resources: [
                        .process("Resources"),
                    ]
            ),

            .testTarget(
                    name: "GtfsRtDumpTests",
                    dependencies: ["GtfsRtDump"],
                    resources: [
                        .copy("Resources"),
                    ]
            ),
        ]
)
