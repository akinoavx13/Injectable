//
//  Resolver.swift
//  
//
//  Created by Maxime Maheo on 11/11/2020.
//

public final class Resolver {
 
    // MARK: - Properties
    
    public static let shared = Resolver()
    
    private var storage = [Int: Injectable]()
    
    // MARK: - Lifecycle
    
    private init() { }
    
    // MARK: - Methods
    
    public func register<T: Injectable>(_ injectable: T) {
        let key = ObjectIdentifier(type(of: injectable)).hashValue
        
        storage[key] = injectable
    }

    func resolve<T: Injectable>() -> T {
        let key = ObjectIdentifier(T.self).hashValue
        
        guard let injectable = storage[key] as? T else {
            fatalError("\(key) has not been added as an injectable object.")
        }
        
        return injectable
    }

}
