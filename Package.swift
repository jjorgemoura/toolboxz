// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "alfaz",

    platforms: [
        .iOS(.v15),
        .macOS(.v11),
        .tvOS(.v15),
        .watchOS(.v7),
    ],

    products: [
        .library(
            name: "Alfaz",
            targets: ["Alfaz"]
        )
    ],

    dependencies: [
    ],

    targets: [
        .target(
            name: "Alfaz",
            dependencies: [
            ]
        ),
        .testTarget(
            name: "AlfazTests",
            dependencies: [
                "Alfaz"
            ]
        ),
    ]
)
