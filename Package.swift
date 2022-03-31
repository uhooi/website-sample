// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "WebsiteSample",
    products: [
        .executable(
            name: "WebsiteSample",
            targets: ["WebsiteSample"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
    ],
    targets: [
        .executableTarget(
            name: "WebsiteSample",
            dependencies: [
                .product(name: "Publish", package: "publish"),
            ]
        ),
    ]
)
