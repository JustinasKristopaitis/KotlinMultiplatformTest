// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kotlinmultiplatformtest/allshared-kmmbridge/0.2.10/allshared-kmmbridge-0.2.10.zip"
let remoteKotlinChecksum = "1d9d100ea7cefbdc3ba1f310071cba8e4d4a6ec1a0b9ff2789c8c2d8ba4e903a"
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