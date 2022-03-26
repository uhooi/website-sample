// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "MyWebsite",
    products: [
        .executable(
            name: "MyWebsite",
            targets: ["MyWebsite"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
    ],
    targets: [
        .executableTarget(
            name: "MyWebsite",
            dependencies: [
                .product(name: "Publish", package: "publish"),
            ]
        ),
    ]
)
