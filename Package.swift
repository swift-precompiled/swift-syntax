// swift-tools-version:5.7

import PackageDescription
import Foundation

let package = Package(
    name: "swift-syntax",
    platforms: [
        .iOS("13.0"),
        .macCatalyst("13.0"),
        .macOS("10.15"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    products: [
        .library(
            name: "SwiftBasicFormat",
            targets: ["SwiftBasicFormat_Aggregation"]
        ),
        .library(
            name: "SwiftCompilerPlugin",
            targets: ["SwiftCompilerPlugin_Aggregation"]
        ),
        .library(
            name: "SwiftCompilerPluginMessageHandling",
            targets: ["SwiftCompilerPluginMessageHandling_Aggregation"]
        ),
        .library(
            name: "SwiftDiagnostics",
            targets: ["SwiftDiagnostics_Aggregation"]
        ),
        .library(
            name: "SwiftIDEUtils",
            targets: ["SwiftIDEUtils_Aggregation"]
        ),
        .library(
            name: "SwiftOperators",
            targets: ["SwiftOperators_Aggregation"]
        ),
        .library(
            name: "SwiftParser",
            targets: ["SwiftParser_Aggregation"]
        ),
        .library(
            name: "SwiftParserDiagnostics",
            targets: ["SwiftParserDiagnostics_Aggregation"]
        ),
        .library(
            name: "SwiftRefactor",
            targets: ["SwiftRefactor_Aggregation"]
        ),
        .library(
            name: "SwiftSyntax",
            targets: ["SwiftSyntax_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxBuilder",
            targets: ["SwiftSyntaxBuilder_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacros",
            targets: ["SwiftSyntaxMacros_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacroExpansion",
            targets: ["SwiftSyntaxMacroExpansion_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacrosTestSupport",
            targets: ["SwiftSyntaxMacrosTestSupport_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: [.target(name: "SwiftBasicFormat"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftBasicFormat.xcframework.zip",
            checksum: "49f7d88b75b892b1256a0afe8bc527e93bfa15dbf5fb6e288e4fa437f6584d36"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: [
                .target(name: "SwiftCompilerPlugin"),
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "SwiftSyntaxMacros_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftCompilerPlugin.xcframework.zip",
            checksum: "a87846cb0af77ec62774534381cd92eabc7d9ad6a1349ad94534226f94714043"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                .target(name: "SwiftCompilerPluginMessageHandling"),
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftCompilerPluginMessageHandling",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftCompilerPluginMessageHandling.xcframework.zip",
            checksum: "df092bfe390886450a8da7a5ab2434333ac95009c31ba7a2ec162ac1af67eaa2"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftDiagnostics.xcframework.zip",
            checksum: "9094a168cccf978ab086494e970427e1c599efdf44e167e3ed488bc901135a7e"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [.target(name: "SwiftIDEUtils"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftIDEUtils.xcframework.zip",
            checksum: "a3c2cfb9a16fc191c4528526c84dfc2d2af19aa4da470b585032940af8b3b802"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: [
                .target(name: "SwiftOperators"),
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftOperators.xcframework.zip",
            checksum: "e533563ee3d98b05ce25f85f76589e736ca506730aa135cb4df6e6a3319a1dc9"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftParser.xcframework.zip",
            checksum: "d4eb5f3e212cb96de9fad1f7d8dc1dbbf0ad662c1975feb9840a9a91a7a8ffc4"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: [
                .target(name: "SwiftParserDiagnostics"),
                "SwiftBasicFormat_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftParserDiagnostics.xcframework.zip",
            checksum: "358214f19a12e0f58e712052711499c9541eb024612555b342465030c95d7a02"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: [
                .target(name: "SwiftRefactor"),
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftRefactor.xcframework.zip",
            checksum: "effb5640958b9b7921123f7e319af6a4afeed1a690d485a40679809e770b11bd"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntax"),
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntax.xcframework.zip",
            checksum: "6766d49293274617a2d08d8e0491c75839e8a10c83890c66f3f303298e427d3d"
        ),
        .target(
            name: "SwiftSyntaxBuilder_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxBuilder"),
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntaxBuilder.xcframework.zip",
            checksum: "1f09035c875c1e2886da49076d95a7f9d94fcf392d0624c72093d782e2f82a03"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacros"),
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntaxMacros.xcframework.zip",
            checksum: "6725c2dfe2f6c18fe46e4b1c4bbb631dc2bc6611286c5eb0f0518d9861a7c5e5"
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacroExpansion"),
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntaxMacroExpansion.xcframework.zip",
            checksum: "2fa0864279050effc1376a4a93a4d26519f7aefe8dd2e39d79541848ca0b4b6b"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacrosTestSupport"),
                "_SwiftSyntaxTestSupport_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntaxMacrosTestSupport.xcframework.zip",
            checksum: "808cbbb3935792f3a9e40f1749b8558dd30475429eaa8c22448d23bb784d6101"
        ),
        .target(
            name: "_SwiftSyntaxTestSupport_Aggregation",
            dependencies: [
                .target(name: "_SwiftSyntaxTestSupport"),
                "SwiftBasicFormat_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/_SwiftSyntaxTestSupport.xcframework.zip",
            checksum: "f4c4238259a3b50b942409acac2eb089f13f48465399643a5241684f5bbac1f3"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntax510.xcframework.zip",
            checksum: "a2601cdbcdb8ab1f9b79a366bb94cd8e54c7f03eb514a8ef1d164b1526859ef8"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.1/SwiftSyntax509.xcframework.zip",
            checksum: "6fd56658970f173ba39c59db707dfe815d9dc1b37e0da193af56760c1e461bd6"
        )
    ]
)