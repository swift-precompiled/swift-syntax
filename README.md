# swift-syntax
---

1. Add `https://github.com/swift-precompiled/swift-syntax.git` with the branch set to `release/6.1`

### Troubleshooting

The general fix that works:
1. **Product** → **Clean Build Folder**
2. **Packages** → **Reset Package Caches** (this may still error out, but do it nonetheless)
3. Quit and re-open Xcode
4. **Packages** → **Update to Latest Package Versions**


If your project is already using swift-syntax or has a dependency that depends on `swiftlang/swift-syntax`, you may see warnings such as:

```
Showing All Issues
'foo' dependency on 'https://github.com/apple/swift-syntax.git' conflicts with dependency on 'https://github.com/swift-precompiled/swift-syntax' which has the same identity 'swift-syntax'. this will be escalated to an error in future versions of SwiftPM.
```

These warnings are technically correct. We think there are two ways to solve this:
1. Fork all your package dependencies and update `swiftlang/swift-syntax` to `swift-precompiled/swift-syntax`
2. Create a local workspace and add a local clone of this repo to the workspace tree. 
