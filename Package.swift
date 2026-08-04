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
            dependencies: ["_SwiftSyntaxCShims"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxCShims-d63cc642a9dd5dbffb43447aeda0a5477a0213f7981bd772751a9a29f1511822.xcframework.zip",
            checksum: "d63cc642a9dd5dbffb43447aeda0a5477a0213f7981bd772751a9a29f1511822"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/_SwiftSyntaxGenericTestSupport-58b90dc83d0168c36aff626697cc7d7b0d708f27971f4a0fef562d10e961ab8b.xcframework.zip",
            checksum: "58b90dc83d0168c36aff626697cc7d7b0d708f27971f4a0fef562d10e961ab8b"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftBasicFormat-de55c51fa1f3c881da4c9d34df1deb175268af2f28df32b5474b211e09feed68.xcframework.zip",
            checksum: "de55c51fa1f3c881da4c9d34df1deb175268af2f28df32b5474b211e09feed68"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: [
                "SwiftCompilerPlugin",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "SwiftSyntaxMacros_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPlugin-60cb6da90ca73decede14570d7a8cc7fa07814aed5baf28ba06fda30f36e1e97.xcframework.zip",
            checksum: "60cb6da90ca73decede14570d7a8cc7fa07814aed5baf28ba06fda30f36e1e97"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftCompilerPluginMessageHandling",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftCompilerPluginMessageHandling-c4295c543a33a3ab79fb363b9e1346eeeed61b46f65c07cc9863d4f28477232a.xcframework.zip",
            checksum: "c4295c543a33a3ab79fb363b9e1346eeeed61b46f65c07cc9863d4f28477232a"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftDiagnostics-cfd3ef60d44d8de96e5ff61b9048a989e3e9760c9ebf605b6868a7d8ae789973.xcframework.zip",
            checksum: "cfd3ef60d44d8de96e5ff61b9048a989e3e9760c9ebf605b6868a7d8ae789973"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [
                "SwiftIDEUtils",
                "SwiftSyntax_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIDEUtils-da94396cd927fde0ae2c827294b6b1e09bed9d2c2bef816a94b63ba5163b3feb.xcframework.zip",
            checksum: "da94396cd927fde0ae2c827294b6b1e09bed9d2c2bef816a94b63ba5163b3feb"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftIfConfig",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftIfConfig-16a3c6e7a6ddfe4242d7f41a849c68b1ad7fc0073a59e654969e2fbfd7c5b854.xcframework.zip",
            checksum: "16a3c6e7a6ddfe4242d7f41a849c68b1ad7fc0073a59e654969e2fbfd7c5b854"
        ),
        .target(
            name: "SwiftWarningControl_Aggregation",
            dependencies: [
                "SwiftWarningControl",
                "SwiftSyntax_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftWarningControl",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftWarningControl-ffacf104cbcc9941b0e2497a605b01aa2ca891067142b3e237635764d2eda529.xcframework.zip",
            checksum: "ffacf104cbcc9941b0e2497a605b01aa2ca891067142b3e237635764d2eda529"
        ),
        .target(
            name: "SwiftLexicalLookup_Aggregation",
            dependencies: [
                "SwiftLexicalLookup",
                "SwiftSyntax_Aggregation",
                "SwiftIfConfig_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLexicalLookup",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLexicalLookup-445392bc260729d2acc3271b424fb90d6a66b23e9d2fde1b3209bf380a69053d.xcframework.zip",
            checksum: "445392bc260729d2acc3271b424fb90d6a66b23e9d2fde1b3209bf380a69053d"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: [
                "SwiftLibraryPluginProvider",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftLibraryPluginProviderCShims_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftLibraryPluginProvider-a84cf074f63f877d813c83072763267141c37121361d72f6d8a6c248ee871fac.xcframework.zip",
            checksum: "a84cf074f63f877d813c83072763267141c37121361d72f6d8a6c248ee871fac"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: ["_SwiftLibraryPluginProviderCShims"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax-ee2173b1706301537e93fdd08629fdbcc881f51e77249e06a86eb4171f47e447.xcframework.zip",
            checksum: "ee2173b1706301537e93fdd08629fdbcc881f51e77249e06a86eb4171f47e447"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax509-7ab12606a13c250730430127511a77711a93cd430bb8b8c8512e01a81a7e133a.xcframework.zip",
            checksum: "7ab12606a13c250730430127511a77711a93cd430bb8b8c8512e01a81a7e133a"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax510-cef54cd38861b1141199d8e06b2376d4d73afd93de668f5451b7330d51177c78.xcframework.zip",
            checksum: "cef54cd38861b1141199d8e06b2376d4d73afd93de668f5451b7330d51177c78"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax600-1342e3b9ee913ce6af245b7bf9752af153d4c72888ff3cafd9dfbfcf3d87a8c3.xcframework.zip",
            checksum: "1342e3b9ee913ce6af245b7bf9752af153d4c72888ff3cafd9dfbfcf3d87a8c3"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax601-e9cca5be091fb98c4ba07a5999f64a2c6c49353dad41de0a31c5557091c14b2a.xcframework.zip",
            checksum: "e9cca5be091fb98c4ba07a5999f64a2c6c49353dad41de0a31c5557091c14b2a"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax602-671c8ce4258b51c0ff7444289199fef0cbace9e09027797ff84b8d35c7bb01c4.xcframework.zip",
            checksum: "671c8ce4258b51c0ff7444289199fef0cbace9e09027797ff84b8d35c7bb01c4"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntax603-e704af7d9ed090d3b0a835209edce2333c09b8de3ac8e2e859c2bdeeb598bb5a.xcframework.zip",
            checksum: "e704af7d9ed090d3b0a835209edce2333c09b8de3ac8e2e859c2bdeeb598bb5a"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxBuilder-06d9a5bd244248962302c6c59ee6d751d40a2ef5bf167abad93e4030ba4c55ad.xcframework.zip",
            checksum: "06d9a5bd244248962302c6c59ee6d751d40a2ef5bf167abad93e4030ba4c55ad"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacros-7fa29e8bd08afd320dcd8fa710145ee4e10a5daae81edd0e33cc638ce2e9b2df.xcframework.zip",
            checksum: "7fa29e8bd08afd320dcd8fa710145ee4e10a5daae81edd0e33cc638ce2e9b2df"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacroExpansion-66016fc3b18d63bed94d310c0cc6ac964e83c6563fd2692a3e63683910eea264.xcframework.zip",
            checksum: "66016fc3b18d63bed94d310c0cc6ac964e83c6563fd2692a3e63683910eea264"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: [
                "SwiftSyntaxMacrosTestSupport",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacrosGenericTestSupport_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosTestSupport-cf87c12f075799847dcd7ed45faf197f865e4d5d35c6bffab032128c8775451e.xcframework.zip",
            checksum: "cf87c12f075799847dcd7ed45faf197f865e4d5d35c6bffab032128c8775451e"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftSyntaxMacrosGenericTestSupport-507af4862f4f03f8719b35aae2374eaf4f62e0122158d6155819d4ecb0cfa5f4.xcframework.zip",
            checksum: "507af4862f4f03f8719b35aae2374eaf4f62e0122158d6155819d4ecb0cfa5f4"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParser-b057ffe102245bc4c088b10c47dc0b2ac03043c40dac1045b558ab37716d2a7f.xcframework.zip",
            checksum: "b057ffe102245bc4c088b10c47dc0b2ac03043c40dac1045b558ab37716d2a7f"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: [
                "SwiftParserDiagnostics",
                "SwiftBasicFormat_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftParserDiagnostics-f00749a17e4b5825fd26d0ddc52323957c0a46d529dd7fb45696ef4c158d33c1.xcframework.zip",
            checksum: "f00749a17e4b5825fd26d0ddc52323957c0a46d529dd7fb45696ef4c158d33c1"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: [
                "SwiftOperators",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftOperators-9f8996131d1f562058c8c27a55ed59d95af4fe8c9a178841eef211dda3ce46a6.xcframework.zip",
            checksum: "9f8996131d1f562058c8c27a55ed59d95af4fe8c9a178841eef211dda3ce46a6"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: [
                "SwiftRefactor",
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2/SwiftRefactor-1999faa44a76d08ec545f1a401638b2c1a27c3c11d8b9a230b14d81e389625a9.xcframework.zip",
            checksum: "1999faa44a76d08ec545f1a401638b2c1a27c3c11d8b9a230b14d81e389625a9"
        )
    ]
)