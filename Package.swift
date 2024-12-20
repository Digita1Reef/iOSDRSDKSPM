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
            url: "https://github.com/Digita1Reef/iOSDRSDKSPM/releases/download/4.28.1/DigitalReefSDK_4.28.1.zip",
            checksum: "bf9737f7824ecea179ac85bce0394df6abcd6f9fc53e532275570be31030f629"),
        .target(
            name: "iOSDRSDKSPM",
            dependencies: [
                .target(name: "DigitalReefSDK"),
            ],
            path: "Sources"
        )
    ]
)
