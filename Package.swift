// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "McuManager",
    platforms: [.iOS(.v9), .macOS(.v10_13)],
    products: [
        .library(
            name: "McuManager",
            targets: ["McuManager"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/unrelentingtech/SwiftCBOR.git",
            .exact("0.4.4")
        ),
    ],
    targets: [
        .target(
            name: "McuManager",
            dependencies: ["SwiftCBOR"],
            path: "Source",
            exclude:["Info.plist"]
        )
    ]
)
