// swift-tools-version:5.8.0

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
            name: "_SwiftSyntaxCShims",
            dependencies: ["_SwiftSyntaxCShims_PrecompiledArchive"],
            path: "Sources/_SwiftSyntaxCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/_SwiftSyntaxCShims-89b71ac361b59306c96d2e47fcc8ac185599b1b1fadfb194ceaa095b442229af.xcframework.zip",
            checksum: "89b71ac361b59306c96d2e47fcc8ac185599b1b1fadfb194ceaa095b442229af"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/_SwiftSyntaxGenericTestSupport-444fd37e46a58d1b155af9bd5678e60e7ad6d7a7b3e94e17029e58ad538bc92b.xcframework.zip",
            checksum: "444fd37e46a58d1b155af9bd5678e60e7ad6d7a7b3e94e17029e58ad538bc92b"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftBasicFormat-d3f510d7306fccbaa10f65f08c9fbc739c6e9a34a398bf94b5b423d85bb687e7.xcframework.zip",
            checksum: "d3f510d7306fccbaa10f65f08c9fbc739c6e9a34a398bf94b5b423d85bb687e7"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftCompilerPlugin-1af5582d6bcfe8135d7053000f8da14b65ba899ff91466d47c697f75b636c905.xcframework.zip",
            checksum: "1af5582d6bcfe8135d7053000f8da14b65ba899ff91466d47c697f75b636c905"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                "SwiftCompilerPluginMessageHandling",
                "_SwiftSyntaxCShims",
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftCompilerPluginMessageHandling-5887f071053b33279e363b714eb24c7e1a4cd5d9a1c2a84f7e35dd9af846a4e4.xcframework.zip",
            checksum: "5887f071053b33279e363b714eb24c7e1a4cd5d9a1c2a84f7e35dd9af846a4e4"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftDiagnostics-28eb6a030075b0c990dd3ef789793c14745922da9b9d5f2bf470697d8836013a.xcframework.zip",
            checksum: "28eb6a030075b0c990dd3ef789793c14745922da9b9d5f2bf470697d8836013a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftIDEUtils-a62b1481f4cfc83887e9ecb64bd513f7f5afcf96076297bb1dee966fde5997e5.xcframework.zip",
            checksum: "a62b1481f4cfc83887e9ecb64bd513f7f5afcf96076297bb1dee966fde5997e5"
        ),
        .target(
            name: "SwiftIfConfig_Aggregation",
            dependencies: [
                "SwiftIfConfig",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftIfConfig-56900e560bf7aad158bdb1d48f2cfa1d79ce9b7fcdc36521715ce0a7a3615f1f.xcframework.zip",
            checksum: "56900e560bf7aad158bdb1d48f2cfa1d79ce9b7fcdc36521715ce0a7a3615f1f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftLexicalLookup-bd553a234863f1a136e87588cd606d903e4e02ee1d3dc212ad930a849905bea5.xcframework.zip",
            checksum: "bd553a234863f1a136e87588cd606d903e4e02ee1d3dc212ad930a849905bea5"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: [
                "SwiftLibraryPluginProvider",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftLibraryPluginProviderCShims"
            ]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftLibraryPluginProvider-c669fd2b288eeaf8ba7f385d4c4c289111dbd214222cf5edf4591c6dda432194.xcframework.zip",
            checksum: "c669fd2b288eeaf8ba7f385d4c4c289111dbd214222cf5edf4591c6dda432194"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/_SwiftLibraryPluginProviderCShims-441e35ac17dc417dd6e60d374ce846672855953c7e6726f592fea9ec08badc15.xcframework.zip",
            checksum: "441e35ac17dc417dd6e60d374ce846672855953c7e6726f592fea9ec08badc15"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                "SwiftSyntax",
                "_SwiftSyntaxCShims",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntax-ffb26f824440ae3496e8cc3ef2cda3ff7ea38094b118141ec08fafe6f2d326db.xcframework.zip",
            checksum: "ffb26f824440ae3496e8cc3ef2cda3ff7ea38094b118141ec08fafe6f2d326db"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntax509-6f9ecaf21dd55b59713f53f79e516f94766faba108a5917709939bd8d8eaf183.xcframework.zip",
            checksum: "6f9ecaf21dd55b59713f53f79e516f94766faba108a5917709939bd8d8eaf183"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntax510-f5d60976410489a6d898cabd0cdbf928cedd560d93b34607b220f361896578b5.xcframework.zip",
            checksum: "f5d60976410489a6d898cabd0cdbf928cedd560d93b34607b220f361896578b5"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntax600-979a8013fe924878b54ecbaeb10c189a3f9849818e264aa4ef516175191f7c9f.xcframework.zip",
            checksum: "979a8013fe924878b54ecbaeb10c189a3f9849818e264aa4ef516175191f7c9f"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntax601-a3f3ad079c6e58e1e8105f5c713b6dcc1839d022911221dd4f29075bb03a55ff.xcframework.zip",
            checksum: "a3f3ad079c6e58e1e8105f5c713b6dcc1839d022911221dd4f29075bb03a55ff"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntaxBuilder-59f0dad33969cb9726492d849695aef494219b71c7bcfdadaa41a29e23ef4ca1.xcframework.zip",
            checksum: "59f0dad33969cb9726492d849695aef494219b71c7bcfdadaa41a29e23ef4ca1"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: [
                "SwiftSyntaxMacros",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntaxMacros-f82f7fb56190e3d3fe1c65ff830b9ed1900647bbb22b92a9e97e57c649766b38.xcframework.zip",
            checksum: "f82f7fb56190e3d3fe1c65ff830b9ed1900647bbb22b92a9e97e57c649766b38"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntaxMacroExpansion-7da37fad7a6eb5af6f9a8ec10d969baa8bb8c6f677005b71def547789d715c2c.xcframework.zip",
            checksum: "7da37fad7a6eb5af6f9a8ec10d969baa8bb8c6f677005b71def547789d715c2c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntaxMacrosTestSupport-afcbcbbc6a9129559e0bce2415b4b0a7391ff5a87d454b4098687b3c761e65c3.xcframework.zip",
            checksum: "afcbcbbc6a9129559e0bce2415b4b0a7391ff5a87d454b4098687b3c761e65c3"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: [
                "SwiftSyntaxMacrosGenericTestSupport",
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftSyntaxMacrosGenericTestSupport-f8fd0a793c29d603aeb7bf4b7cbe49dbbc1cc1064ef8440db38d30399692fa19.xcframework.zip",
            checksum: "f8fd0a793c29d603aeb7bf4b7cbe49dbbc1cc1064ef8440db38d30399692fa19"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftParser-65c8bccc4cad859ba361cfb9cd164f0ceb22df8c3357319636611337cc201db9.xcframework.zip",
            checksum: "65c8bccc4cad859ba361cfb9cd164f0ceb22df8c3357319636611337cc201db9"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftParserDiagnostics-310f7a5290a59cefc9405b1cd20c31ef915de389a2abfa833e32d105d23284c6.xcframework.zip",
            checksum: "310f7a5290a59cefc9405b1cd20c31ef915de389a2abfa833e32d105d23284c6"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftOperators-86eb983b024070659ca3f6dfc1f7cb08200ede17429cf1df7c6e14214197ea04.xcframework.zip",
            checksum: "86eb983b024070659ca3f6dfc1f7cb08200ede17429cf1df7c6e14214197ea04"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1-precompiled.3/SwiftRefactor-ee7fdb74beb54914039505c1882fc37d108d04a5bc5f41c69826ffe7c6323a97.xcframework.zip",
            checksum: "ee7fdb74beb54914039505c1882fc37d108d04a5bc5f41c69826ffe7c6323a97"
        )
    ]
)