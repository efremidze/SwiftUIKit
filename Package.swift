// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftUIKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftUIKit",
            targets: ["SwiftUIKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUIKit",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "SwiftUIKitTests",
            dependencies: ["SwiftUIKit"],
            path: "Tests"),
    ]
) 