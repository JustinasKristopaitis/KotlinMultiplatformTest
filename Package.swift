// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kotlinmultiplatformtest/allshared-kmmbridge/0.2.12/allshared-kmmbridge-0.2.12.zip"
let remoteKotlinChecksum = "f7a6f1892538597b17489fec6b710a8246d46c2a1db189b21ee169f1c92842fb"
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