// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kotlinmultiplatformtest/allshared-kmmbridge/0.2.8/allshared-kmmbridge-0.2.8.zip"
let remoteKotlinChecksum = "58bb304a4b99514bdf0cd0c4a7d014848e5b17ee90f5c6dfe9dc3c28cede70a1"
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