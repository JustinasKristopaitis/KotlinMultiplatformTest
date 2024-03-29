@Suppress("DSL_SCOPE_VIOLATION")
plugins {
    kotlin("multiplatform")
    kotlin("native.cocoapods")
    id("co.touchlab.faktory.kmmbridge")
    `maven-publish`
}

kotlin {
    ios()
    // Note: iosSimulatorArm64 target requires that all dependencies have M1 support
    iosSimulatorArm64()

    sourceSets {
        val commonMain by getting {
            dependencies {
                api(project(":analytics"))
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(libs.bundles.shared.commonTest)
            }
        }
        val iosMain by getting
        val iosTest by getting
        val iosSimulatorArm64Main by getting {
            dependsOn(iosMain)
        }
        val iosSimulatorArm64Test by getting {
            dependsOn(iosTest)
        }
    }

    cocoapods {
        name = "DogoTracker"
        summary = "DogoTracker sample"
        homepage = "https://www.touchlab.co"
        ios.deploymentTarget = "13.5"
        extraSpecAttributes["libraries"] = "'c++', 'sqlite3'"

        framework {
            baseName = "DogoTracker"
            export(project(":analytics"))
            isStatic = true
        }
    }
}

addGithubPackagesRepository()

kmmbridge {
    mavenPublishArtifacts()
    githubReleaseVersions()
//    Android version is not automatically incremented in KMMBridge, so if you need it to be aligned with the iOS version
//    use manualVersions instead of githubReleaseVersions to set version manually
//    manualVersions()
    spm()
//    cocoapods("git@github.com:touchlab/PodSpecs.git")
}
