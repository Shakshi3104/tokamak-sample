// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "SampleApp",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "SampleApp", targets: ["SampleApp"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.9.0")
    ],
    targets: [
        .target(
            name: "SampleApp",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "SampleAppTests",
            dependencies: ["SampleApp"]),
    ]
)