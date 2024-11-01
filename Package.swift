// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDBQuery",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GRDBQuery",
            targets: ["GRDBQuery"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/inlinehq/GRDB.swift", from: "3.0.8"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GRDBQuery",
            dependencies: [
                .product(name: "GRDB", package: "GRDB.swift"),
            ]),
        .testTarget(
            name: "GRDBQueryTests",
            dependencies: [
                "GRDBQuery",
                .product(name: "GRDB", package: "GRDB.swift"),
            ]),
    ]
)
