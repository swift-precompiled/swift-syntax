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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-e5be4827867074f1d0dbf481532397b2efde8891f689569fac8223c3c24b965f.xcframework.zip",
            checksum: "e5be4827867074f1d0dbf481532397b2efde8891f689569fac8223c3c24b965f"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-6cbda84d4bff5c4b3896a1a780f2aa1a73ae774d007b0aad1bac4f6be45e7d77.xcframework.zip",
            checksum: "6cbda84d4bff5c4b3896a1a780f2aa1a73ae774d007b0aad1bac4f6be45e7d77"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-02420bc7d0d84f1f593fc957592428beae0a38fef2901f63f70ad055f670485f.xcframework.zip",
            checksum: "02420bc7d0d84f1f593fc957592428beae0a38fef2901f63f70ad055f670485f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-6c020a8835b9af99d1a7b1334ece9791adfcc9ac2d4fb36386d328512bb6d6e9.xcframework.zip",
            checksum: "6c020a8835b9af99d1a7b1334ece9791adfcc9ac2d4fb36386d328512bb6d6e9"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-dc40f088f57de82b1d871a51b4422b14b609d1cbe535af420cb537719f85430a.xcframework.zip",
            checksum: "dc40f088f57de82b1d871a51b4422b14b609d1cbe535af420cb537719f85430a"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-d046dc06f22c350fdc3637f5ecd52541189c33be510b9ec5aca9c9200a7f112f.xcframework.zip",
            checksum: "d046dc06f22c350fdc3637f5ecd52541189c33be510b9ec5aca9c9200a7f112f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-ca609c015b974a6201b32b5e0eca823616096553aba2f889e9b39b6b9e7552a4.xcframework.zip",
            checksum: "ca609c015b974a6201b32b5e0eca823616096553aba2f889e9b39b6b9e7552a4"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-efb17a2dd1a21f08646bd5bec312e6ed13b1e46b10f6f06dbf4a332b6a358823.xcframework.zip",
            checksum: "efb17a2dd1a21f08646bd5bec312e6ed13b1e46b10f6f06dbf4a332b6a358823"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-f23808acef02ffe856fee5fb344446585e6a82be3a507bb3b77af8976f61ed16.xcframework.zip",
            checksum: "f23808acef02ffe856fee5fb344446585e6a82be3a507bb3b77af8976f61ed16"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-7a511ac05af30ac1d93c550d396f3cf59cfcb72b3daedc6dbba189dd41f66528.xcframework.zip",
            checksum: "7a511ac05af30ac1d93c550d396f3cf59cfcb72b3daedc6dbba189dd41f66528"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-0d4b370555577a66c4dcde2a702b37ad79fc7969aeea2a4f5597fd2d5c4b3ede.xcframework.zip",
            checksum: "0d4b370555577a66c4dcde2a702b37ad79fc7969aeea2a4f5597fd2d5c4b3ede"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: ["_SwiftLibraryPluginProviderCShims"]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftLibraryPluginProviderCShims-8329d0773fd5f65550d05e3ccce79f191fe5344c441eb5f30f9f4d2057c03217.xcframework.zip",
            checksum: "8329d0773fd5f65550d05e3ccce79f191fe5344c441eb5f30f9f4d2057c03217"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-a4b446127fa6073ae82726d4485e79161592797248b9c29233ab1c75a0ee2345.xcframework.zip",
            checksum: "a4b446127fa6073ae82726d4485e79161592797248b9c29233ab1c75a0ee2345"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-cbc7cb888068590a7a4ff2db6d1f2ed2e197d825cc16d7933460863df54f968a.xcframework.zip",
            checksum: "cbc7cb888068590a7a4ff2db6d1f2ed2e197d825cc16d7933460863df54f968a"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-8efa4f83fb92e9fd06b79dbdde762ae40c864420af6dd37efe847b60e6822411.xcframework.zip",
            checksum: "8efa4f83fb92e9fd06b79dbdde762ae40c864420af6dd37efe847b60e6822411"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-c0204d1e28ff84ce643f1939d0e81acc543bb10618f54439acfe56ae5bdb59d0.xcframework.zip",
            checksum: "c0204d1e28ff84ce643f1939d0e81acc543bb10618f54439acfe56ae5bdb59d0"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-fe903a04a6f835f5387ae9761b3bbe82956a71513b95446ecfa1bb7e4e01b973.xcframework.zip",
            checksum: "fe903a04a6f835f5387ae9761b3bbe82956a71513b95446ecfa1bb7e4e01b973"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-febd8126b61f4789a918c6e0735775f9511fe7ec13ee7f51e9f33799c246a3ae.xcframework.zip",
            checksum: "febd8126b61f4789a918c6e0735775f9511fe7ec13ee7f51e9f33799c246a3ae"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-89601a7dadf2c75e86b305f95e7262dd028156fda7af5ae40eeda7120c153b6c.xcframework.zip",
            checksum: "89601a7dadf2c75e86b305f95e7262dd028156fda7af5ae40eeda7120c153b6c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-58ff74cef06fadfdb468f770879de51ed22e628f1ec349a0356404f005d3e8ec.xcframework.zip",
            checksum: "58ff74cef06fadfdb468f770879de51ed22e628f1ec349a0356404f005d3e8ec"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-94d66ec00acedaa74ffb90e9a58d98949df06d3b921dfcae8df01400833d62f8.xcframework.zip",
            checksum: "94d66ec00acedaa74ffb90e9a58d98949df06d3b921dfcae8df01400833d62f8"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-1a98b7c97e2a187b06c05c08fd4363b36a0ddf38bd4fb1b0433344a31b75ef51.xcframework.zip",
            checksum: "1a98b7c97e2a187b06c05c08fd4363b36a0ddf38bd4fb1b0433344a31b75ef51"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-65ab22a211b3467309d7974424f0824730e31f635096b75badc4397549f55585.xcframework.zip",
            checksum: "65ab22a211b3467309d7974424f0824730e31f635096b75badc4397549f55585"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-b8eba0e0a1fdc90bb331884be2b23d3a19cbd983da5199a62d58564de64c2fb4.xcframework.zip",
            checksum: "b8eba0e0a1fdc90bb331884be2b23d3a19cbd983da5199a62d58564de64c2fb4"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-7810a3b4360032aabc084be04dde28bb92b8b1c7ef11540d9830c8b0ed22b785.xcframework.zip",
            checksum: "7810a3b4360032aabc084be04dde28bb92b8b1c7ef11540d9830c8b0ed22b785"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-650afb8501d2f73a513c95b55d5c0c72c9ec79c9ed83de3713fd7d5db24a353a.xcframework.zip",
            checksum: "650afb8501d2f73a513c95b55d5c0c72c9ec79c9ed83de3713fd7d5db24a353a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-a1795155d3a78d8cdb6761ad79e6730e7e27886ce1f7f4eb2ac7bf767a230507.xcframework.zip",
            checksum: "a1795155d3a78d8cdb6761ad79e6730e7e27886ce1f7f4eb2ac7bf767a230507"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-c6996ec4ffd2b132147c34f7fa7a219520b2728ca5f6816ca5547273bba20d2b.xcframework.zip",
            checksum: "c6996ec4ffd2b132147c34f7fa7a219520b2728ca5f6816ca5547273bba20d2b"
        )
    ]
)