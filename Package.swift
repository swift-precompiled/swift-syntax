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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143599.zip",
            checksum: "69cbe1dc9a49b9aaa41374786fe2f2b9bdee3d2f4b4c93869c20e2967be9b8e5"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143608.zip",
            checksum: "1cfa1aa021b4a06d13b862026771e73938d18ded3eaa3ca6c45385d0a10b202c"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143610.zip",
            checksum: "0430f8ed9db981ab280bdba31141f7cb7aeb599e66f5dee88f3a9b7a346c2755"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143613.zip",
            checksum: "91a2fe352f3c271e19d9e93be609bec992318c9db9f70c7f9f854c2e56528a85"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [.target(name: "SwiftIDEUtils"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143614.zip",
            checksum: "d942189565fa26b23f5c7437688aa87be0e39fea85a7fd49d2884f4d4d8bc888"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143615.zip",
            checksum: "1444205f7007c737bca7128c656aac2acc0d2e74df9ba4535488dcb6baec365e"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143621.zip",
            checksum: "1611567c77f9e69f47eebbe016eabdbbc505bac997d694e1d029d01274d75674"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143624.zip",
            checksum: "e5b48eea7d2bf38014ae80222eb933e253771b7bd6e8e055ac4fcd94584371dd"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143628.zip",
            checksum: "66e9ce3b8951fb14005e604c3210caec328efbcbc35567aacba7a11fae2e4ea8"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143882.zip",
            checksum: "42f9ed572b0cceb7f9c497ad3b1c0fbd6a715f42e1a69241075b8d93c4d1d353"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143931.zip",
            checksum: "a3f8590d2589059da0c25706a45258743ba93370cb41e4343e6a9abde5e01913"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143932.zip",
            checksum: "6987416aa15af4b2019fac76540968ca7f95a59c523749bf4699e06649ba4d39"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143934.zip",
            checksum: "49d2b88ed3abc6448879c6b122779da8a1a8cc7cf2d584d5e99debe7e1bbb6e7"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143935.zip",
            checksum: "8ad5b5aaf52df9d7a9c9c4460a94cbe982a23d97db4dd7d8df5b62f887e17873"
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
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143937.zip",
            checksum: "b9a3f64f46d920b4a28e64476b9c6750506cbcf94bf3546101bbab84c24f0955"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143939.zip",
            checksum: "7c40ccc0409a40ae68d72c2620fdb3a88e59bbe3d99b2b50fa6e58295d797e48"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://api.github.com/repos/swift-precompiled/swift-syntax/releases/assets/213143940.zip",
            checksum: "5b0dc88d4e7c580b08515987b8e4a8f1404c71776128b27b6e4160bd769bab1b"
        )
    ]
)