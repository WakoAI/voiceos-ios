// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "VoiceOS",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .tvOS(.v11),
        .watchOS(.v4),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "VoiceOS",
            targets: ["VoiceOS"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.8.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "VoiceOS",
            dependencies: ["AnyCodable", ],
            path: "VoiceOS/Classes"
        ),
    ]
)
