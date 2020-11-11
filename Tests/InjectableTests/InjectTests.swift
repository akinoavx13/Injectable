//
//  InjectTests.swift
//  
//
//  Created by Maxime Maheo on 11/11/2020.
//

import XCTest
@testable import Injectable

final class InjectTests: XCTestCase {
    
    // MARK: - Properties
    
    static var allTests = [
        ("testInject", testInject),
    ]
    
    private let depencencyManagerMock = DepencencyManagerMock()
    
    @Inject private var injectableMock: InjectableMock
    
    // MARK: - Methods
    
    func testInject() {
        XCTAssertNotNil(injectableMock)
    }
}
