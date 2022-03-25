// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "MyWebsite",
    products: [
        .executable(
            name: "MyWebsite",
            targets: ["MyWebsite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "MyWebsite",
            dependencies: ["Publish"]
        )
    ]
)
