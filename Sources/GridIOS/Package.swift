// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MGRS",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "MGRS",
            targets: ["MGRS"]
        ),
    ],
    targets: [
        .target(
            name: "MGRS",
            path: "Sources/MGRS",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("grid"),
                .headerSearchPath("tile"),
                .headerSearchPath("utm"),
                .headerSearchPath("features"),
                .headerSearchPath("gzd"),
                .headerSearchPath("property")
            ]
        )
    ]
)