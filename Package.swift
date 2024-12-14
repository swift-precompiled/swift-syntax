// swift-tools-version:5.8

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
            name: "SwiftBasicFormat_Aggregation",
            dependencies: [.target(name: "SwiftBasicFormat"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300902.zip",
            checksum: "d1c3899f22a9e7dea052aec02235774322ecd64b403ceb363a6786c333b93fb9"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300903.zip",
            checksum: "3e59020d6b68856977780941610bcde94c590edb3977843d333102216fd0493d"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300906.zip",
            checksum: "e8ed0973445d05c9a2626f1648d87a8e11584fa2206c4c891d1f475dce3b78bf"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300907.zip",
            checksum: "66dd567737b22af2f5a3c2067406e0c9823c10a7c6f8bae9804b1d9e2573df8e"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300909.zip",
            checksum: "c76b9cfb3eeae4e141f840534d0dc1ba8abcf0e575f1bd7856f97c28c9f7097f"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300925.zip",
            checksum: "4f10db2bb2226d3b9da07e858a0b88e4c4cda29f74adce8d25bbc5ac51480382"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300934.zip",
            checksum: "cc1e29afa334e66315dc94684aaec52b026a768525c710a6958ba28ee4361baf"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300938.zip",
            checksum: "074977b2f52c6d58867168c34c3bd189528732cc716f419defcfd863359e2958"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntax"),
                "_SwiftSyntaxCShims_Aggregation",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300976.zip",
            checksum: "f2261146b9be921059173914e6b36370e296222333d65897c0ee9f0531ae120a"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213300988.zip",
            checksum: "ee8c9c902811cf535ab4985ac29b90839311d62fd6c81474de230cb7efc1d09b"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301000.zip",
            checksum: "99b719002e9a5a8e64e569ef0fb2f24ac0da6e89e47ab7ca5c14428d2ced3c9d"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301002.zip",
            checksum: "aa6136ea27940b10cbc9c84fc0e005c0ba12fe569895cc7928d35f50afaccdc6"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301004.zip",
            checksum: "f88d1c1b9907c09c8da17f7b54fddfe3179ebead7e0b974c90b6acf88fa5c3df"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301006.zip",
            checksum: "00e28bf9049b772efd580242b4449cd14ddb37f654943c9bc35a42ab98a02ecd"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301009.zip",
            checksum: "0c6964e92b1eee0aeff4bfa2801c2bcec72d2dd192a9e2b577b80610ac024f69"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301015.zip",
            checksum: "c9caf951ca4200939f96497e0159d17055185b9c29bccaa92d1b512bec346e44"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxGenericTestSupport")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301016.zip",
            checksum: "5a5e3dabd4126e86f62f31c63f61948d9d6a4ce957bd3f78452883b958708a0e"
        ),
        .target(
            name: "_SwiftSyntaxCShims_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxCShims")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301019.zip",
            checksum: "fd6a86bd4011bc375d19e48c37c691d03abf79a9761cc9ef3999c19966f06bed"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: [.target(name: "_SwiftLibraryPluginProviderCShims")]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301020.zip",
            checksum: "555023315b0fb4cbc81b835d1cf79e6968ea4b27150896f394b364f46c029332"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: [.target(name: "SwiftSyntax600")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301021.zip",
            checksum: "956dc732913da1d158f7bcf3770619892c6cd5b740e5f43ecd0145d2ff7d7701"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301024.zip",
            checksum: "18075459d58aa0aa2e146c4c3bf052d5e386b8670eded93c181a2892dd69b2f6"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213301025.zip",
            checksum: "deba70a22726e394a789b5b6cc6b2af16d0ea4387afec941e54af83f5084b215"
        )
    ]
)