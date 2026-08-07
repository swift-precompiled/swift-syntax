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
            sources: ["Empty.c"],
            publicHeadersPath: "include",
            packageAccess: false
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/_SwiftSyntaxCShims.xcframework.zip",
            checksum: "12e6db5477615b4654f2b9b200e0b874b2e9564691cf5ac62251b44e02b78325"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/_SwiftSyntaxGenericTestSupport.xcframework.zip",
            checksum: "2021346af9d58895d040d7946b19826bd43d5700a20b6f0a927024cf4bbcd9f9"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftBasicFormat.xcframework.zip",
            checksum: "7fa6b7dcf87f5ec794fb99826e3956d5a01e94bfbf61890b1eafa6bcb99c6bd2"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: ["SwiftCompilerPlugin"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftCompilerPlugin.xcframework.zip",
            checksum: "38fc517fd3c414b634af3382194712920db13f7580d72716ea366419e5ef4687"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: ["SwiftCompilerPluginMessageHandling"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPluginMessageHandling",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftCompilerPluginMessageHandling.xcframework.zip",
            checksum: "d316580b987780f0325a17b90639e6d8a531e21a5201b1787c08ee00a69a52bb"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftDiagnostics.xcframework.zip",
            checksum: "4f2c0a5ac032320ee2994cdd323efbee3a2dc1afee7a5a280a89f375c2c9a1fd"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: ["SwiftIDEUtils"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftIDEUtils.xcframework.zip",
            checksum: "58c0eb93d9b7614a87be8735ad203a8f568fd1437630a1d16a923e722b47ddc8"
        ),
        .target(
            name: "SwiftIfConfig_Aggregation",
            dependencies: ["SwiftIfConfig"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftIfConfig.xcframework.zip",
            checksum: "e21f771c4c00c967797a6af4cb6cf9639037c2e066d7bd2195fd8172d3c27c68"
        ),
        .target(
            name: "SwiftLexicalLookup_Aggregation",
            dependencies: ["SwiftLexicalLookup"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLexicalLookup",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftLexicalLookup.xcframework.zip",
            checksum: "d2244b8d4c8e11c2648377e23f435d54e83a854807fdfa3592b3ee257f6164d5"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: ["SwiftLibraryPluginProvider"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftLibraryPluginProvider.xcframework.zip",
            checksum: "375e93f7eeeb6c179380e40c9299e1b1cde619dc22ba04c47073637045250ddd"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            sources: ["Empty.c"],
            publicHeadersPath: "include",
            packageAccess: false
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/_SwiftLibraryPluginProviderCShims.xcframework.zip",
            checksum: "f53657d44475c4ed37126e0e33124c315a0fee38ffd2b29c1b7c846b67bbb11d"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: ["SwiftSyntax"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntax.xcframework.zip",
            checksum: "a4a68dfe2fe03bb04b14f5f8a86b3385f943089069d6195792c0c24aefcb9f1d"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntax509.xcframework.zip",
            checksum: "6dc37dcdbf4dad9a9e75c19b3ee8e5d0b7c4bf9037457dfe7b53fa693f620bd1"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntax510.xcframework.zip",
            checksum: "5b452a83ba0ed21d1fd0ebd7cee930c6ac8daf1a0ee40ae1c847bbd2ef4b9772"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntax600.xcframework.zip",
            checksum: "9457d5f930b0de110012b294250177c6bbad4214389e038316a03edc38a0432a"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntax601.xcframework.zip",
            checksum: "9330cbf0c4c76d004bd79ec991b14c48dbe53cf4e2bf7597ec6ba9816574c588"
        ),
        .target(
            name: "SwiftSyntaxBuilder_Aggregation",
            dependencies: ["SwiftSyntaxBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntaxBuilder.xcframework.zip",
            checksum: "2c9a584b2a745b530a7c8da82a585248a341226beeb94d5b0bd4807a956421ad"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: ["SwiftSyntaxMacros"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntaxMacros.xcframework.zip",
            checksum: "564913ab86d39ab7708463c4b9fc037be55f4ba7326aac1e5fb7c55a36d3c6ad"
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_Aggregation",
            dependencies: ["SwiftSyntaxMacroExpansion"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntaxMacroExpansion.xcframework.zip",
            checksum: "c0a351079e51d66c62ed524f17b9c7c1790b23dbba793a376f4943de117a506d"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: ["SwiftSyntaxMacrosTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntaxMacrosTestSupport.xcframework.zip",
            checksum: "643ab5918fa9f04cd7f6d7b6604c9c1b1c70457ee25578c4765a2fadbc2f8559"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: ["SwiftSyntaxMacrosGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftSyntaxMacrosGenericTestSupport.xcframework.zip",
            checksum: "6f0a5a358c0e90baf1b2f8351a3936b67b8bb5462e3638cadc472de8a58ff623"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftParser.xcframework.zip",
            checksum: "ec0aed2cba537e600306aa58044daf28e6de85bdd24aae891ed149bfb33b3671"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: ["SwiftParserDiagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftParserDiagnostics.xcframework.zip",
            checksum: "dd51fcb8a4e219512884b5db40c965e5ffc1886305be9b0a04cdbbc905a60087"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: ["SwiftOperators"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftOperators.xcframework.zip",
            checksum: "81221790606efe6658bcedadcbd66e2db31dd735e9d5a65d078daccd7b6d40b2"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: ["SwiftRefactor"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-release.6.1/SwiftRefactor.xcframework.zip",
            checksum: "48b302d1d6c3192f04a4a8c089bbdcbe3e1778185dc40f76cfedfea0b0898d57"
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
                "SwiftSyntax601_Aggregation"
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
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
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
                "SwiftSyntax601_Aggregation"
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
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
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
                "SwiftSyntax601_Aggregation"
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
                "SwiftSyntax601_Aggregation"
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
                "SwiftParser_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParserDiagnostics_Aggregation"
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
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
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
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
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
                "SwiftIDEUtils_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftOperators_Aggregation"
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
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
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
                "SwiftParser_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftBasicFormat_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "_SwiftLibraryPluginProviderCShims"
            ]
        )
    ]
)