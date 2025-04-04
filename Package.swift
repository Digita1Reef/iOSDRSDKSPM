// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOSDRSDKSPM",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iOSDRSDKSPM",
            targets: ["iOSDRSDKSPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "DigitalReefSDK",
            url: "https://github.com/Digita1Reef/iOSDRSDKSPM/releases/download/4.28.3/DigitalReefSDK_4.28.3.zip",
            checksum: "040d496b43b0f93362bcd017b58275127da59e9285fbcb643eaf2c526f83d5c9"),
        .target(
            name: "iOSDRSDKSPM",
            dependencies: [
                .target(name: "DigitalReefSDK"),
            ],
            path: "Sources"
        )
    ]
)
