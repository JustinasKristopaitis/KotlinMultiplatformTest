// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/JustinasKristopaitis/KotlinMultiplatformTest/github/justinasKristopaitis/kotlinmultiplatformtest/allshared-kmmbridge/0.2.11/allshared-kmmbridge-0.2.11.zip"
let remoteKotlinChecksum = "4ab364edd6fe3b9b45fe9d75f05e1fac1212f4d64e09e008f90ef993e688a403"
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