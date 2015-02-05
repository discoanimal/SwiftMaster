# ExSwift

Set of Swift extensions for standard types and classes.

# Installation

Because of Xcode errors it's not possible to integrate this project with Cocoapods or as Embedded Framework.
[Read more at Dev Forum](https://devforums.apple.com/message/983747#983747)  

## Use submodule and copy source code
1. Add ExSwift as a submodule
2. Open the `ExSwift` project folder, and drag `ExSwift` sub folder with source code into the file navigator of your Xcode project. Make sure you select add to target
3. Use it

``` swift
components.takeFirst() { $0.completed }
```