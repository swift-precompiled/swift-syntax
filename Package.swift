// swift-tools-version:5.7

import PackageDescription
import Foundation

let package = Package(
    name: "swift-syntax",
    platforms: [
        .iOS("13.0"),
        .macCatalyst("13.0"),
        .macOS("10.15"),
        .tvOS("13.0"),
        .watchOS("6.0")
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
            name: "SwiftCompilerPluginMessageHandling",
            targets: ["SwiftCompilerPluginMessageHandling_Aggregation"]
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
        )
    ],
    targets: [
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: [.target(name: "SwiftBasicFormat"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftBasicFormat.xcframework.zip",
            checksum: "09cfdb1e15a44699539d439d52a018722f04a59e6d114a3cd79c9bba06a55a69"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftCompilerPlugin.xcframework.zip",
            checksum: "92af25e8cde06f55310d3fb59ca96b72d30418aeb0cd7e35eb55b59e7ea168cf"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                .target(name: "SwiftCompilerPluginMessageHandling"),
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftCompilerPluginMessageHandling.xcframework.zip",
            checksum: "8a99ded03635107b429a28d5e719477f52c596142cc089f813b9bdbc1522786b"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftDiagnostics.xcframework.zip",
            checksum: "80e9ad433d65900040d45541f4a517f2e028745458ea52fcc30bdf83058cf771"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [.target(name: "SwiftIDEUtils"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftIDEUtils.xcframework.zip",
            checksum: "634b2434f2efb108b59a87ebf9437cfc28b0955c249a023dbe240cba8bf7487a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftOperators.xcframework.zip",
            checksum: "b6d68d887ca44530fe07c0108ced199175844700d04363d456ceb4d94e3bdf4f"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftParser.xcframework.zip",
            checksum: "f0f2e8938ebaefe89fcbba70cbf8e25503ac608330e4b48c8cf6cfca3fe702dd"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftParserDiagnostics.xcframework.zip",
            checksum: "7ab466e9aac4c4342a1be9365555d0a3285b029bb18303e5216e1c1146b19f10"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftRefactor.xcframework.zip",
            checksum: "d29b44b80ddfc30ff9a07e9bc4b86b8a4054865230f89756056c6d7de68569ae"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntax"),
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntax.xcframework.zip",
            checksum: "e1e26cae47369a96fac29d0abbc92db75dd22f621f0a951c1f2ee0db9df7246a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntaxBuilder.xcframework.zip",
            checksum: "b8dd0500938ba8fd0087d5e7e596080ad200f533fcaa5dff22d880b8de9b2136"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntaxMacros.xcframework.zip",
            checksum: "e2a4b4d91d3b1fd43b5e1c5d40d9946763db05afa46d1580eabb65dfd6a9103f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntaxMacroExpansion.xcframework.zip",
            checksum: "c4dec3fc0a38ec46be5456b3037cb2f133b5788f7fa622fa18282775236d4dbd"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacrosTestSupport"),
                "_SwiftSyntaxTestSupport_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntaxMacrosTestSupport.xcframework.zip",
            checksum: "12ca7d048bea9794faa22156186c101fcf25fa94c4fe5680c371f3d1aa1499d2"
        ),
        .target(
            name: "_SwiftSyntaxTestSupport_Aggregation",
            dependencies: [
                .target(name: "_SwiftSyntaxTestSupport"),
                "SwiftBasicFormat_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/_SwiftSyntaxTestSupport.xcframework.zip",
            checksum: "916f1532db465e8dc9d91dcb4c4bc3c44346f4c51dedc24c126f937828f8a418"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntax510.xcframework.zip",
            checksum: "8799d9e16d422b7167ed4ab3b89f024d0e45f9a7762062a24f234ac4c9ed008a"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/510.0.3/SwiftSyntax509.xcframework.zip",
            checksum: "b0c109aea158549c909def669b0f999b7b27245f99397db1e754b5c3d758ee6e"
        )
    ]
)