// swift-tools-version:5.8

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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftBasicFormat.xcframework.zip",
            checksum: "ed362ef17c54779ba8a5e128c9ab3455a0036109f7458276a8ee63adc2c4c642"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftCompilerPlugin.xcframework.zip",
            checksum: "15ca1c305584511e7d801a0dd086864942af04b20d73bcad9b070dcccdb609a7"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftDiagnostics.xcframework.zip",
            checksum: "3f807c64a78d6894f8ac1bcc7a7528982c1fcd842a8c2e05aa36a0238a555957"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftIDEUtils.xcframework.zip",
            checksum: "0b6340460f31bd8425a063143503a4fbdc4485e6120a2d4812d9b16046a70a43"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftOperators.xcframework.zip",
            checksum: "4d280460b16d41622f5418d49cda327063fd7327d42ec22e9c219a8f45ca14ae"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftParser.xcframework.zip",
            checksum: "913a6c1418d8d1cc0a0009ea5db448ca2e33f05f4178302966db9dc5bdc5ffa8"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftParserDiagnostics.xcframework.zip",
            checksum: "6a32333f4118d8908ee330941b7977cfd960c0b016f70a27673dae53d750861d"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftRefactor.xcframework.zip",
            checksum: "9472f62c6eb5f750dbfc9abd21d703a7083ca9db9ca1c8684822b13dd9b48604"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntax.xcframework.zip",
            checksum: "892a76d2cd7e34cebf6930766f34223c1eea58a176e1b3c64370dd881f6741d7"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntaxBuilder.xcframework.zip",
            checksum: "397539824cca2d9f6fbe387e207fd894cc6617cdc091d0459b13a6b112f6d4e5"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntaxMacros.xcframework.zip",
            checksum: "98d04ee26ec04d2bf51c4f8d640fb109ebc0125b19cd8fdf5ab8a967f3cfbd19"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntaxMacroExpansion.xcframework.zip",
            checksum: "bd920cb73abbe5b81b9130cfedd542951b5a5a59616de397115208f781dd33d7"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntaxMacrosTestSupport.xcframework.zip",
            checksum: "408a2ebff0899c8c51aba531eb71137adffaf4db76eee4eea031e8cbcbd58795"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntaxMacrosGenericTestSupport.xcframework.zip",
            checksum: "2f92b5a1c8f6cfd9c01f1abe88c48aae22073f15b69e83c13997e860bd3f3764"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftCompilerPluginMessageHandling.xcframework.zip",
            checksum: "a3e498aabffe830aa2e84937113b45196412df2214f7dced37332fc5f8e1ebae"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftLibraryPluginProvider.xcframework.zip",
            checksum: "e400dad7a7ff09b6e422e6e4685f8276f762665f3871d12d7998939d9fd7a33c"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxGenericTestSupport")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/_SwiftSyntaxGenericTestSupport.xcframework.zip",
            checksum: "096cb1fb87989137f224179854ebbdf0725b9dea8706b4e12fdfbd77b96a6a6e"
        ),
        .target(
            name: "_SwiftSyntaxCShims_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxCShims")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/_SwiftSyntaxCShims.xcframework.zip",
            checksum: "646d8ee5b0498ac5e53950ee8cd75e2ac898a2aa0d64d9679a71158d439387fa"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: [.target(name: "_SwiftLibraryPluginProviderCShims")]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/_SwiftLibraryPluginProviderCShims.xcframework.zip",
            checksum: "eb99dbb72b92c7e2df4a7289e4169d46c924bcd091091002a6ca6087bac99355"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: [.target(name: "SwiftSyntax600")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntax600.xcframework.zip",
            checksum: "9e2149b0495f364435b0dbb191722609b82cb4a8192abef45be1afe98bab218d"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntax510.xcframework.zip",
            checksum: "b93439b2aa132f1a3c629693a3fb55bf6f2a7c0f445d3cdccd7fedd6f20bda01"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/600.0.1/SwiftSyntax509.xcframework.zip",
            checksum: "c2e45865ac5010d280367c78f6cca288caa6064e2ad828c215afdc6374931aa4"
        )
    ]
)