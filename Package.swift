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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-79f121f51abcabcebfd828d89075c7b2cb7949474cb15c665f96144f3b72af6f.xcframework.zip",
            checksum: "79f121f51abcabcebfd828d89075c7b2cb7949474cb15c665f96144f3b72af6f"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-d4c65e72df5b7771a15f09cf421a3c106a75fda5258931acc35e43d4c8492d33.xcframework.zip",
            checksum: "d4c65e72df5b7771a15f09cf421a3c106a75fda5258931acc35e43d4c8492d33"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-20077e0f3fc1eba506dece06b6847e51371cf7e520c830f3683c0afad5f76660.xcframework.zip",
            checksum: "20077e0f3fc1eba506dece06b6847e51371cf7e520c830f3683c0afad5f76660"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-910c8847a4588d1536597f1fc264f0f0d1820a39aa0d3d6c00e46aee3c8e5abc.xcframework.zip",
            checksum: "910c8847a4588d1536597f1fc264f0f0d1820a39aa0d3d6c00e46aee3c8e5abc"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-3591cada6eb057595e8a8c5a51eb67aeb903eae9c983545976c0567d05086f7c.xcframework.zip",
            checksum: "3591cada6eb057595e8a8c5a51eb67aeb903eae9c983545976c0567d05086f7c"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-b4690f9ec9787a95a9b6ce50705271f79c7203a8fe70a416d05c9e9e70d26d8a.xcframework.zip",
            checksum: "b4690f9ec9787a95a9b6ce50705271f79c7203a8fe70a416d05c9e9e70d26d8a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-ba8fd2791a7fff0b2ba4a6663f8c4e5fa363681c1f49aef40fece8669ca89273.xcframework.zip",
            checksum: "ba8fd2791a7fff0b2ba4a6663f8c4e5fa363681c1f49aef40fece8669ca89273"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-e55cfcda6e2ad53ad849483a8c2643f9ea5a43427ee4d0c5bd07cb75049c285b.xcframework.zip",
            checksum: "e55cfcda6e2ad53ad849483a8c2643f9ea5a43427ee4d0c5bd07cb75049c285b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-161338bc34778aa63d1c9483fe33aea045853e23e9b95ee826cfd0ade45a903f.xcframework.zip",
            checksum: "161338bc34778aa63d1c9483fe33aea045853e23e9b95ee826cfd0ade45a903f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-d2538072940f37ca824c0451cba921fa31364dd607caf4b92d9eb2622f3764f2.xcframework.zip",
            checksum: "d2538072940f37ca824c0451cba921fa31364dd607caf4b92d9eb2622f3764f2"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-ae2c6434fe2865cdd437999fed631dd6134cc4ea773928e18553ac054156d213.xcframework.zip",
            checksum: "ae2c6434fe2865cdd437999fed631dd6134cc4ea773928e18553ac054156d213"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-ac39c7e1c4c95d9d2b661ca22e92932c1bb0d7c099162d20f371d0ced78d7854.xcframework.zip",
            checksum: "ac39c7e1c4c95d9d2b661ca22e92932c1bb0d7c099162d20f371d0ced78d7854"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-a96fa2e4da77733115be54ea4b42e5d7515ab11fcfab971b0e09820d0a2ebb5e.xcframework.zip",
            checksum: "a96fa2e4da77733115be54ea4b42e5d7515ab11fcfab971b0e09820d0a2ebb5e"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-a3d5a86b673a87b063c9b6a0bd80478102968ab68fb31500b409c93f1ca15de3.xcframework.zip",
            checksum: "a3d5a86b673a87b063c9b6a0bd80478102968ab68fb31500b409c93f1ca15de3"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-03a2319a0020e2900b66dc0c53cd2e5e1927e653a6a9fe90a8ef14bc71f9eb71.xcframework.zip",
            checksum: "03a2319a0020e2900b66dc0c53cd2e5e1927e653a6a9fe90a8ef14bc71f9eb71"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-d0794bbcd0d67d9aa2161dd42a6c1367b3fca525fab820b0d4fe245a1554281c.xcframework.zip",
            checksum: "d0794bbcd0d67d9aa2161dd42a6c1367b3fca525fab820b0d4fe245a1554281c"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-e4a174c0618d2b993abdc479d308c0b195a7c8f95929372fd67ad9186f7fab69.xcframework.zip",
            checksum: "e4a174c0618d2b993abdc479d308c0b195a7c8f95929372fd67ad9186f7fab69"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-da79852b6174c911e7fdcbdc77eaf82fd7327556d245e36234a523855bcf8384.xcframework.zip",
            checksum: "da79852b6174c911e7fdcbdc77eaf82fd7327556d245e36234a523855bcf8384"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-a80848585b14ae5013f1ef5f838d09cbb121b3084719019ae1d364c2f1d43307.xcframework.zip",
            checksum: "a80848585b14ae5013f1ef5f838d09cbb121b3084719019ae1d364c2f1d43307"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-a4ea495eb2b3ae7773044970c28cbe1794b492a603a91ba1f788ed596dd3b78a.xcframework.zip",
            checksum: "a4ea495eb2b3ae7773044970c28cbe1794b492a603a91ba1f788ed596dd3b78a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-37500d43924471a7549108b3ab740a338eae11264c37c0f26f9a547287094797.xcframework.zip",
            checksum: "37500d43924471a7549108b3ab740a338eae11264c37c0f26f9a547287094797"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-17f42a9663b85206b8a2a76d9257a0456513c3c80b8eb71bbfd779e1d201c13b.xcframework.zip",
            checksum: "17f42a9663b85206b8a2a76d9257a0456513c3c80b8eb71bbfd779e1d201c13b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-11545464287fe54a748e2db5800504cbf01608ba7b735bc0dbfac9a482c1f26e.xcframework.zip",
            checksum: "11545464287fe54a748e2db5800504cbf01608ba7b735bc0dbfac9a482c1f26e"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-b5593acf8d267d4b445d84a3f385ff75a951be6df7ed370475fe8946d6b01e02.xcframework.zip",
            checksum: "b5593acf8d267d4b445d84a3f385ff75a951be6df7ed370475fe8946d6b01e02"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-201a61356ca38c808077fc630ce6d2d562e0d51647a47ef2e5529eac3a922120.xcframework.zip",
            checksum: "201a61356ca38c808077fc630ce6d2d562e0d51647a47ef2e5529eac3a922120"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-2cce14290d641828b76172d6dea5635610ff60a1a748f590e620c7b7f7aede0c.xcframework.zip",
            checksum: "2cce14290d641828b76172d6dea5635610ff60a1a748f590e620c7b7f7aede0c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-27ca4dcfbffac8b1e12068a613c31e2c4fcb0732cf4050e54b9a9c5db51004f5.xcframework.zip",
            checksum: "27ca4dcfbffac8b1e12068a613c31e2c4fcb0732cf4050e54b9a9c5db51004f5"
        )
    ]
)