# Injectable
Lightweight dependency injection framework

## How to inject

Your class or struct has to be Injectable

```swift

import Injectable

class ClassToInject: Injectable { }

```

Create a `DependencyManager` to register your class.

```swift
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

struct MyStruct {

    @Inject private var classToInject: ClassToInject

}
```
