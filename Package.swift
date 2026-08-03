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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/_SwiftSyntaxCShims-ea91811f9237d3d1ddf19dd01352d1023179a1316c12d895b365c27ec4a74b91.xcframework.zip",
            checksum: "ea91811f9237d3d1ddf19dd01352d1023179a1316c12d895b365c27ec4a74b91"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/_SwiftSyntaxGenericTestSupport-15984ff9922322deb17462316aef4991cd2bec042f28df9d6d30aed22855cb54.xcframework.zip",
            checksum: "15984ff9922322deb17462316aef4991cd2bec042f28df9d6d30aed22855cb54"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftBasicFormat-8f7bb773cadabac889563070c29611e4304f61983d1780ea35a2b444d37af80a.xcframework.zip",
            checksum: "8f7bb773cadabac889563070c29611e4304f61983d1780ea35a2b444d37af80a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftCompilerPlugin-f5647e2b9d47e7039c8b4083b3b722aa3a7c7560d1af02621eee44187caa4098.xcframework.zip",
            checksum: "f5647e2b9d47e7039c8b4083b3b722aa3a7c7560d1af02621eee44187caa4098"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftCompilerPluginMessageHandling-37e5580f677242064b229893ffb1a522745f825c62c56a5fcfd37f577ca9f92e.xcframework.zip",
            checksum: "37e5580f677242064b229893ffb1a522745f825c62c56a5fcfd37f577ca9f92e"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftDiagnostics-556675779ef10c31d7da8b6b385f155a6ea465fc8163a066759e14b65285179c.xcframework.zip",
            checksum: "556675779ef10c31d7da8b6b385f155a6ea465fc8163a066759e14b65285179c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftIDEUtils-8db93c3dd2b09fd5c67041b546cd395dd0d1a1d876625668e904d14cb6573635.xcframework.zip",
            checksum: "8db93c3dd2b09fd5c67041b546cd395dd0d1a1d876625668e904d14cb6573635"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftIfConfig-de04269611b8d5eeda8d797745b6520047527455d0b895779dccae1e42f0685b.xcframework.zip",
            checksum: "de04269611b8d5eeda8d797745b6520047527455d0b895779dccae1e42f0685b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftWarningControl-5c1cfe417cbcf81a63714b9cd53dc9d1921a6e98927383884e7f30fe60ed823e.xcframework.zip",
            checksum: "5c1cfe417cbcf81a63714b9cd53dc9d1921a6e98927383884e7f30fe60ed823e"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftLexicalLookup-175b5fae37e001cf0bcf509217885741b9b95bd4090eb4a5325517e636e60f4f.xcframework.zip",
            checksum: "175b5fae37e001cf0bcf509217885741b9b95bd4090eb4a5325517e636e60f4f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftLibraryPluginProvider-d77c1658528f6a871dd0a071431afb5719ccf0347f87b9147eb38243df3277bd.xcframework.zip",
            checksum: "d77c1658528f6a871dd0a071431afb5719ccf0347f87b9147eb38243df3277bd"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: ["_SwiftLibraryPluginProviderCShims"]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/_SwiftLibraryPluginProviderCShims-13a53a222bd6f5e8c0f5bb1a603d21e6cf3cd23799b624748f59393338004139.xcframework.zip",
            checksum: "13a53a222bd6f5e8c0f5bb1a603d21e6cf3cd23799b624748f59393338004139"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax-c487e8a6bdbc44cc35df94b8c67a0a60580220f7c209df4a8f006a27c9f21865.xcframework.zip",
            checksum: "c487e8a6bdbc44cc35df94b8c67a0a60580220f7c209df4a8f006a27c9f21865"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax509-888f10ab4c5a530262cff257b4a71bc3dd1c732cb9ce9d32276ea825d2e4f5ba.xcframework.zip",
            checksum: "888f10ab4c5a530262cff257b4a71bc3dd1c732cb9ce9d32276ea825d2e4f5ba"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax510-3d62a02cc21a6367d4c418195956bbfef715f5a0a00626aefeefe4295898b26e.xcframework.zip",
            checksum: "3d62a02cc21a6367d4c418195956bbfef715f5a0a00626aefeefe4295898b26e"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax600-035c106db2eec330794b9135a7aa525fe90025f1bb615176d2bb43ebd60b0d05.xcframework.zip",
            checksum: "035c106db2eec330794b9135a7aa525fe90025f1bb615176d2bb43ebd60b0d05"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax601-0f16b057b9ae8615f30dfe99632d6554f7dff4b37a7048cb4000a34603a13e61.xcframework.zip",
            checksum: "0f16b057b9ae8615f30dfe99632d6554f7dff4b37a7048cb4000a34603a13e61"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax602-8120ac25e302a71d1956e045a45ea835df7a41b1c4d94c3416c1a2f03b177e60.xcframework.zip",
            checksum: "8120ac25e302a71d1956e045a45ea835df7a41b1c4d94c3416c1a2f03b177e60"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntax603-fd92aa3222b47310634e2167a43afbc52d34b234ec61797ddad8af0e79da3032.xcframework.zip",
            checksum: "fd92aa3222b47310634e2167a43afbc52d34b234ec61797ddad8af0e79da3032"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntaxBuilder-1174805264a57a857f1ff3c625bbb156476b4d0130ddd5c7019af3134634df34.xcframework.zip",
            checksum: "1174805264a57a857f1ff3c625bbb156476b4d0130ddd5c7019af3134634df34"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntaxMacros-9dd075dee4eff5066186e3e43e8e958578d861519e405ebc37bf50f56fc3cdf0.xcframework.zip",
            checksum: "9dd075dee4eff5066186e3e43e8e958578d861519e405ebc37bf50f56fc3cdf0"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntaxMacroExpansion-2078f860455a27632b87bd6f71548843d6a35e74562805778c942b642c44d4d0.xcframework.zip",
            checksum: "2078f860455a27632b87bd6f71548843d6a35e74562805778c942b642c44d4d0"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntaxMacrosTestSupport-cd956a687c8247c4c4051f4b8e70d534e9ce6c71ef2ede030e8bacb20d07f67b.xcframework.zip",
            checksum: "cd956a687c8247c4c4051f4b8e70d534e9ce6c71ef2ede030e8bacb20d07f67b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftSyntaxMacrosGenericTestSupport-246583974391f153bd76d478d94091952dc799da7d8ff11b159c64f8dd75d092.xcframework.zip",
            checksum: "246583974391f153bd76d478d94091952dc799da7d8ff11b159c64f8dd75d092"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftParser-b6fbc20af233914e6dfbf6cadb05f61e27ad0373be268c1d5cf6e84b66603a9c.xcframework.zip",
            checksum: "b6fbc20af233914e6dfbf6cadb05f61e27ad0373be268c1d5cf6e84b66603a9c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftParserDiagnostics-556b5e87a637d2f9e2f067f8fab5e671afc4dd6d6c176758ab249094e049e0f6.xcframework.zip",
            checksum: "556b5e87a637d2f9e2f067f8fab5e671afc4dd6d6c176758ab249094e049e0f6"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftOperators-ecd519d1aaeb571183e469cb0e5749ef86b3e91108a9090970e0099adda523ca.xcframework.zip",
            checksum: "ecd519d1aaeb571183e469cb0e5749ef86b3e91108a9090970e0099adda523ca"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.2/SwiftRefactor-1c35c090a93809e9f99ec1bd123665db18e37a03a5ebb2db928f7f86936bf88d.xcframework.zip",
            checksum: "1c35c090a93809e9f99ec1bd123665db18e37a03a5ebb2db928f7f86936bf88d"
        )
    ]
)