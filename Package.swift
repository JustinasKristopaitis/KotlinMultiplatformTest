// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kmlLibrary/allshared-kmmbridge/0.1.3/allshared-kmmbridge-0.1.3.zip"
let remoteKotlinChecksum = "5e79251767baa288cdfbbbd2cc4b9fdeaa472e5de0998cc8ed3ba284665b43a1"
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