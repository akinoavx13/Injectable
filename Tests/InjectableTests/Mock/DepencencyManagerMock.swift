//
//  DepencencyManagerMock.swift
//  
//
//  Created by Maxime Maheo on 11/11/2020.
//

import Injectable

final class DepencencyManagerMock {
    
    // MARK: - Properties
    
    private let injectableMock: InjectableMock
    
    // MARK: - Lifecycle
    
    init() {
        self.injectableMock = InjectableMock()
        addDependencies()
    }
    
    // MARK: - Methods
    
    private func addDependencies() {
        let resolver = Resolver.shared
        
        resolver.register(injectableMock)
    }
}

