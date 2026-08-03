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
            name: "_SwiftSyntaxCShims_Aggregation",
            dependencies: ["_SwiftSyntaxCShims"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-d63cc642a9dd5dbffb43447aeda0a5477a0213f7981bd772751a9a29f1511822.xcframework.zip",
            checksum: "d63cc642a9dd5dbffb43447aeda0a5477a0213f7981bd772751a9a29f1511822"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-e3ff1c5c6fb1f0f9939397c048bba8a6a5e7c934b60d606d164b90b0ff1f4253.xcframework.zip",
            checksum: "e3ff1c5c6fb1f0f9939397c048bba8a6a5e7c934b60d606d164b90b0ff1f4253"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-4439ebfe42787530ae37c01822cceb810f968f596131a5868351e1ca460fd18f.xcframework.zip",
            checksum: "4439ebfe42787530ae37c01822cceb810f968f596131a5868351e1ca460fd18f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-cbe5458c4bfd60f9e3c2d96a3c4922e2471d1284fc38c703cf87d2544ffdf8ed.xcframework.zip",
            checksum: "cbe5458c4bfd60f9e3c2d96a3c4922e2471d1284fc38c703cf87d2544ffdf8ed"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                "SwiftCompilerPluginMessageHandling",
                "_SwiftSyntaxCShims_Aggregation",
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-749f6b30faad25de371c615f0c54e7fa6a3c6c877e823e4d7a65cb1eddebe8f2.xcframework.zip",
            checksum: "749f6b30faad25de371c615f0c54e7fa6a3c6c877e823e4d7a65cb1eddebe8f2"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-006e444b7ad3cc256a02f62d18eb6f3fafa2638d1dd156f33c2fbd6cc62df2ff.xcframework.zip",
            checksum: "006e444b7ad3cc256a02f62d18eb6f3fafa2638d1dd156f33c2fbd6cc62df2ff"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-25b68a5b3a0fa1b3b55b49cac36dabcedc1bc31342965e9b4d80d5d9fb56f783.xcframework.zip",
            checksum: "25b68a5b3a0fa1b3b55b49cac36dabcedc1bc31342965e9b4d80d5d9fb56f783"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-9a3ce4aad9a3783bb69bc19ed45b71873d1bd54c869274a43c443dfd3f6b8ab9.xcframework.zip",
            checksum: "9a3ce4aad9a3783bb69bc19ed45b71873d1bd54c869274a43c443dfd3f6b8ab9"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-6dceb5013d6b33b6277a5ba7994b4df04ccb514682387fe4d942703e16787d51.xcframework.zip",
            checksum: "6dceb5013d6b33b6277a5ba7994b4df04ccb514682387fe4d942703e16787d51"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-03f1fbf32f5b255afb67343ce3841b5807803c9b4e69d3e212d8e150956c1376.xcframework.zip",
            checksum: "03f1fbf32f5b255afb67343ce3841b5807803c9b4e69d3e212d8e150956c1376"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: [
                "SwiftLibraryPluginProvider",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftLibraryPluginProviderCShims_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-099fe0f7dbe9b110d8dd30c25c296f08b0b2808380bc2bf50d5d8b8ef0339280.xcframework.zip",
            checksum: "099fe0f7dbe9b110d8dd30c25c296f08b0b2808380bc2bf50d5d8b8ef0339280"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: ["_SwiftLibraryPluginProviderCShims"]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftLibraryPluginProviderCShims-894ce257d15b66d34d960fb0b33f48d85c6bcc14eef3ecb21706b98099367e18.xcframework.zip",
            checksum: "894ce257d15b66d34d960fb0b33f48d85c6bcc14eef3ecb21706b98099367e18"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                "SwiftSyntax",
                "_SwiftSyntaxCShims_Aggregation",
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-fb15240c03828160e6f65bc1420f4bd1460d04abdff19d0296435c964f9a40e9.xcframework.zip",
            checksum: "fb15240c03828160e6f65bc1420f4bd1460d04abdff19d0296435c964f9a40e9"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-7ab12606a13c250730430127511a77711a93cd430bb8b8c8512e01a81a7e133a.xcframework.zip",
            checksum: "7ab12606a13c250730430127511a77711a93cd430bb8b8c8512e01a81a7e133a"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-d638c6a0651ac92c0e4a216e46f0c91ee7db98b413a75d9bee9b2c2e2d69d365.xcframework.zip",
            checksum: "d638c6a0651ac92c0e4a216e46f0c91ee7db98b413a75d9bee9b2c2e2d69d365"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-1342e3b9ee913ce6af245b7bf9752af153d4c72888ff3cafd9dfbfcf3d87a8c3.xcframework.zip",
            checksum: "1342e3b9ee913ce6af245b7bf9752af153d4c72888ff3cafd9dfbfcf3d87a8c3"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-001ceec41d906e74bf8cc220a083dd27ab465666667af206a2e9af3742036cbd.xcframework.zip",
            checksum: "001ceec41d906e74bf8cc220a083dd27ab465666667af206a2e9af3742036cbd"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-e062de312be910ce6e92fa14ac31021dee1fa1b58ce75f23f23bc3188c7c3a05.xcframework.zip",
            checksum: "e062de312be910ce6e92fa14ac31021dee1fa1b58ce75f23f23bc3188c7c3a05"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-e704af7d9ed090d3b0a835209edce2333c09b8de3ac8e2e859c2bdeeb598bb5a.xcframework.zip",
            checksum: "e704af7d9ed090d3b0a835209edce2333c09b8de3ac8e2e859c2bdeeb598bb5a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-3226694c728a65aceaaec2ac4f2017550cafdee5c0e7e3d0c7f3e9d01e62b31b.xcframework.zip",
            checksum: "3226694c728a65aceaaec2ac4f2017550cafdee5c0e7e3d0c7f3e9d01e62b31b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-7b8d97a22053113043b4c3a1fabf7e1fabfb60ebc124df34365e5d83bf57b81c.xcframework.zip",
            checksum: "7b8d97a22053113043b4c3a1fabf7e1fabfb60ebc124df34365e5d83bf57b81c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-c5bb9eda167bfe4389f27c9744df745a9e00e0234d00aefcf15ef8b177655ec4.xcframework.zip",
            checksum: "c5bb9eda167bfe4389f27c9744df745a9e00e0234d00aefcf15ef8b177655ec4"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-b5c8316c8862d04784564e0bf4e5ecb99964d9c6f3c5dcc99b2ee8e9f46c7bbf.xcframework.zip",
            checksum: "b5c8316c8862d04784564e0bf4e5ecb99964d9c6f3c5dcc99b2ee8e9f46c7bbf"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-33669a14ca2fb38c968caec64e341d9b897a108c9a2ad93ab572e3a07cf2e8e0.xcframework.zip",
            checksum: "33669a14ca2fb38c968caec64e341d9b897a108c9a2ad93ab572e3a07cf2e8e0"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-444fccbd469ca6891c5ca6a851ac77d1a5cd20c3919a1b67ad73dc27a288b746.xcframework.zip",
            checksum: "444fccbd469ca6891c5ca6a851ac77d1a5cd20c3919a1b67ad73dc27a288b746"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-39a828d45e8f1996de9f7f64cbffe7ee3570a7650ef0ab2329d944b29bfc3fcb.xcframework.zip",
            checksum: "39a828d45e8f1996de9f7f64cbffe7ee3570a7650ef0ab2329d944b29bfc3fcb"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-2bbbae412fad5bba5f01bb7044dc9ceeaca466827a43074460ec3d0975618f0a.xcframework.zip",
            checksum: "2bbbae412fad5bba5f01bb7044dc9ceeaca466827a43074460ec3d0975618f0a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-dd2e804adfcd57bf0c3102a4cc9ce8d25201ff388400af111efd084d5b2339cf.xcframework.zip",
            checksum: "dd2e804adfcd57bf0c3102a4cc9ce8d25201ff388400af111efd084d5b2339cf"
        )
    ]
)