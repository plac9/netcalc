// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "netcalc",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "netcalc",
            targets: ["netcalc"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "netcalc",
            dependencies: [],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "NetCalcTests",
            dependencies: ["netcalc"]
        )
    ]
)
