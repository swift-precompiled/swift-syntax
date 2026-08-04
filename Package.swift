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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-dadbbc18264e4bf6001465688b4f820b142392f44e1d857a0447f696ca3352e6.xcframework.zip",
            checksum: "dadbbc18264e4bf6001465688b4f820b142392f44e1d857a0447f696ca3352e6"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-1579dcf21bb48840cb39bc2c29f2946e929b8610dc0da256716cfcf71471640f.xcframework.zip",
            checksum: "1579dcf21bb48840cb39bc2c29f2946e929b8610dc0da256716cfcf71471640f"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-c542024a2ac170f2dd2e4d26d08637db422f83007722d4ce3ab571be6ea7cd9c.xcframework.zip",
            checksum: "c542024a2ac170f2dd2e4d26d08637db422f83007722d4ce3ab571be6ea7cd9c"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: ["SwiftCompilerPlugin"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-9a2b126bf3324afcee6cafe6e0d3346573c91a1d5524300f652462c7dcad13d5.xcframework.zip",
            checksum: "9a2b126bf3324afcee6cafe6e0d3346573c91a1d5524300f652462c7dcad13d5"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: ["SwiftCompilerPluginMessageHandling"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPluginMessageHandling",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-fd62a4742c2ca17571dcdbc7400e008c8dcd85c6961e4b492dca51804909c44a.xcframework.zip",
            checksum: "fd62a4742c2ca17571dcdbc7400e008c8dcd85c6961e4b492dca51804909c44a"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-b2bba2cd813b63d017fd1d3ee876b815b74bdb5335e906a866264e298ab31d77.xcframework.zip",
            checksum: "b2bba2cd813b63d017fd1d3ee876b815b74bdb5335e906a866264e298ab31d77"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: ["SwiftIDEUtils"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-9e26440995e1a6d8d6c0d410cb33153e6d005cb30a1b2eba384fbed7e22e6b0f.xcframework.zip",
            checksum: "9e26440995e1a6d8d6c0d410cb33153e6d005cb30a1b2eba384fbed7e22e6b0f"
        ),
        .target(
            name: "SwiftIfConfig_Aggregation",
            dependencies: ["SwiftIfConfig"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-65e9018341a9ed0751808c871b98236f2362ea2a1fb6e262a0655cd85f8c77f4.xcframework.zip",
            checksum: "65e9018341a9ed0751808c871b98236f2362ea2a1fb6e262a0655cd85f8c77f4"
        ),
        .target(
            name: "SwiftWarningControl_Aggregation",
            dependencies: ["SwiftWarningControl"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftWarningControl",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-8556f12b81c6553b57df5eb4b912baabc0d09edff2e093b9ad049f2ba584e809.xcframework.zip",
            checksum: "8556f12b81c6553b57df5eb4b912baabc0d09edff2e093b9ad049f2ba584e809"
        ),
        .target(
            name: "SwiftLexicalLookup_Aggregation",
            dependencies: ["SwiftLexicalLookup"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLexicalLookup",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-d2ad8553f406c909d6dab1cc0d1e7a8c0ac712f212e9f1d96367ac8885e524c5.xcframework.zip",
            checksum: "d2ad8553f406c909d6dab1cc0d1e7a8c0ac712f212e9f1d96367ac8885e524c5"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: ["SwiftLibraryPluginProvider"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-e5920bc7250f745b94df7d18954df2877f52208408033620cab09594890045ae.xcframework.zip",
            checksum: "e5920bc7250f745b94df7d18954df2877f52208408033620cab09594890045ae"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftLibraryPluginProviderCShims-8412f46414e8b70b317697d70242e8e0847cd67753205b8fcbb03f285404fafe.xcframework.zip",
            checksum: "8412f46414e8b70b317697d70242e8e0847cd67753205b8fcbb03f285404fafe"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: ["SwiftSyntax"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-e402c04a695f9d087ebd137d92b847844f4d03cf30ceb96c76a3813f11f539f1.xcframework.zip",
            checksum: "e402c04a695f9d087ebd137d92b847844f4d03cf30ceb96c76a3813f11f539f1"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-4663f0fc93a268f9f3ef4043b81ae802b25fdfdf6d0f0105ffac9877821cd456.xcframework.zip",
            checksum: "4663f0fc93a268f9f3ef4043b81ae802b25fdfdf6d0f0105ffac9877821cd456"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-3ffdd62bdc0e19b26b32da808b080a752568312d93a855271a60106757bc2665.xcframework.zip",
            checksum: "3ffdd62bdc0e19b26b32da808b080a752568312d93a855271a60106757bc2665"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-154d4d63d867082e5c042244fdd0f621b2bf772c63519268635a9cf234a46a5c.xcframework.zip",
            checksum: "154d4d63d867082e5c042244fdd0f621b2bf772c63519268635a9cf234a46a5c"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-7ece97612329c48c1de0c81b6c35dd275c70a70b5b8afe36c8fc35a2248d319f.xcframework.zip",
            checksum: "7ece97612329c48c1de0c81b6c35dd275c70a70b5b8afe36c8fc35a2248d319f"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-ede53b3db9188632b767788d0baa68ad3f00c21e39322aa4355a0fd30bf4f57c.xcframework.zip",
            checksum: "ede53b3db9188632b767788d0baa68ad3f00c21e39322aa4355a0fd30bf4f57c"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-a9284230a5799595eb51418172d686dffb276981cee31f6769907a56309d7040.xcframework.zip",
            checksum: "a9284230a5799595eb51418172d686dffb276981cee31f6769907a56309d7040"
        ),
        .target(
            name: "SwiftSyntaxBuilder_Aggregation",
            dependencies: ["SwiftSyntaxBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-87de81942f00f92c31244dc0d98adf016549acbc2db009e9483cf98a9936982a.xcframework.zip",
            checksum: "87de81942f00f92c31244dc0d98adf016549acbc2db009e9483cf98a9936982a"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: ["SwiftSyntaxMacros"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-e0671523743685d691813d58d42783a98d8381000afbb6f120c606d8a93386ca.xcframework.zip",
            checksum: "e0671523743685d691813d58d42783a98d8381000afbb6f120c606d8a93386ca"
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_Aggregation",
            dependencies: ["SwiftSyntaxMacroExpansion"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-4db9c996951cbc4f1186370bfcc86065e6b21272dd2bdaed7d2e584857398832.xcframework.zip",
            checksum: "4db9c996951cbc4f1186370bfcc86065e6b21272dd2bdaed7d2e584857398832"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: ["SwiftSyntaxMacrosTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-1395473b147036bf494a3dccaf9f3ec4e2f265dcfdd89f2466f2218c8e4f092b.xcframework.zip",
            checksum: "1395473b147036bf494a3dccaf9f3ec4e2f265dcfdd89f2466f2218c8e4f092b"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: ["SwiftSyntaxMacrosGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-54ef7d57c9e932a1e57ab35da94492a623ec75bb517e9a742093577b99e7cfe1.xcframework.zip",
            checksum: "54ef7d57c9e932a1e57ab35da94492a623ec75bb517e9a742093577b99e7cfe1"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-95c315d5a9fa18a7f88fd6f17e09794bd1964b3c90917985f92a055bcc6dc6b6.xcframework.zip",
            checksum: "95c315d5a9fa18a7f88fd6f17e09794bd1964b3c90917985f92a055bcc6dc6b6"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: ["SwiftParserDiagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-85e59f0a3cb319bfb9e734b135d962f06baf4934557d37dac82ec9c41dd43dd1.xcframework.zip",
            checksum: "85e59f0a3cb319bfb9e734b135d962f06baf4934557d37dac82ec9c41dd43dd1"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: ["SwiftOperators"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-eacc0b27c43bb17f39345532a8822b3138198c89d1ff61873eff92aa35302653.xcframework.zip",
            checksum: "eacc0b27c43bb17f39345532a8822b3138198c89d1ff61873eff92aa35302653"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: ["SwiftRefactor"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-53a18ecc229552a7e005ef89a713eb5ea752fca7011a4886b5ec4fef7c548008.xcframework.zip",
            checksum: "53a18ecc229552a7e005ef89a713eb5ea752fca7011a4886b5ec4fef7c548008"
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