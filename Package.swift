// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kmlLibrary/allshared-kmmbridge/0.1.6/allshared-kmmbridge-0.1.6.zip"
let remoteKotlinChecksum = "9b7e43b682f8f3a39ce6be09ac22eb52ef0fb362a59655cd9ff5011e45e0dac2"
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