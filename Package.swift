// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-syntax",
    platforms: [
        .macOS("10.15"),
        .iOS("13.0"),
        .tvOS("13.0"),
        .watchOS("6.0"),
        .macCatalyst("13.0")
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
            name: "SwiftDiagnostics",
            targets: ["SwiftDiagnostics_Aggregation"]
        ),
        .library(
            name: "SwiftIDEUtils",
            targets: ["SwiftIDEUtils_Aggregation"]
        ),
        .library(
            name: "SwiftIfConfig",
            targets: ["SwiftIfConfig_Aggregation"]
        ),
        .library(
            name: "SwiftWarningControl",
            targets: ["SwiftWarningControl_Aggregation"]
        ),
        .library(
            name: "SwiftLexicalLookup",
            targets: ["SwiftLexicalLookup_Aggregation"]
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
        ),
        .library(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            targets: ["SwiftSyntaxMacrosGenericTestSupport_Aggregation"]
        ),
        .library(
            name: "_SwiftCompilerPluginMessageHandling",
            targets: ["SwiftCompilerPluginMessageHandling_Aggregation"]
        ),
        .library(
            name: "_SwiftLibraryPluginProvider",
            targets: ["SwiftLibraryPluginProvider_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "_SwiftSyntaxCShims",
            dependencies: ["_SwiftSyntaxCShims_PrecompiledArchive"],
            path: "Sources/_SwiftSyntaxCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-f891f6f456fd7734c6ca39cc7e742b83adcc21522c9158be457957b78fcf5761.xcframework.zip",
            checksum: "f891f6f456fd7734c6ca39cc7e742b83adcc21522c9158be457957b78fcf5761"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-1202d4d6b882f7d522c95462b40ad1434968e663699a770219addce6fe6da810.xcframework.zip",
            checksum: "1202d4d6b882f7d522c95462b40ad1434968e663699a770219addce6fe6da810"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-dd87af78be0273d4f5838a0bb9ce0973f7eb71b62c52a44260d8a614838fc8f6.xcframework.zip",
            checksum: "dd87af78be0273d4f5838a0bb9ce0973f7eb71b62c52a44260d8a614838fc8f6"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: [
                "SwiftCompilerPlugin",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "SwiftSyntaxMacros_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-77f9a0885282a66b4043816cfb063e97ad6e1e5c7a365e6740b41c5ab11ac61f.xcframework.zip",
            checksum: "77f9a0885282a66b4043816cfb063e97ad6e1e5c7a365e6740b41c5ab11ac61f"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                "SwiftCompilerPluginMessageHandling",
                "_SwiftSyntaxCShims",
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-200578c89b1d5181f4b3a350d2b31f8156639fc2d96ceae93c298d8bdc14ceed.xcframework.zip",
            checksum: "200578c89b1d5181f4b3a350d2b31f8156639fc2d96ceae93c298d8bdc14ceed"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-eeda53b73618c743470e7dc6bb56f4f191a685f1eb9d367d3b8831debeea76c6.xcframework.zip",
            checksum: "eeda53b73618c743470e7dc6bb56f4f191a685f1eb9d367d3b8831debeea76c6"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [
                "SwiftIDEUtils",
                "SwiftSyntax_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-9170ca6ca32cc0769ce08bb32734a5a001a515b408fd9a98a2872d9f67a160ce.xcframework.zip",
            checksum: "9170ca6ca32cc0769ce08bb32734a5a001a515b408fd9a98a2872d9f67a160ce"
        ),
        .target(
            name: "SwiftIfConfig_Aggregation",
            dependencies: [
                "SwiftIfConfig",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-7ed5ce0bc9ab5acbd598db1b398d14f1020a2914a7413cc9db12cc87b67f03f2.xcframework.zip",
            checksum: "7ed5ce0bc9ab5acbd598db1b398d14f1020a2914a7413cc9db12cc87b67f03f2"
        ),
        .target(
            name: "SwiftWarningControl_Aggregation",
            dependencies: [
                "SwiftWarningControl",
                "SwiftSyntax_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftWarningControl",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-0f6142437260272de18735e835031e424f666ec9333faf1e018848cdf280f3c7.xcframework.zip",
            checksum: "0f6142437260272de18735e835031e424f666ec9333faf1e018848cdf280f3c7"
        ),
        .target(
            name: "SwiftLexicalLookup_Aggregation",
            dependencies: [
                "SwiftLexicalLookup",
                "SwiftSyntax_Aggregation",
                "SwiftIfConfig_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftLexicalLookup",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-9f35eadf70a25713306206a16ccf5b3608957e41a5cb5a966c2e5327d9ab8528.xcframework.zip",
            checksum: "9f35eadf70a25713306206a16ccf5b3608957e41a5cb5a966c2e5327d9ab8528"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: [
                "SwiftLibraryPluginProvider",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftLibraryPluginProviderCShims"
            ]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-5d74b44f004c2e0a5a49c5bb1ebde074cf7696d22afa428a7d449d2b3d4d4f53.xcframework.zip",
            checksum: "5d74b44f004c2e0a5a49c5bb1ebde074cf7696d22afa428a7d449d2b3d4d4f53"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftLibraryPluginProviderCShims-f53972e8c851eac0187cc058ee04f958a32a3717d18ed4503e8458d30a19ec5f.xcframework.zip",
            checksum: "f53972e8c851eac0187cc058ee04f958a32a3717d18ed4503e8458d30a19ec5f"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                "SwiftSyntax",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-4e3204a73d00a838af40c8262d42c1074c61aa8d8ff541a3ca8de6acf075dda3.xcframework.zip",
            checksum: "4e3204a73d00a838af40c8262d42c1074c61aa8d8ff541a3ca8de6acf075dda3"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-620397670750c3d39e00b06ffa830efd8b9a57faf2146ec4db52be4f0c15ac3e.xcframework.zip",
            checksum: "620397670750c3d39e00b06ffa830efd8b9a57faf2146ec4db52be4f0c15ac3e"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-f8a80be0b1efc708e02c73d7b391eef3538e772df9d2583917238dfcf6a8fea8.xcframework.zip",
            checksum: "f8a80be0b1efc708e02c73d7b391eef3538e772df9d2583917238dfcf6a8fea8"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-c3b1c4ec7f3f7bba0efc888bcf7197d2d1c38d1fbeef989cf7f14e4c61a8f15f.xcframework.zip",
            checksum: "c3b1c4ec7f3f7bba0efc888bcf7197d2d1c38d1fbeef989cf7f14e4c61a8f15f"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-e4e2806ef5218a33dc2ef956e5521a3763011d3a67ae72c1150fb4a7a0f2d0cf.xcframework.zip",
            checksum: "e4e2806ef5218a33dc2ef956e5521a3763011d3a67ae72c1150fb4a7a0f2d0cf"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-1a53e8dbb5f50a70f20640849f0ba51180a314bb81694096b746b2d18c0c76f2.xcframework.zip",
            checksum: "1a53e8dbb5f50a70f20640849f0ba51180a314bb81694096b746b2d18c0c76f2"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-a828de667e93a0d11b59d951505a5b7690269764dc53df4c3c525e5ced637b49.xcframework.zip",
            checksum: "a828de667e93a0d11b59d951505a5b7690269764dc53df4c3c525e5ced637b49"
        ),
        .target(
            name: "SwiftSyntaxBuilder_Aggregation",
            dependencies: [
                "SwiftSyntaxBuilder",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-906777836636f74b1cb136593d29457ff58a45c5569bff5e597698fbd3e5f7b9.xcframework.zip",
            checksum: "906777836636f74b1cb136593d29457ff58a45c5569bff5e597698fbd3e5f7b9"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: [
                "SwiftSyntaxMacros",
                "SwiftDiagnostics_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-b54b60fa5d6220e90b3e4ab65c89555dc20fa5e9718a70d3d358117ccb2db7b9.xcframework.zip",
            checksum: "b54b60fa5d6220e90b3e4ab65c89555dc20fa5e9718a70d3d358117ccb2db7b9"
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_Aggregation",
            dependencies: [
                "SwiftSyntaxMacroExpansion",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-8f37abbeeebfa1951b8a2ec04ec344b842f8a029822e13194b47c9aef227d536.xcframework.zip",
            checksum: "8f37abbeeebfa1951b8a2ec04ec344b842f8a029822e13194b47c9aef227d536"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: [
                "SwiftSyntaxMacrosTestSupport",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacrosGenericTestSupport_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-2e53f7751dcaa5870571ba64848158a75218d7fc8f09f229b68894c1397029a9.xcframework.zip",
            checksum: "2e53f7751dcaa5870571ba64848158a75218d7fc8f09f229b68894c1397029a9"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: [
                "SwiftSyntaxMacrosGenericTestSupport",
                "_SwiftSyntaxGenericTestSupport_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftIDEUtils_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-addb25b3de82507f812f8cfa6994579ee1d717e95298e926ca178c2e766c953f.xcframework.zip",
            checksum: "addb25b3de82507f812f8cfa6994579ee1d717e95298e926ca178c2e766c953f"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-b48bd44e5031edb38321e7dd67033925b8d5eef93d86e762dca833ad6b08ea61.xcframework.zip",
            checksum: "b48bd44e5031edb38321e7dd67033925b8d5eef93d86e762dca833ad6b08ea61"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: [
                "SwiftParserDiagnostics",
                "SwiftBasicFormat_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-e1034f0357e494e5776fb64a671721df6d0217973d5a50c6a823f735eb5299e7.xcframework.zip",
            checksum: "e1034f0357e494e5776fb64a671721df6d0217973d5a50c6a823f735eb5299e7"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: [
                "SwiftOperators",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-69ae4b17c43c6a38b9cb20e3a74f019c110153faf680b700703d99265b4c1935.xcframework.zip",
            checksum: "69ae4b17c43c6a38b9cb20e3a74f019c110153faf680b700703d99265b4c1935"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: [
                "SwiftRefactor",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-f58cb46e8c2649ac0c534c4d38d23d2cf8bdec07c0c41746bf2e1dd96565c201.xcframework.zip",
            checksum: "f58cb46e8c2649ac0c534c4d38d23d2cf8bdec07c0c41746bf2e1dd96565c201"
        )
    ]
)