import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ResolverTests.allTests),
        testCase(InjectTests.allTests),
    ]
}
#endif
