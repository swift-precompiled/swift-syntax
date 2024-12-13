// swift-tools-version:5.7

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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123336.zip",
            checksum: "0ebb62406bcd3f3a7f13420fd1397f70bd4523c8607926321ca1159c5cd8f3aa"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123341.zip",
            checksum: "c922217836d5981eaf4344eeef4dfc276cde66467d4d02997b126c062413b701"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123343.zip",
            checksum: "1bed11e4ac40309268debf2f455295c02b8de6c7eb21f4cd39442bf4e4f0a86e"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123344.zip",
            checksum: "144a3a663cd1afed222344db4d6d308130fcd7c11a65c4027517ece1a645e6cb"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [.target(name: "SwiftIDEUtils"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123345.zip",
            checksum: "a991c71aeb2f074c173adeecb04bd02fc3953a1d6580c6ac50ca7fabae1165b8"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123348.zip",
            checksum: "7e5b8051c8a7c59a230b6ad64e9d64fda8a8d33b168193165767bd71d35aa285"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123362.zip",
            checksum: "db3c87f8cdcbbfb3d02d13b339f462296dcefcd5a62000fce3279d97a913a31d"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123364.zip",
            checksum: "ec6f3d89b5735bdf18c70f69c4fda746aa9b62139be7c4d88ff76542c8f32c9e"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123365.zip",
            checksum: "457b2607c596bad607a004263158c094f0eedcd0c4ef0414595ee0a34417befe"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123389.zip",
            checksum: "14d65412057f4f8e35427e2cb2a7b9ace4ec002c07a491e3ec1bb58ceddf9c86"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123391.zip",
            checksum: "0da7cf230b47b07da914a609e909ea84167b7ef5b0d33bca00fda50a43edb3c5"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123392.zip",
            checksum: "be06f0d1f7c5c0ddf09015a547786866452d35266eb8e13350aa34f0b5ab1123"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123394.zip",
            checksum: "d8185c2918a28e5e763e8f06a0eb681ed251fc7336e53186127eda6d6d8212d9"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123395.zip",
            checksum: "c574c96070f3c9ed2a1d965518ba3207f9e2d5cc15ca50778eb91912c7dfd7b7"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123398.zip",
            checksum: "31589b0531691ec453bc408ef24653b54600ca9aef6b7a34da7ec03cfc053f66"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123399.zip",
            checksum: "eeb0d9c1003a036276721885a791fc8efa5bf677d39f0d02792b75575ece7586"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213123400.zip",
            checksum: "16b688cfe09b30e4f8c8aa79be43daf142280fa57efd8c0ca68a0210ae261a2c"
        )
    ]
)