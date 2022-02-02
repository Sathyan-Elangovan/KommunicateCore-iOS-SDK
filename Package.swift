// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "KommunicateCore-iOS-SDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "KommunicateCore-iOS-SDK",
            targets: ["KommunicateCore-iOS-SDK"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "KommunicateCore-iOS-SDK",
            dependencies: [],
            path: "Sources",
            resources: [
                .copy("KommunicateCore-iOS-SDK/Classes/push/TSMessagesDefaultDesign.json"),
                .copy("KommunicateCore-iOS-SDK/Classes/MQTT/MQTTClient-Prefix.pch"),
            ],
            cSettings: [
                .headerSearchPath(""),
                .headerSearchPath("Classes"),
                .headerSearchPath("account"),
                .headerSearchPath("applozickit"),
                .headerSearchPath("channel"),
                .headerSearchPath("commons"),
                .headerSearchPath("conversation"),
                .headerSearchPath("database"),
                .headerSearchPath("JWT"),
                .headerSearchPath("message"),
                .headerSearchPath("MQTT"),
                .headerSearchPath("networkcommunication"),
                .headerSearchPath("notification"),
                .headerSearchPath("prefrence"),
                .headerSearchPath("push"),
                .headerSearchPath("sync"),
                .headerSearchPath("user"),
                .headerSearchPath("utilities")
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
