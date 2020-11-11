# Injectable
Lightweight dependency injection framework

## Installation

Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding Injectable as a dependency is as easy as adding it to the dependencies value of your Package.swift.

dependencies: [
    .package(url: "https://github.com/mmaheo/Injectable.git", .upToNextMajor(from: "1.0.0"))
]

## How to inject

Your class or struct has to be Injectable

```swift

import Injectable

class ClassToInject: Injectable { }

```

Create a `DependencyManager` to register your class.

```swift

import Injectable

final class DependencyManager {
    
    // MARK: - Properties
    
    private let classToInject: ClassToInject
    
    // MARK: - Lifecycle
    
    init() {
        self.classToInject = ClassToInject()
        registerDependencies()
    }
    
    // MARK: - Methods
    
    private func registerDependencies() {
        let resolver = Resolver.shared
        
        resolver.register(classToInject)
    }
}
```

Then, create the `DependencyManager` in  the entry point of your app

```swift
private let dependencyManager = DependencyManager()
```

## Resolve your dependency

Use `@Inject` property wrapper to inject your dependency in your class or struct

```swift

import Injectable

struct MyStruct {

    @Inject private var classToInject: ClassToInject

}
```
