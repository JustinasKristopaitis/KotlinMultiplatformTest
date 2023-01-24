// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kmlLibrary/allshared-kmmbridge/0.1.11/allshared-kmmbridge-0.1.11.zip"
let remoteKotlinChecksum = "c38985859a000e06c006c20ed8ed9f796e8fd84890ddfafd517b0f0a71a9123d"
let packageName = "KMMBridgeKickStart"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)