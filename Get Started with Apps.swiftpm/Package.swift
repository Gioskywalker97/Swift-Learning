// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Get Started with Apps",
    defaultLocalization: "en",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "Get Started with Apps",
            targets: ["App"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                "Guide"
            ],
            path: "App"
        ),
        .target(
            name: "Guide",
            path: "Guide",
            resources: [
                .process("Guide.tutorial"),
                .process("Resources/composability@2x.png"),
                .process("Resources/creating-new-swiftui-views@2x.png"),
                .process("Resources/experiment-with-swiftui@2x.png"),
                .process("Resources/get-started-with-apps@2x.png"),
                .process("Resources/modifying-swift-ui-views@2x.png"),
                .process("Resources/swift-ui-views@2x.png")
            ]
        )
    ]
)
