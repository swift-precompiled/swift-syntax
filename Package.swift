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
            dependencies: [.target(name: "_SwiftSyntaxCShims")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/_SwiftSyntaxCShims.xcframework.zip",
            checksum: "a456c7d0e1b37b89ef54762aef0ad0d71099e9fd0bddd85d21c4fbf7008e1a3e"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxGenericTestSupport")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/_SwiftSyntaxGenericTestSupport.xcframework.zip",
            checksum: "983a45a6f07e30e73a75769da8e76872b41c852e2e1a905ed424eb603661a9f9"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: [.target(name: "SwiftBasicFormat"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftBasicFormat.xcframework.zip",
            checksum: "e97cd4189dffc2151d1ae9b043dd153665623b34f1373fc4f5908160e7f6d1d8"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftCompilerPlugin.xcframework.zip",
            checksum: "a6f21af4116cab55ab75251cfc92052c761956a6424079eb3914d4e1c6a1266d"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                .target(name: "SwiftCompilerPluginMessageHandling"),
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftCompilerPluginMessageHandling.xcframework.zip",
            checksum: "65786458bfa5ae30ad951916196f542e23dec6e06c702560864cecdbe1cdac1a"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftDiagnostics.xcframework.zip",
            checksum: "69cad086ea6492646bd6f36a1fb31dc31d3e032ff854d23bce4b7d95cbcae95b"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [
                .target(name: "SwiftIDEUtils"),
                "SwiftSyntax_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftIDEUtils.xcframework.zip",
            checksum: "2d3dd3512e716434258730fbdf909399ef027ee18577e81934f8167c760c6f99"
        ),
        .target(
            name: "SwiftIfConfig_Aggregation",
            dependencies: [
                .target(name: "SwiftIfConfig"),
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftIfConfig.xcframework.zip",
            checksum: "bf48bb35f623514c288ae39366f617e87f1ba133c359b4e8eed983f269362b32"
        ),
        .target(
            name: "SwiftLexicalLookup_Aggregation",
            dependencies: [
                .target(name: "SwiftLexicalLookup"),
                "SwiftSyntax_Aggregation",
                "SwiftIfConfig_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftLexicalLookup",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftLexicalLookup.xcframework.zip",
            checksum: "8bf30a2b7d52b96a03240ced0d66ba7a7782de39322df541b6af728bf835d3d8"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: [
                .target(name: "SwiftLibraryPluginProvider"),
                "SwiftSyntaxMacros_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftLibraryPluginProviderCShims_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftLibraryPluginProvider.xcframework.zip",
            checksum: "3dd27f7434702e9797a2df5916ad6cb3f1aef7b302abc4fe9055feba4df6b0b8"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: [.target(name: "_SwiftLibraryPluginProviderCShims")]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/_SwiftLibraryPluginProviderCShims.xcframework.zip",
            checksum: "8c3fe02194f44024bb9213cb1838770012c97ed5c70ffb4627633d439006397c"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntax"),
                "_SwiftSyntaxCShims_Aggregation",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation",
                "SwiftSyntax602_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntax.xcframework.zip",
            checksum: "9ce15e04c40c62c94d2434db01522884c3b182aa32aec50ad99674805072184c"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntax509.xcframework.zip",
            checksum: "4d791c932417de0f08eabda9ae55cf38d248394ce57d14759ac25c25e1dd98eb"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntax510.xcframework.zip",
            checksum: "0c6976f2901c2c5600b694583107ac515259d400c0d91f5c80803f2b69338e75"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: [.target(name: "SwiftSyntax600")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntax600.xcframework.zip",
            checksum: "96f766631ab6cee63c002b83c2b904190df7ec36e9b2b5bc84c3c828401ba39a"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: [.target(name: "SwiftSyntax601")]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntax601.xcframework.zip",
            checksum: "670eaf6812b98e05074e38fca76540bfa0534d0931a3beb30a1231bdfd143739"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: [.target(name: "SwiftSyntax602")]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntax602.xcframework.zip",
            checksum: "1b2065cb98b89ac17484c62632f157e32cb109ed0e556246732dea951764bcc7"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntaxBuilder.xcframework.zip",
            checksum: "2d9bc1e23f8f017af0c6c934e731bc22870931db5ca7dd8b6ffa34976cee7ef7"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntaxMacros.xcframework.zip",
            checksum: "3f97e9f741e8838fb96674ce8309da8b69fba0339ba30827358a509a0d55790f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntaxMacroExpansion.xcframework.zip",
            checksum: "da71e4c1c7ae947278587d17512064a0256221dcb5756bd37f98f0d22e6c6757"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacrosTestSupport"),
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacrosGenericTestSupport_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntaxMacrosTestSupport.xcframework.zip",
            checksum: "71cff1ceeb0274a96fe4f09decff24217ecabe2bea4df6a8bdb89c4c9ccd8cd2"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacrosGenericTestSupport"),
                "_SwiftSyntaxGenericTestSupport_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftIDEUtils_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftSyntaxMacrosGenericTestSupport.xcframework.zip",
            checksum: "7bfd1dc316ae4920d20be04be7ecde4ab29918903940bb3866be71a5982c5f93"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftParser.xcframework.zip",
            checksum: "6892188225a4a5d97dc1fd7d17c8911282c0482765ee3af8113ba7b8758241f2"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftParserDiagnostics.xcframework.zip",
            checksum: "25d617a209b8d8d296a23341dfbd9fd8eed5815e40d6a1d028d0008eacd8b81a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftOperators.xcframework.zip",
            checksum: "bcaf6bf1aeb8bea1ef326bb95c5ccf5c76ff3f642fea6efe0bcf1c0a688e60bb"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/602.0.0/SwiftRefactor.xcframework.zip",
            checksum: "f6104c7ea935da824ae7b5214fb04c8343d1a7805c693acd5c245b1318029a07"
        )
    ]
)