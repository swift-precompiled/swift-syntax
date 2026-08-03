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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/_SwiftSyntaxCShims-822996075dcbb8d090f1f0f94a1d3331deb1a5aa4475db54e371b58c5d580acd.xcframework.zip",
            checksum: "822996075dcbb8d090f1f0f94a1d3331deb1a5aa4475db54e371b58c5d580acd"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/_SwiftSyntaxGenericTestSupport-100dbe2309ac73295a2ea84cbbff4abd4b676d59aa58c4a138acaadff070554c.xcframework.zip",
            checksum: "100dbe2309ac73295a2ea84cbbff4abd4b676d59aa58c4a138acaadff070554c"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftBasicFormat-05d3db7cec3ce7b448004a864d5871833ca6cfb1acd59a13c1a63c5048a124d8.xcframework.zip",
            checksum: "05d3db7cec3ce7b448004a864d5871833ca6cfb1acd59a13c1a63c5048a124d8"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftCompilerPlugin-51121d8a9470da599b51b05f97a60e255e6241bd788bb68a263ff8796224c081.xcframework.zip",
            checksum: "51121d8a9470da599b51b05f97a60e255e6241bd788bb68a263ff8796224c081"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftCompilerPluginMessageHandling-12591e4ab97d61aa5236746f3c7d6717b13b91acf6517758ce911d45c483c3ca.xcframework.zip",
            checksum: "12591e4ab97d61aa5236746f3c7d6717b13b91acf6517758ce911d45c483c3ca"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftDiagnostics-db70e92a40c0b8e528475083f015e8feadfd96ded99f61ff9289281f8cbb02cc.xcframework.zip",
            checksum: "db70e92a40c0b8e528475083f015e8feadfd96ded99f61ff9289281f8cbb02cc"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftIDEUtils-d4f0b3e19e97a972499595d60b53febd8d821a1b37745aa7cfc1341fdc33f299.xcframework.zip",
            checksum: "d4f0b3e19e97a972499595d60b53febd8d821a1b37745aa7cfc1341fdc33f299"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftIfConfig-aa26a9fd194382507de311cb246c088e18c462cb15170ff75a421a321a9be97a.xcframework.zip",
            checksum: "aa26a9fd194382507de311cb246c088e18c462cb15170ff75a421a321a9be97a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftWarningControl-6474050db132c6a43ea26bb4fc80ed5792fce949d4156ae47a13678c757b5c65.xcframework.zip",
            checksum: "6474050db132c6a43ea26bb4fc80ed5792fce949d4156ae47a13678c757b5c65"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftLexicalLookup-52f5844eec0707dce95b8059213b58d2dba3ec098783913c5adace21059d9b04.xcframework.zip",
            checksum: "52f5844eec0707dce95b8059213b58d2dba3ec098783913c5adace21059d9b04"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftLibraryPluginProvider-0df654cef9646058df9e42e71a2106810c45866da5837bc071bb498cd4af0217.xcframework.zip",
            checksum: "0df654cef9646058df9e42e71a2106810c45866da5837bc071bb498cd4af0217"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: ["_SwiftLibraryPluginProviderCShims"]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/_SwiftLibraryPluginProviderCShims-ce78ed43df40dbcd2a78a1076aa2faa473970e6182b1e59e00228ac1cf804864.xcframework.zip",
            checksum: "ce78ed43df40dbcd2a78a1076aa2faa473970e6182b1e59e00228ac1cf804864"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax-0e70fc44a2e3474850ad25f8a38d52617c0a600402764b293bfb8fa8f732dc92.xcframework.zip",
            checksum: "0e70fc44a2e3474850ad25f8a38d52617c0a600402764b293bfb8fa8f732dc92"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax509-d1a4f5dae5e3d33abbe8aa2e6adc654c4b6619944aeaff4209a1ffe5746bd97f.xcframework.zip",
            checksum: "d1a4f5dae5e3d33abbe8aa2e6adc654c4b6619944aeaff4209a1ffe5746bd97f"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax510-ca838bbb4181dfe8cebfaf9dbb520e527b12f2e3c43cdd7bf9e16fb774088693.xcframework.zip",
            checksum: "ca838bbb4181dfe8cebfaf9dbb520e527b12f2e3c43cdd7bf9e16fb774088693"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax600-9ada386c38d1c1e4f3326024a0899129ae6ef512ed0e6827731d8400c4b764c8.xcframework.zip",
            checksum: "9ada386c38d1c1e4f3326024a0899129ae6ef512ed0e6827731d8400c4b764c8"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax601-faec311cfe068aee01c76cc012a36be1ad609f1af74dc40c036ac6951a4ad4d3.xcframework.zip",
            checksum: "faec311cfe068aee01c76cc012a36be1ad609f1af74dc40c036ac6951a4ad4d3"
        ),
        .target(
            name: "SwiftSyntax602_Aggregation",
            dependencies: ["SwiftSyntax602"]
        ),
        .binaryTarget(
            name: "SwiftSyntax602",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax602-c184c8560a50a56a33d6ba448248b6a4e97945d490b1a75893188d5c9949e5e1.xcframework.zip",
            checksum: "c184c8560a50a56a33d6ba448248b6a4e97945d490b1a75893188d5c9949e5e1"
        ),
        .target(
            name: "SwiftSyntax603_Aggregation",
            dependencies: ["SwiftSyntax603"]
        ),
        .binaryTarget(
            name: "SwiftSyntax603",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntax603-fac356aae9902addd4371178f718802900d012835b9525b400ca759f2e6457e3.xcframework.zip",
            checksum: "fac356aae9902addd4371178f718802900d012835b9525b400ca759f2e6457e3"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntaxBuilder-66bb20150162aed0e4a559ed2be3cc7abd5365153d3c200aabe1a2cd7a9c4b01.xcframework.zip",
            checksum: "66bb20150162aed0e4a559ed2be3cc7abd5365153d3c200aabe1a2cd7a9c4b01"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntaxMacros-be792477d5f6c7262273a5456b21a6dbaea75948174a93b0d9ae301a47b69c30.xcframework.zip",
            checksum: "be792477d5f6c7262273a5456b21a6dbaea75948174a93b0d9ae301a47b69c30"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntaxMacroExpansion-651fe8c3ca7401ab88034051dba0131962ea1e9e0d2a47a8017a8699de86bbef.xcframework.zip",
            checksum: "651fe8c3ca7401ab88034051dba0131962ea1e9e0d2a47a8017a8699de86bbef"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntaxMacrosTestSupport-82334f734802ab9476fca3d61e62afb6acfe43fcdcc592399b8d5ce73135e476.xcframework.zip",
            checksum: "82334f734802ab9476fca3d61e62afb6acfe43fcdcc592399b8d5ce73135e476"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftSyntaxMacrosGenericTestSupport-b7c098ec84e1fbdce43608d923aac5120d80aae8f5df46ee9c8cd520d1e03e1a.xcframework.zip",
            checksum: "b7c098ec84e1fbdce43608d923aac5120d80aae8f5df46ee9c8cd520d1e03e1a"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftParser-79570ed7f2634c3de3a83495bf1e7149d6e39e1100a6c9aae07d3e1fc01fb9ea.xcframework.zip",
            checksum: "79570ed7f2634c3de3a83495bf1e7149d6e39e1100a6c9aae07d3e1fc01fb9ea"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftParserDiagnostics-168864bd5511cbeaac152c0fd63e43119c499f07e087606f3556ed2eb2da5dad.xcframework.zip",
            checksum: "168864bd5511cbeaac152c0fd63e43119c499f07e087606f3556ed2eb2da5dad"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftOperators-62f4d4c864ee0c6bf24d311bcb082c0e71c726efef88c8f8a4acb6999fd1d45b.xcframework.zip",
            checksum: "62f4d4c864ee0c6bf24d311bcb082c0e71c726efef88c8f8a4acb6999fd1d45b"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/603.0.2-precompiled.3/SwiftRefactor-fb0818733a887d02154b84d049b8f1e25a2b87cfad37fa1bb0ef6eff1c34067b.xcframework.zip",
            checksum: "fb0818733a887d02154b84d049b8f1e25a2b87cfad37fa1bb0ef6eff1c34067b"
        )
    ]
)