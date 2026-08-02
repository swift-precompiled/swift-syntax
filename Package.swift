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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-0921f4ae7bf63c2ed8e9799297e47bdecce584b2005fbc33213e0b96066b8371.xcframework.zip",
            checksum: "0921f4ae7bf63c2ed8e9799297e47bdecce584b2005fbc33213e0b96066b8371"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-3db2f7e9a25bb3f20997fbed6fc0f3cce68ccae194e2cce6157fdf82380c4b9a.xcframework.zip",
            checksum: "3db2f7e9a25bb3f20997fbed6fc0f3cce68ccae194e2cce6157fdf82380c4b9a"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-6177aff0359921f23a94ee49ebbdbdbb517f33b8aedfcc0f7f0737fc67eadef0.xcframework.zip",
            checksum: "6177aff0359921f23a94ee49ebbdbdbb517f33b8aedfcc0f7f0737fc67eadef0"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-3d819917724cee943525837d1ca2d93d9dbd2d9defba676addee5a09400d0a84.xcframework.zip",
            checksum: "3d819917724cee943525837d1ca2d93d9dbd2d9defba676addee5a09400d0a84"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-c3296b8db553a49631c84d82d61369686f5fc721ad51e866fc77d84207897303.xcframework.zip",
            checksum: "c3296b8db553a49631c84d82d61369686f5fc721ad51e866fc77d84207897303"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-c27ae98ef173bff850ce95b199abb8411e9dd508181d86c9aee9c6e0d5e77ca9.xcframework.zip",
            checksum: "c27ae98ef173bff850ce95b199abb8411e9dd508181d86c9aee9c6e0d5e77ca9"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-ff2709cb3c5cb1a6296feaecc86d0fe096524da7e3061b9b9202309c7155a60a.xcframework.zip",
            checksum: "ff2709cb3c5cb1a6296feaecc86d0fe096524da7e3061b9b9202309c7155a60a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-3e6fa9c990d7d58c25accdbbbe64c94a3ffd39a67d0eec9682343ed874ff7601.xcframework.zip",
            checksum: "3e6fa9c990d7d58c25accdbbbe64c94a3ffd39a67d0eec9682343ed874ff7601"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-5f769d305095c46a5f489cada4301550e5f74c23987ee1ed8369d09eedd48347.xcframework.zip",
            checksum: "5f769d305095c46a5f489cada4301550e5f74c23987ee1ed8369d09eedd48347"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-80d197c900e7e4c080305f7b7e1ce2dd60bee0d6d3e37d1463fbe4cd4c95159c.xcframework.zip",
            checksum: "80d197c900e7e4c080305f7b7e1ce2dd60bee0d6d3e37d1463fbe4cd4c95159c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-3a22a8189569b91a500b009add111c343856002e41ff0b2fecbe781806df690c.xcframework.zip",
            checksum: "3a22a8189569b91a500b009add111c343856002e41ff0b2fecbe781806df690c"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: ["_SwiftLibraryPluginProviderCShims"]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftLibraryPluginProviderCShims-e5094d25ff024440c42af76d26923c571530a5db8e784cc973c30cf606b9151d.xcframework.zip",
            checksum: "e5094d25ff024440c42af76d26923c571530a5db8e784cc973c30cf606b9151d"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-1b7e2749c8b0e7cec72fb0732216bef49564b825ea9d598c118a63b4cc31b2f6.xcframework.zip",
            checksum: "1b7e2749c8b0e7cec72fb0732216bef49564b825ea9d598c118a63b4cc31b2f6"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-71cbae6694ba7a1224821c9a2863376b2f31141a8282f069c8bc4c82381de98a.xcframework.zip",
            checksum: "71cbae6694ba7a1224821c9a2863376b2f31141a8282f069c8bc4c82381de98a"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-236e50850e87617788c9a8a99a5f108d278c62b07bcf47fc285dfff89faacde5.xcframework.zip",
            checksum: "236e50850e87617788c9a8a99a5f108d278c62b07bcf47fc285dfff89faacde5"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-fbb1e3743cc96b022e9ddc469e54e6b65121e851f055ee9f289849a348490264.xcframework.zip",
            checksum: "fbb1e3743cc96b022e9ddc469e54e6b65121e851f055ee9f289849a348490264"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-326a095b0af2ba9723e058009490d79521d879836ae55ef5e9eb010fff74d0b1.xcframework.zip",
            checksum: "326a095b0af2ba9723e058009490d79521d879836ae55ef5e9eb010fff74d0b1"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-ec208bbeb5cadab458bd31b8573ed5c1414494bde561d7603c2d93e861dc5fb4.xcframework.zip",
            checksum: "ec208bbeb5cadab458bd31b8573ed5c1414494bde561d7603c2d93e861dc5fb4"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-661ee6a6b983fb4baab8aad4d94730ddaec09167df6d55c1226d77e93ceb4060.xcframework.zip",
            checksum: "661ee6a6b983fb4baab8aad4d94730ddaec09167df6d55c1226d77e93ceb4060"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-203967534efd51861f387f463a91186eb91ae9857d0422a3333199842856f785.xcframework.zip",
            checksum: "203967534efd51861f387f463a91186eb91ae9857d0422a3333199842856f785"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-fea87ceda1348360c77fa934db66ee98e8b562bd1c35e79a8feb5ba1058e609f.xcframework.zip",
            checksum: "fea87ceda1348360c77fa934db66ee98e8b562bd1c35e79a8feb5ba1058e609f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-28eb07df315b58d6ec2968816e82adb6daac5f08da0302a118f7ca5c4ad82e28.xcframework.zip",
            checksum: "28eb07df315b58d6ec2968816e82adb6daac5f08da0302a118f7ca5c4ad82e28"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-cd365a223f51ec6fc431b0cb6a3af5562ed3706c89204d981b1086baf924872b.xcframework.zip",
            checksum: "cd365a223f51ec6fc431b0cb6a3af5562ed3706c89204d981b1086baf924872b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-24bbbf1f3e03377827be7b792dc2ef1ff252ef3fc404d2d032f0e3fe86f9209d.xcframework.zip",
            checksum: "24bbbf1f3e03377827be7b792dc2ef1ff252ef3fc404d2d032f0e3fe86f9209d"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-4289a057c66602c6af317cfb9765dce45573dd59818c5e54ccdeb988fa475508.xcframework.zip",
            checksum: "4289a057c66602c6af317cfb9765dce45573dd59818c5e54ccdeb988fa475508"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-6f98f5b480194482d8bf23d30f6402a1b1267f01bc4982e76b261f0dd3021c8a.xcframework.zip",
            checksum: "6f98f5b480194482d8bf23d30f6402a1b1267f01bc4982e76b261f0dd3021c8a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-337dcc9600a1391859fb675d97a37c85b023a0b363079335dc2a8d36df4e44e3.xcframework.zip",
            checksum: "337dcc9600a1391859fb675d97a37c85b023a0b363079335dc2a8d36df4e44e3"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-57cfaabf3376e6d8dcbdd0645a700a7736e2e264f3f05d88527f8921a8e44516.xcframework.zip",
            checksum: "57cfaabf3376e6d8dcbdd0645a700a7736e2e264f3f05d88527f8921a8e44516"
        )
    ]
)