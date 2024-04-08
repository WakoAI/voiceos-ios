# VoiceOS iOS SDK

This package lets you build using VoiceOS

## Installation

### Swift Package Manager

In Xcode, go to File -> Add Packages... and enter the following URL in 'Search or Enter Package URL' textbox in the top right corner of that window: https://github.com/WakoAi/voiceos-ios

Pick the desired dependency rule (under “Dependency Rule”), as well as build target (under “Add to Project”) and click “Add Package”.

### In Package.swift

To depend on the VoiceOS package, you can declare your dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/WakoAi/voiceos-ios"),
```

and add `"VoiceOS"` to your application/library target, `dependencies`, e.g. like this:

```swift
.target(name: "YouriOSApp", dependencies: [
    .product(name: "VoiceOS", package: "ios")
],
```

## License


```
MIT License

Copyright (c) 2024 WakoAI Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```