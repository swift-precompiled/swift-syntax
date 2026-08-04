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
            targets: ["SwiftBasicFormat_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftCompilerPlugin",
            targets: ["SwiftCompilerPlugin_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftDiagnostics",
            targets: ["SwiftDiagnostics_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftIDEUtils",
            targets: ["SwiftIDEUtils_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftIfConfig",
            targets: ["SwiftIfConfig_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftWarningControl",
            targets: ["SwiftWarningControl_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftLexicalLookup",
            targets: ["SwiftLexicalLookup_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftOperators",
            targets: ["SwiftOperators_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftParser",
            targets: ["SwiftParser_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftParserDiagnostics",
            targets: ["SwiftParserDiagnostics_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftRefactor",
            targets: ["SwiftRefactor_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntax",
            targets: ["SwiftSyntax_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxBuilder",
            targets: ["SwiftSyntaxBuilder_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxMacros",
            targets: ["SwiftSyntaxMacros_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxMacroExpansion",
            targets: ["SwiftSyntaxMacroExpansion_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxMacrosTestSupport",
            targets: ["SwiftSyntaxMacrosTestSupport_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            targets: ["SwiftSyntaxMacrosGenericTestSupport_PrecompiledProduct"]
        ),
        .library(
            name: "_SwiftCompilerPluginMessageHandling",
            targets: ["_SwiftCompilerPluginMessageHandling"]
        ),
        .library(
            name: "_SwiftLibraryPluginProvider",
            targets: ["_SwiftLibraryPluginProvider"]
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-76d5d38398ba1b440e28f3b57c3e65f0cc2a1235bb3e1c879702d4a93eab7b7e.xcframework.zip",
            checksum: "76d5d38398ba1b440e28f3b57c3e65f0cc2a1235bb3e1c879702d4a93eab7b7e"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-d0a64cd667f5cd60d80211bdee0801d2a1527795525f500ea981bb5b634338ff.xcframework.zip",
            checksum: "d0a64cd667f5cd60d80211bdee0801d2a1527795525f500ea981bb5b634338ff"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-213f528f31899ce2d424f46e2beb19aeea63cb5284d027ca22d29bc1ba226d66.xcframework.zip",
            checksum: "213f528f31899ce2d424f46e2beb19aeea63cb5284d027ca22d29bc1ba226d66"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: ["SwiftCompilerPlugin"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-ebeb04267980e4e01d9ed85fb0921e9fe67a4a4fccb15ad27ead5c683ae51b83.xcframework.zip",
            checksum: "ebeb04267980e4e01d9ed85fb0921e9fe67a4a4fccb15ad27ead5c683ae51b83"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: ["SwiftCompilerPluginMessageHandling"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPluginMessageHandling",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-bf73b2d470e2bb7d5984c6f31a2e6b10f1ad74a23db7bd869f47effc4b507a86.xcframework.zip",
            checksum: "bf73b2d470e2bb7d5984c6f31a2e6b10f1ad74a23db7bd869f47effc4b507a86"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-87e8290ba99d7778c22b60e098a2a8f2c53f85ca4063ce69eee1b5b30ec89d93.xcframework.zip",
            checksum: "87e8290ba99d7778c22b60e098a2a8f2c53f85ca4063ce69eee1b5b30ec89d93"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: ["SwiftIDEUtils"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-d5e18ae2fa19b414c6c0bbef374efbc61bbf25f2c5d319354f7bad00fa4b792c.xcframework.zip",
            checksum: "d5e18ae2fa19b414c6c0bbef374efbc61bbf25f2c5d319354f7bad00fa4b792c"
        ),
        .target(
            name: "SwiftIfConfig_Aggregation",
            dependencies: ["SwiftIfConfig"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-71f2b8e96752e5780aec373b1fc300f3a71bc2cec8a7b8ada9247880935f3b8b.xcframework.zip",
            checksum: "71f2b8e96752e5780aec373b1fc300f3a71bc2cec8a7b8ada9247880935f3b8b"
        ),
        .target(
            name: "SwiftWarningControl_Aggregation",
            dependencies: ["SwiftWarningControl"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftWarningControl",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-eec448a5ab8ad1a81a9a10b8c2529d77f3c368827b38181953439677aa0a0429.xcframework.zip",
            checksum: "eec448a5ab8ad1a81a9a10b8c2529d77f3c368827b38181953439677aa0a0429"
        ),
        .target(
            name: "SwiftLexicalLookup_Aggregation",
            dependencies: ["SwiftLexicalLookup"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLexicalLookup",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-220f21af39ba72b71d950c42b0dda294672839767fe53740de5f652d6a48b957.xcframework.zip",
            checksum: "220f21af39ba72b71d950c42b0dda294672839767fe53740de5f652d6a48b957"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: ["SwiftLibraryPluginProvider"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-69546a0379aec914b606b2b1830596d8a56122e0802eed920090849247813ca9.xcframework.zip",
            checksum: "69546a0379aec914b606b2b1830596d8a56122e0802eed920090849247813ca9"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftLibraryPluginProviderCShims-4ba20f88f3dd3c326149b6bdd89c0077b05082c55f54db7ca82a9f026ca24789.xcframework.zip",
            checksum: "4ba20f88f3dd3c326149b6bdd89c0077b05082c55f54db7ca82a9f026ca24789"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: ["SwiftSyntax"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-9a6c31b8a51137138f43f217ed5cf10fcdf080269794425cc7a19bc750f1b92c.xcframework.zip",
            checksum: "9a6c31b8a51137138f43f217ed5cf10fcdf080269794425cc7a19bc750f1b92c"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-825f2a22145953c11b3de5d78cd1451e056f460459bc176c5950e043ce5db14b.xcframework.zip",
            checksum: "825f2a22145953c11b3de5d78cd1451e056f460459bc176c5950e043ce5db14b"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-1e0cc9203141c44ff6d1549d4ba36130c5aa274cf84269c68c8f78b95655a595.xcframework.zip",
            checksum: "1e0cc9203141c44ff6d1549d4ba36130c5aa274cf84269c68c8f78b95655a595"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-86f004d73afd15f4946bc1e5bc005af8deb4240859a2ae5718841bb903d1d790.xcframework.zip",
            checksum: "86f004d73afd15f4946bc1e5bc005af8deb4240859a2ae5718841bb903d1d790"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-3d8c96eceffb2d394753b8ea96d748314a69be8e46f9fbec505d4e6d74132d1a.xcframework.zip",
            checksum: "3d8c96eceffb2d394753b8ea96d748314a69be8e46f9fbec505d4e6d74132d1a"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-f531ec366133f14410bf5280fabc7429cc395977671afd1d43bc576e9f330761.xcframework.zip",
            checksum: "f531ec366133f14410bf5280fabc7429cc395977671afd1d43bc576e9f330761"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-70408845fdb10b58f7807e3be8bd3cb26f4d47dd64b39a356b8239bc9e75323e.xcframework.zip",
            checksum: "70408845fdb10b58f7807e3be8bd3cb26f4d47dd64b39a356b8239bc9e75323e"
        ),
        .target(
            name: "SwiftSyntaxBuilder_Aggregation",
            dependencies: ["SwiftSyntaxBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-4935f7245d1cfbd9e3db71dadb5e7af44dceb595e8783f412a7eca7da1257fc4.xcframework.zip",
            checksum: "4935f7245d1cfbd9e3db71dadb5e7af44dceb595e8783f412a7eca7da1257fc4"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: ["SwiftSyntaxMacros"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-e253f8dd4b8652521e58f16481e0ee68e5a503a6d71084783ad80bd5465a9316.xcframework.zip",
            checksum: "e253f8dd4b8652521e58f16481e0ee68e5a503a6d71084783ad80bd5465a9316"
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_Aggregation",
            dependencies: ["SwiftSyntaxMacroExpansion"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-3ffe475ee91e9364c37efbc269177989e41c1e9825cbaf1fc0bcf22fe863b588.xcframework.zip",
            checksum: "3ffe475ee91e9364c37efbc269177989e41c1e9825cbaf1fc0bcf22fe863b588"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: ["SwiftSyntaxMacrosTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-d1d2cb6a38920e87f56f7c18cb353a525a713e0c6980b984d880ee715d0661be.xcframework.zip",
            checksum: "d1d2cb6a38920e87f56f7c18cb353a525a713e0c6980b984d880ee715d0661be"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: ["SwiftSyntaxMacrosGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-2e2ec42be3c4b2bdce9fc58282a0a23f385fc651ed87933b38dc874c58cfca65.xcframework.zip",
            checksum: "2e2ec42be3c4b2bdce9fc58282a0a23f385fc651ed87933b38dc874c58cfca65"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-676486d2d0cd976a9d39efd897491f217d605a6355c540af9b1625b3fd9f2133.xcframework.zip",
            checksum: "676486d2d0cd976a9d39efd897491f217d605a6355c540af9b1625b3fd9f2133"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: ["SwiftParserDiagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-ae7b3c77ae665ad0d36737d71c9de9a0b7135d12326b357d3290c106c6e380b6.xcframework.zip",
            checksum: "ae7b3c77ae665ad0d36737d71c9de9a0b7135d12326b357d3290c106c6e380b6"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: ["SwiftOperators"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-8ce53ff293276490d694f05f865d48fd918997689581f3ba8b2a354e68b2de16.xcframework.zip",
            checksum: "8ce53ff293276490d694f05f865d48fd918997689581f3ba8b2a354e68b2de16"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: ["SwiftRefactor"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-cd2b1f3757a27628657ea7a5eaeee06cb1d97e92bb8e9ba667e211e90ea39127.xcframework.zip",
            checksum: "cd2b1f3757a27628657ea7a5eaeee06cb1d97e92bb8e9ba667e211e90ea39127"
        ),
        .target(
            name: "SwiftBasicFormat_PrecompiledProduct",
            dependencies: [
                "SwiftBasicFormat_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation"
            ]
        ),
        .target(
            name: "SwiftCompilerPlugin_PrecompiledProduct",
            dependencies: [
                "SwiftCompilerPlugin_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .target(
            name: "SwiftDiagnostics_PrecompiledProduct",
            dependencies: [
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation"
            ]
        ),
        .target(
            name: "SwiftIDEUtils_PrecompiledProduct",
            dependencies: [
                "SwiftIDEUtils_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .target(
            name: "SwiftIfConfig_PrecompiledProduct",
            dependencies: [
                "SwiftIfConfig_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .target(
            name: "SwiftWarningControl_PrecompiledProduct",
            dependencies: [
                "SwiftWarningControl_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation"
            ]
        ),
        .target(
            name: "SwiftLexicalLookup_PrecompiledProduct",
            dependencies: [
                "SwiftLexicalLookup_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .target(
            name: "SwiftOperators_PrecompiledProduct",
            dependencies: [
                "SwiftOperators_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .target(
            name: "SwiftParser_PrecompiledProduct",
            dependencies: [
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation"
            ]
        ),
        .target(
            name: "SwiftParserDiagnostics_PrecompiledProduct",
            dependencies: [
                "SwiftParserDiagnostics_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .target(
            name: "SwiftRefactor_PrecompiledProduct",
            dependencies: [
                "SwiftRefactor_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation"
            ]
        ),
        .target(
            name: "SwiftSyntax_PrecompiledProduct",
            dependencies: [
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation"
            ]
        ),
        .target(
            name: "SwiftSyntaxBuilder_PrecompiledProduct",
            dependencies: [
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation"
            ]
        ),
        .target(
            name: "SwiftSyntaxMacros_PrecompiledProduct",
            dependencies: [
                "SwiftSyntaxMacros_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_PrecompiledProduct",
            dependencies: [
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_PrecompiledProduct",
            dependencies: [
                "SwiftSyntaxMacrosTestSupport_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
                "_SwiftSyntaxGenericTestSupport_Aggregation",
                "SwiftIDEUtils_Aggregation"
            ]
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_PrecompiledProduct",
            dependencies: [
                "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
                "_SwiftSyntaxGenericTestSupport_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftIDEUtils_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .target(
            name: "_SwiftCompilerPluginMessageHandling",
            dependencies: [
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .target(
            name: "_SwiftLibraryPluginProvider",
            dependencies: [
                "SwiftLibraryPluginProvider_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation",
                "SwiftSyntax603_Aggregation",
                "SwiftIfConfig_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "_SwiftLibraryPluginProviderCShims"
            ]
        )
    ]
)