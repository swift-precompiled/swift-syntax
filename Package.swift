// swift-tools-version:5.7

import PackageDescription
import Foundation

let package = Package(
    name: "swift-syntax",
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108245.zip",
            checksum: "7e20c37128b098c4dc62c17e61818e8e30c0ccfa519a1ab4a0225ee81c30d89c"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108247.zip",
            checksum: "31475dd653b2198e5fe66ba008877cfe986926c25eb6fcb2295221c8900b6793"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108250.zip",
            checksum: "35f0fc57f756762a97cd23bac626fe3937504ad6f9f639f938d9c5dab023da52"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108256.zip",
            checksum: "013d87a040f702b475f1e154a68d84afac0674276548320fefb4ea86aaa1d6e5"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [.target(name: "SwiftIDEUtils"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108258.zip",
            checksum: "2f0126852942335979f61ea610e636d703a342b14a903c2ad2657f20b740d942"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108266.zip",
            checksum: "af57b4fc9fd581b1f0e58c3d21a560af100ca39e8fe58d88990f2df47b282adf"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108279.zip",
            checksum: "d87ab3a1a14adbbfcd80c82b3e01f81ad09bed5aa2862f6bc6adac0a1d325b93"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108283.zip",
            checksum: "ff84ac1c0918d71dc54ee50afb9d1b0ad7a833748371b06e860935c494cac019"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108286.zip",
            checksum: "b74ce0565daaec16d01667cb4920bdccebad5fb9b24ee8346a8fa7ebb95b8467"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108323.zip",
            checksum: "fab19d63ae399d45fccc8057ff43a0d0bca42ae38f1ef9f7d803203d2869fd40"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108338.zip",
            checksum: "2bb65215b892464bee65b01b13b81105f5a1c8b9b410d0f2c6eef53f7e3e6bfc"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108340.zip",
            checksum: "a744905009628389a81e566fca90e8ea27195c147101bfdea93343b9bdc05e94"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108342.zip",
            checksum: "417465b2437c7170c4c212b6857454f211477b861ef9373206b5508df473c39a"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108345.zip",
            checksum: "21d8b788f053c9e5e02ed74cbc87f38213b8a9051d7d8981672e95ce698182c9"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108347.zip",
            checksum: "1c9fdf3d8ea87c11f218d94d0c87cc8a76d25163188e133c37a61f32ea45e051"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108349.zip",
            checksum: "efece1b29de759a688e43c6cd104f6b9202aa17c7f86091c98d15ca7c59002ab"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213108350.zip",
            checksum: "d8933b40ea08cb18b5d87193b0a2a4e34b78f643404b7da87cc02cad65193669"
        )
    ]
)