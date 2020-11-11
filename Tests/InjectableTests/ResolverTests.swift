//
//  ResolverTests.swift
//  
//
//  Created by Maxime Maheo on 11/11/2020.
//

import XCTest
@testable import Injectable

final class ResolverTests: XCTestCase {
    
    // MARK: - Properties
    
    static var allTests = [
        ("testRegister", testRegister),
    ]
    
    private let sut = Resolver.shared
    
    // MARK: - Methods
    
    func testRegister() {
        sut.register(InjectableMock())
        
        let mock: InjectableMock = sut.resolve()
        XCTAssertNotNil(mock)
    }
}
