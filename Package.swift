// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "toolboxz",

    platforms: [
        .iOS(.v16),
        .macOS(.v12),
        .tvOS(.v16),
        .watchOS(.v8)
    ],

    products: [
        .library(
            name: "Alfaz",
            targets: ["Alfaz"]
        ),
        .library(
            name: "Beatz",
            targets: ["Beatz"]
        ),
        .library(
            name: "Defectz",
            targets: ["Defectz"]
        ),
        .library(
            name: "Gavetaz",
            targets: ["Gavetaz"]
        ),
        .library(
            name: "Sapataz",
            targets: ["Sapataz"]
        ),
        .library(
            name: "SettingsFeature",
            targets: ["SettingsFeature"]
        ),
        .library(
            name: "Variationz",
            targets: ["Variationz"]
        )
    ],

    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "0.6.0"),
        .package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay", from: "0.9.0")
    ],

    targets: [
        .target(
            name: "Alfaz",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay")
            ]
        ),
        .testTarget(
            name: "AlfazTests",
            dependencies: [
                "Alfaz"
            ]
        ),

        .target(
            name: "Beatz",
            dependencies: []
        ),
        .testTarget(
            name: "BeatzTests",
            dependencies: [
                "Beatz"
            ]
        ),

        .target(
            name: "Defectz",
            dependencies: []
        ),
        .testTarget(
            name: "DefectzTests",
            dependencies: [
                "Defectz"
            ]
        ),

        .target(
            name: "Gavetaz",
            dependencies: []
        ),
        .testTarget(
            name: "GavetazTests",
            dependencies: [
                "Gavetaz"
            ]
        ),

        .target(
            name: "Sapataz",
            dependencies: []
        ),
        .testTarget(
            name: "SapatazTests",
            dependencies: [
                "Sapataz"
            ]
        ),

        .target(
            name: "SettingsFeature",
            dependencies: []
        ),
        .testTarget(
            name: "SettingsFeatureTests",
            dependencies: [
                "SettingsFeature"
            ]
        ),

        .target(
            name: "Variationz",
            dependencies: []
        ),
        .testTarget(
            name: "VariationzTests",
            dependencies: [
                "Variationz"
            ]
        )
    ]
)
