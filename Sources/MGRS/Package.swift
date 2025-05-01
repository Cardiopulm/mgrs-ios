// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "mgrs-ios",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "MGRS",
            targets: ["MGRS"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Cardiopulm/grid-ios.git", from: "1.0.0"),
        .package(url: "https://github.com/Cardiopulm/simple-features-ios.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MGRS",
            dependencies: [
                .product(name: "GridIOS", package: "grid-ios"),
                .product(name: "SimpleFeatures", package: "simple-features-ios")
            ],
            path: "Sources/MGRS"
        )
    ]
)