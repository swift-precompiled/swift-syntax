<a id="readme-top"></a>

**Tested with Xcode 16.3**

Precompiled SwiftSyntax
========================

A precompiled distribution of `swiftlang/swift-syntax` that allows you to completely eliminate having to build SwiftSyntax from source.

Getting Started
---------------

Add the package dependency to your `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/swift-precompiled/swift-syntax.git",
        branch: "release/6.1"
    )
]
```

That’s it — build & run; **SwiftSyntax** will not be rebuilt locally.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Troubleshooting
---------------

If Xcode throws build or symbol errors, run this clean-slate sequence:

1. **Product ▸ Clean Build Folder** (⇧⌘K)  
2. **File ▸ Packages ▸ Reset Package Caches** (ignore any errors)  
3. Quit and relaunch Xcode  
4. **File ▸ Packages ▸ Update to Latest Package Versions**

### Conflicting `swift-syntax` dependencies

When another package depends on `apple/swift-syntax`, SwiftPM will warn:

```text
'foo' dependency on 'https://github.com/apple/swift-syntax.git' conflicts with
dependency on 'https://github.com/swift-precompiled/swift-syntax'
which has the same identity 'swift-syntax'. This will be escalated to an error
in future versions of SwiftPM.
```

| Option | How |
| ------ | --- |
| **Fork & patch** | Fork each affected package and change its `swiftlang/swift-syntax` reference to `swift-precompiled/swift-syntax`. |
| **Workspace override** | Create an Xcode workspace, clone **this repo** locally, and add it to the workspace. SwiftPM will prefer the local copy. |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Why a pre-compiled `swift-syntax`?
----------------------------------

Swift macros rely on **SwiftSyntax** to parse and expand your source. Pulling the full package and recompiling it *every* clean build for *every* architecture costs a lot of time:

| Scenario | Extra build time |
| -------- | ---------------- |
| Local *Debug* clean build | **≈ 20 s** |
| Local *Release* (WMO) | **≥ 4 min** |
| Xcode Cloud / CI | **Up to 12 min** |

Nearly all that time is spent type-checking and compiling SwiftSyntax itself, not running your macros.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Further Reading
---------------

- Swift Forums — *Compilation extremely slow since macros adoption*  
  <https://forums.swift.org/t/compilation-extremely-slow-since-macros-adoption/67921>
- Swift Forums — *Macro adoption concerns around SwiftSyntax*  
  <https://forums.swift.org/t/macro-adoption-concerns-around-swiftsyntax/66588>
- GitHub — *Distribute a pre-built SwiftSyntax binary*  
  <https://github.com/swiftlang/swift-syntax/issues/2421>
- Michael Tsai — *Slow Swift Macro Compilation*  
  <https://mjtsai.com/blog/2024/02/27/slow-swift-macro-compilation/>
- Tuist — *Swift Macros at Scale*  
  <https://tuist.io/blog/2024/08/26/swift-macros>
- Medium — *Speed Up SwiftSyntaxMacros Package Compilation (Part 1)*  
  <https://medium.com/@ruslan_alikhamov/speed-up-swift-swiftsyntaxmacros-package-compilation-part-1-f687ab5607d5>
- Medium — *Speed Up SwiftSyntaxMacros Package Compilation (Part 2)*  
  <https://medium.com/itnext/speed-up-swift-faster-swiftsyntaxmacros-package-compilation-part-2-d5d6bdccfc21>
- [`InstantSyntax`](https://github.com/johnno1962/InstantSyntax)   
- [`swift-syntax-xcframeworks`](https://github.com/sjavora/swift-syntax-xcframeworks)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

Acknowledgements
----------------

Led by [@vatsal_manot](https://github.com/vatsal_manot).

**Special thanks** to  
- [@johnno1962](https://github.com/johnno1962),  
- [@yume190](https://github.com/yume190)  
- [@giginet](https://github.com/giginet)  

A part of [@PreternaturalAI](https://github.com/PreternaturalAI)’s ongoing work.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
