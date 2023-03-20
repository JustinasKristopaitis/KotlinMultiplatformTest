// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kotlinmultiplatformtest/allshared-kmmbridge/0.2.13/allshared-kmmbridge-0.2.13.zip"
let remoteKotlinChecksum = "d780e41e1d529043e5f3c6488ecc93b7c49114a430a3c7c5c991a52e61c15f0d"
let packageName = "DogoTracker"

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