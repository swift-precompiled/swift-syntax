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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/_SwiftSyntaxCShims-324e77126d0ab20ee3a285d890d1698c9b72bb6a938225f39ba0df313f956396.xcframework.zip",
            checksum: "324e77126d0ab20ee3a285d890d1698c9b72bb6a938225f39ba0df313f956396"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: ["_SwiftSyntaxGenericTestSupport"]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/_SwiftSyntaxGenericTestSupport-63de45c83c8d497477c457921e746881eef7f54b6808c6b9d2992c79717d9b3c.xcframework.zip",
            checksum: "63de45c83c8d497477c457921e746881eef7f54b6808c6b9d2992c79717d9b3c"
        ),
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: ["SwiftBasicFormat", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftBasicFormat-3792644538938717628f75f8178ae61e3bc84a447fb54d8d0d9a50bc5e8efe44.xcframework.zip",
            checksum: "3792644538938717628f75f8178ae61e3bc84a447fb54d8d0d9a50bc5e8efe44"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftCompilerPlugin-15b7d49da1ddfa7c0dfeddfa422d9ac32c496aac3ebe64eedc8a16179061b432.xcframework.zip",
            checksum: "15b7d49da1ddfa7c0dfeddfa422d9ac32c496aac3ebe64eedc8a16179061b432"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftCompilerPluginMessageHandling-78713cbd8099f0c2f2a9c5df4bf1a3bcb3770a100302fe5edc02427cd829a83e.xcframework.zip",
            checksum: "78713cbd8099f0c2f2a9c5df4bf1a3bcb3770a100302fe5edc02427cd829a83e"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: ["SwiftDiagnostics", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftDiagnostics-f4768c9b0f13528f4dc59c00e11807eb7096e6980a97a7add23f28581da8cad7.xcframework.zip",
            checksum: "f4768c9b0f13528f4dc59c00e11807eb7096e6980a97a7add23f28581da8cad7"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftIDEUtils-83b33ae3392185f0c4bb4b600853eacd5769272aa556bc5679e390af04fe6d83.xcframework.zip",
            checksum: "83b33ae3392185f0c4bb4b600853eacd5769272aa556bc5679e390af04fe6d83"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftIfConfig-431568ddaef280a8d956cb521595105614a30c44c2b5aed0e92fdfc60219b789.xcframework.zip",
            checksum: "431568ddaef280a8d956cb521595105614a30c44c2b5aed0e92fdfc60219b789"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftLexicalLookup-cb420be0f115c057e2acf9069d35e175976c8dc950e6cc5832df0db7e6307fdf.xcframework.zip",
            checksum: "cb420be0f115c057e2acf9069d35e175976c8dc950e6cc5832df0db7e6307fdf"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftLibraryPluginProvider-7f05bbc0aff19236bb3f1673c61016f36ae5b6ecb0d388beab0e7b104bc4b43e.xcframework.zip",
            checksum: "7f05bbc0aff19236bb3f1673c61016f36ae5b6ecb0d388beab0e7b104bc4b43e"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims",
            dependencies: ["_SwiftLibraryPluginProviderCShims_PrecompiledArchive"],
            path: "Sources/_SwiftLibraryPluginProviderCShims",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/_SwiftLibraryPluginProviderCShims-1bc02d4caa58807981d34e76bc10c474cc191e8e356d38dd223732ce781be6e2.xcframework.zip",
            checksum: "1bc02d4caa58807981d34e76bc10c474cc191e8e356d38dd223732ce781be6e2"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax-6bdf77a0f4d0ad319958602d39d362e39db4ba19c2496c555546884de97036c6.xcframework.zip",
            checksum: "6bdf77a0f4d0ad319958602d39d362e39db4ba19c2496c555546884de97036c6"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: ["SwiftSyntax509"]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax509-03f38b29b85edc3db492877fa9958db2b27fbff9153e243b57b95b2da586dc4e.xcframework.zip",
            checksum: "03f38b29b85edc3db492877fa9958db2b27fbff9153e243b57b95b2da586dc4e"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: ["SwiftSyntax510"]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax510-5798c9fa47dba8d294bd8f02ea48a2cfabb64d35645e614d9e90215262670d46.xcframework.zip",
            checksum: "5798c9fa47dba8d294bd8f02ea48a2cfabb64d35645e614d9e90215262670d46"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: ["SwiftSyntax600"]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax600-636008a82046cba47a3962226ac923c42af34e47f27e4b418c80190d0e63daae.xcframework.zip",
            checksum: "636008a82046cba47a3962226ac923c42af34e47f27e4b418c80190d0e63daae"
        ),
        .target(
            name: "SwiftSyntax601_Aggregation",
            dependencies: ["SwiftSyntax601"]
        ),
        .binaryTarget(
            name: "SwiftSyntax601",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntax601-1e6e35c6f5db8e4a3f97281d527714e859da8eaf4f6c511542233a3072bdf095.xcframework.zip",
            checksum: "1e6e35c6f5db8e4a3f97281d527714e859da8eaf4f6c511542233a3072bdf095"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxBuilder-05acf9b32932f995e8ddf7a1646e466752b679b6b5f213083b5ee85a9a8c3f6a.xcframework.zip",
            checksum: "05acf9b32932f995e8ddf7a1646e466752b679b6b5f213083b5ee85a9a8c3f6a"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacros-97b4e1aff9fa465834b2b5c97342633df838c073de8d4269a7dad163fefe5843.xcframework.zip",
            checksum: "97b4e1aff9fa465834b2b5c97342633df838c073de8d4269a7dad163fefe5843"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacroExpansion-41f4ff72d0085382ea1ce0f73ebba956f718ce1cb17d0309f2d83dc7d112a267.xcframework.zip",
            checksum: "41f4ff72d0085382ea1ce0f73ebba956f718ce1cb17d0309f2d83dc7d112a267"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacrosTestSupport-1fc2401a3e615d209491a5fd7f6818c805443ec3d6f94f827baf3942a0cf25e3.xcframework.zip",
            checksum: "1fc2401a3e615d209491a5fd7f6818c805443ec3d6f94f827baf3942a0cf25e3"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftSyntaxMacrosGenericTestSupport-ccd4ee19e9c8c6bd612c950a97084d0896ff138c4d2d72ced0406f976ae54af0.xcframework.zip",
            checksum: "ccd4ee19e9c8c6bd612c950a97084d0896ff138c4d2d72ced0406f976ae54af0"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: ["SwiftParser", "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftParser-65babf00b7b128adb84a17b25d25c8ffee1d6b3d3054a2ca83aa738491cf0ba6.xcframework.zip",
            checksum: "65babf00b7b128adb84a17b25d25c8ffee1d6b3d3054a2ca83aa738491cf0ba6"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftParserDiagnostics-a28f413d904f662b5948354149181699d058aba03214d323a4551287142c0bac.xcframework.zip",
            checksum: "a28f413d904f662b5948354149181699d058aba03214d323a4551287142c0bac"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftOperators-b05169c71f75cf70e343ba31c0c5ae03788c1f1facd4be1c30bfa69300c033ff.xcframework.zip",
            checksum: "b05169c71f75cf70e343ba31c0c5ae03788c1f1facd4be1c30bfa69300c033ff"
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
            url: "https://github.com/swift-precompiled/swift-syntax/releases/download/601.0.1/SwiftRefactor-fa85a929db366c364c3e0c27d135f46f287a367f909c966d4cdbd4452d672160.xcframework.zip",
            checksum: "fa85a929db366c364c3e0c27d135f46f287a367f909c966d4cdbd4452d672160"
        )
    ]
)