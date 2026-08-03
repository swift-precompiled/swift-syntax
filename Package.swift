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
            name: "_SwiftSyntaxCShims",
            dependencies: ["_SwiftSyntaxCShims_PrecompiledArchive"],
            path: "Sources/_SwiftSyntaxCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/_SwiftSyntaxCShims-299e1d2a5c116a90980add3eedec9c182831205ae978eb157d9188bcec9b79fa.xcframework.zip",
            checksum: "299e1d2a5c116a90980add3eedec9c182831205ae978eb157d9188bcec9b79fa"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/_SwiftSyntaxGenericTestSupport-b12cbdb653959b0c08b71800fc2362af1e702dba3124022acb0eb17a1e623f9a.xcframework.zip",
            checksum: "b12cbdb653959b0c08b71800fc2362af1e702dba3124022acb0eb17a1e623f9a"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftBasicFormat-7e9d07ececf3dbb6ff79b49b8c0cdd8ce01c52ed5ab66b05431b81ca871eab8b.xcframework.zip",
            checksum: "7e9d07ececf3dbb6ff79b49b8c0cdd8ce01c52ed5ab66b05431b81ca871eab8b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftCompilerPlugin-f7803078961578a90576f8af0b6b15e7c0870ec05bbc272170a6aa272096fa97.xcframework.zip",
            checksum: "f7803078961578a90576f8af0b6b15e7c0870ec05bbc272170a6aa272096fa97"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftCompilerPluginMessageHandling-ce176cc093b0eadf94f54df49c062baa8defed5cdb9eaa9e1b3f629ef0a31cc7.xcframework.zip",
            checksum: "ce176cc093b0eadf94f54df49c062baa8defed5cdb9eaa9e1b3f629ef0a31cc7"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftDiagnostics-031513585aa1ff9824b667bfec570eca3df0a6961bc1fedbaaf5ae65f6edb602.xcframework.zip",
            checksum: "031513585aa1ff9824b667bfec570eca3df0a6961bc1fedbaaf5ae65f6edb602"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftIDEUtils-0f3f3d94626a4fc8bf7dd43d815c9086c3d2b571778cd3d3a1bc3d88dfc87b6b.xcframework.zip",
            checksum: "0f3f3d94626a4fc8bf7dd43d815c9086c3d2b571778cd3d3a1bc3d88dfc87b6b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftIfConfig-18c2a813da6be656a1b10dd22fa0c7be435d6262946e215e319c3fa378a6686f.xcframework.zip",
            checksum: "18c2a813da6be656a1b10dd22fa0c7be435d6262946e215e319c3fa378a6686f"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftWarningControl-dc91155cd36f7705781521936000929478f918df98bb0623865505e6998a016a.xcframework.zip",
            checksum: "dc91155cd36f7705781521936000929478f918df98bb0623865505e6998a016a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftLexicalLookup-da2061bb4c238491e5bdc8a44aa8faae2d591324681b1c0f04f0fa31a85e2819.xcframework.zip",
            checksum: "da2061bb4c238491e5bdc8a44aa8faae2d591324681b1c0f04f0fa31a85e2819"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftLibraryPluginProvider-617e54f0c8ed8bf228d050bde5c16588f66ca204c8bb31553cdb1f17a95d0c2c.xcframework.zip",
            checksum: "617e54f0c8ed8bf228d050bde5c16588f66ca204c8bb31553cdb1f17a95d0c2c"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/_SwiftLibraryPluginProviderCShims-bd1b5c97fe8c6fa6057de9cbe18fd8acf32f04d9d11fa985dd70ae5a9d9fb47b.xcframework.zip",
            checksum: "bd1b5c97fe8c6fa6057de9cbe18fd8acf32f04d9d11fa985dd70ae5a9d9fb47b"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                "SwiftSyntax",
                "_SwiftSyntaxCShims",
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax-ab4df717fa28f7761589f0a75530a8f3318fff7b6d1c0f2752b3617f38859f69.xcframework.zip",
            checksum: "ab4df717fa28f7761589f0a75530a8f3318fff7b6d1c0f2752b3617f38859f69"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax509-59e5f209b41a0edc4c5b92c238fd35244ab8cd771d4e439ba9327562ca8e0b25.xcframework.zip",
            checksum: "59e5f209b41a0edc4c5b92c238fd35244ab8cd771d4e439ba9327562ca8e0b25"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax510-a62b6cd58c6b436bfda1241b3e74a7c6ed2947e01b140c0fd90e58b12e8f9534.xcframework.zip",
            checksum: "a62b6cd58c6b436bfda1241b3e74a7c6ed2947e01b140c0fd90e58b12e8f9534"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax600-2a3471c38d9705243b870a33ac1f8bedc93844485cef062b25c852fa7e7fc5e8.xcframework.zip",
            checksum: "2a3471c38d9705243b870a33ac1f8bedc93844485cef062b25c852fa7e7fc5e8"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax601-98ffb6987b6bcd23a80b0db90bd2ed930f10a9e121e326ac719ae215d6b4165c.xcframework.zip",
            checksum: "98ffb6987b6bcd23a80b0db90bd2ed930f10a9e121e326ac719ae215d6b4165c"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax602-a9afec6b6f697ea9ad1b7e0afef23abb2e295362d1fc1907d42c9204333ddcad.xcframework.zip",
            checksum: "a9afec6b6f697ea9ad1b7e0afef23abb2e295362d1fc1907d42c9204333ddcad"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntax603-2b39ed37aa0076dfbb0c0731e35aabf917f5f1220eb5c516b5b2d9cd737792cf.xcframework.zip",
            checksum: "2b39ed37aa0076dfbb0c0731e35aabf917f5f1220eb5c516b5b2d9cd737792cf"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntaxBuilder-c7042c5f5a271d4e5d67bf26880ce15b960f60d8a9d017de6fc4b20908f04ad6.xcframework.zip",
            checksum: "c7042c5f5a271d4e5d67bf26880ce15b960f60d8a9d017de6fc4b20908f04ad6"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntaxMacros-fc1648de0770b0b33b1435fe85ce189294779298e4c4ba139f6d1ece8fc8aecd.xcframework.zip",
            checksum: "fc1648de0770b0b33b1435fe85ce189294779298e4c4ba139f6d1ece8fc8aecd"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntaxMacroExpansion-fd5f18866d1873e1411940eaeb84e677ab24775412c19e1dfadf74ea7b34bcca.xcframework.zip",
            checksum: "fd5f18866d1873e1411940eaeb84e677ab24775412c19e1dfadf74ea7b34bcca"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntaxMacrosTestSupport-297cb4207651a7dc7a8c15884818f89296dd5247ea9eb18bb89fc22d89a7d5da.xcframework.zip",
            checksum: "297cb4207651a7dc7a8c15884818f89296dd5247ea9eb18bb89fc22d89a7d5da"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftSyntaxMacrosGenericTestSupport-c39b87a212ae329e355834a60ebf8a0e0ae90065da0b0c75ff9c3017c1e3736d.xcframework.zip",
            checksum: "c39b87a212ae329e355834a60ebf8a0e0ae90065da0b0c75ff9c3017c1e3736d"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftParser-8806af9efb9248815dbb92f75273b95c58069083298952d36e5fb060b94043e2.xcframework.zip",
            checksum: "8806af9efb9248815dbb92f75273b95c58069083298952d36e5fb060b94043e2"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftParserDiagnostics-5c570db69219d9e2318980281f6a068d8bfd825b01d6de2d0eb93625cc001b24.xcframework.zip",
            checksum: "5c570db69219d9e2318980281f6a068d8bfd825b01d6de2d0eb93625cc001b24"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftOperators-8183795a196b4e16880fc8a3d254b3ca0fbec396f7d1f08adb567d92a429007c.xcframework.zip",
            checksum: "8183795a196b4e16880fc8a3d254b3ca0fbec396f7d1f08adb567d92a429007c"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.1/SwiftRefactor-456b8a6bb104c9e654b58690c16d37e263daa2f985d51cf1b4defcc9e0512b2c.xcframework.zip",
            checksum: "456b8a6bb104c9e654b58690c16d37e263daa2f985d51cf1b4defcc9e0512b2c"
        )
    ]
)