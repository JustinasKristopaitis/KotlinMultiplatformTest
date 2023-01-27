// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kmmlibrary/allshared-kmmbridge/0.2.5/allshared-kmmbridge-0.2.5.zip"
let remoteKotlinChecksum = "ea2d6989d90ff5f753a67760b876db3b34df5401fa94e9541e405e3a90f34dc8"
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