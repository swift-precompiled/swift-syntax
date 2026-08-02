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
            name: "SwiftBasicFormat_Aggregation",
            dependencies: [.target(name: "SwiftBasicFormat"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
    name: "SwiftBasicFormat",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftBasicFormat-c9ce6d3fe9a05bd056fe54767defb27f4008fb9bfa30241aa94a46152c010046.xcframework.zip",
    checksum: "c9ce6d3fe9a05bd056fe54767defb27f4008fb9bfa30241aa94a46152c010046"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftCompilerPlugin-e28425c1eaa3feb7c666a0b43e5292f1534a9ea6203381a556c2c72b7b41736e.xcframework.zip",
    checksum: "e28425c1eaa3feb7c666a0b43e5292f1534a9ea6203381a556c2c72b7b41736e"
),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
    name: "SwiftDiagnostics",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftDiagnostics-3c1fa7f50b5000274d4723b1e6838f70273700e3fe648caa9ddc7fb82c4af93c.xcframework.zip",
    checksum: "3c1fa7f50b5000274d4723b1e6838f70273700e3fe648caa9ddc7fb82c4af93c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftIDEUtils.xcframework.zip",
            checksum: "f4b1df344d77851b85a8c21310101e37779efb90bb3ae5d318f234496b25d4f4"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftIfConfig.xcframework.zip",
            checksum: "441f4f96f3e227a3730fb1036b3120b7ea1792fd0e59d65207fa204de175d445"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftLexicalLookup.xcframework.zip",
            checksum: "884acdaee11ac8121917f2d5544b898f2abed6396cf8dd596556a9457ebf319f"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftOperators-9323c200034420de9c2ebc16b98ca82a0b9f421b63c757e17f7bef820d0c72dc.xcframework.zip",
    checksum: "9323c200034420de9c2ebc16b98ca82a0b9f421b63c757e17f7bef820d0c72dc"
),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
    name: "SwiftParser",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftParser-cfee6823f14151e98bb6b9ad5f279daec5346a58f3f136de2d0744cea86d77a4.xcframework.zip",
    checksum: "cfee6823f14151e98bb6b9ad5f279daec5346a58f3f136de2d0744cea86d77a4"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftParserDiagnostics-8426d94e8b62e88261c8e53de0d8f5fc16c476692531584d4f22e53d1164cfc1.xcframework.zip",
    checksum: "8426d94e8b62e88261c8e53de0d8f5fc16c476692531584d4f22e53d1164cfc1"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftRefactor.xcframework.zip",
            checksum: "6fb5bbee91ac086def24a263bde594c215f6061fbc5aecad89ed0a7e669884b3"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntax"),
                "_SwiftSyntaxCShims_Aggregation",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation",
                "SwiftSyntax601_Aggregation"
            ]
        ),
        .binaryTarget(
    name: "SwiftSyntax",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax-85cd116e01428efafbe1ec8f32487e21e14e0daeca6ceb88b2e25ec6433b2b68.xcframework.zip",
    checksum: "85cd116e01428efafbe1ec8f32487e21e14e0daeca6ceb88b2e25ec6433b2b68"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxBuilder-07d9f7363bc0cfa1c9856600136e1a8e25413fa44ced299c61c3b02c5b4ef414.xcframework.zip",
    checksum: "07d9f7363bc0cfa1c9856600136e1a8e25413fa44ced299c61c3b02c5b4ef414"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacros-d0cbe43ac538f5453811bef2e60f8e447a2a9aab388c9ff25bb126675a26f2b8.xcframework.zip",
    checksum: "d0cbe43ac538f5453811bef2e60f8e447a2a9aab388c9ff25bb126675a26f2b8"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacroExpansion-71ec8ddbd26bc82ee286b06d7f118c6bd80e9ba37f739f9775831962676505a3.xcframework.zip",
    checksum: "71ec8ddbd26bc82ee286b06d7f118c6bd80e9ba37f739f9775831962676505a3"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacrosTestSupport.xcframework.zip",
            checksum: "acbc76f207113bc8f887c265ab4dfb04b031c794088eb4eef09e7c0bde971332"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacrosGenericTestSupport.xcframework.zip",
            checksum: "8ffc73e6d793211174eb6440819131330886058514666c34591d0f68a3b655d7"
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
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftCompilerPluginMessageHandling-92285ca075695ba3bbdf0a7366711b1626475ecdb178f23ed4e071ce0ac77ad9.xcframework.zip",
    checksum: "92285ca075695ba3bbdf0a7366711b1626475ecdb178f23ed4e071ce0ac77ad9"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftLibraryPluginProvider.xcframework.zip",
            checksum: "c1549c5625cacfd5ac1d9d5d0a6abdf7d131327e6e2e85c9da0ea104181aac01"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxGenericTestSupport")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/_SwiftSyntaxGenericTestSupport.xcframework.zip",
            checksum: "acf17b11302ae5b3fa72949c3efe240057df68cfdc102cabd17d91b3ba0faccd"
        ),
        .target(
            name: "_SwiftSyntaxCShims_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxCShims")]
        ),
        .binaryTarget(
    name: "_SwiftSyntaxCShims",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/_SwiftSyntaxCShims-b84c6aa926468c37b4c61f5be1921c61408e24a674580bf54ca0983d650007da.xcframework.zip",
    checksum: "b84c6aa926468c37b4c61f5be1921c61408e24a674580bf54ca0983d650007da"
),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: [.target(name: "_SwiftLibraryPluginProviderCShims")]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/_SwiftLibraryPluginProviderCShims.xcframework.zip",
            checksum: "96ca3b120aa4fdff43799c53cc93693c4a9ecd82770071ab7d8ec984cf73eaa8"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: [.target(name: "SwiftSyntax601")]
        ),
        .binaryTarget(
    name: "SwiftSyntax601",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax601-beaaa19a590c792f5d7ab4ee3253e56ae3f49689505750bea64c08615fbd6f71.xcframework.zip",
    checksum: "beaaa19a590c792f5d7ab4ee3253e56ae3f49689505750bea64c08615fbd6f71"
),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: [.target(name: "SwiftSyntax600")]
        ),
        .binaryTarget(
    name: "SwiftSyntax600",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax600-a9f92e0a288edfe69314090bcea776c710d8bcc7a444f23200921fd671a90b55.xcframework.zip",
    checksum: "a9f92e0a288edfe69314090bcea776c710d8bcc7a444f23200921fd671a90b55"
),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
    name: "SwiftSyntax510",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax510-29a146b9268cf006165e75828cafb4120097d5e0fc3dfeae5383ce5621661a21.xcframework.zip",
    checksum: "29a146b9268cf006165e75828cafb4120097d5e0fc3dfeae5383ce5621661a21"
),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
    name: "SwiftSyntax509",
    url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax509-b8849301ca8a10e84c0061cf7e5dffd0d37b54d1c6f1fe2b44f329693aff4e74.xcframework.zip",
    checksum: "b8849301ca8a10e84c0061cf7e5dffd0d37b54d1c6f1fe2b44f329693aff4e74"
)
    ]
)