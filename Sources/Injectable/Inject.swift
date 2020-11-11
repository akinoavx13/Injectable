//
//  Inject.swift
//  
//
//  Created by Maxime Maheo on 11/11/2020.
//

@propertyWrapper
public struct Inject<T: Injectable> {
    
    // MARK: - Properties
    
    public let wrappedValue: T
    
    // MARK: - Lifecycle
    
    public init() {
        wrappedValue = Resolver.shared.resolve()
    }
}
