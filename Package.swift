// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Core",
            targets: ["Core"]
        ),
    ],
    dependencies: [
        // Remote Shared Package
        .package(
            url: "https://github.com/minhtien1403/ios-shared-package",
            branch: "master"
        )
    ],
    targets: [
        .target(
            name: "Core",
            dependencies: [
                .product(name: "Shared", package: "ios-shared-package")
            ],
            path: "Sources/Core"
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"],
            path: "Tests/CoreTests"
        )
    ]
)
