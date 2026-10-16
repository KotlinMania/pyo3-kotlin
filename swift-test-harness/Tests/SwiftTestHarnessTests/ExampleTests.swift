#if canImport(Testing)
import Testing
import Pyo3

@Suite("Pyo3 Swift Export Tests")
struct Pyo3ExportTests {
    @Test("Pyo3 swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Pyo3 swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Pyo3

final class Pyo3ExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Pyo3 swift module imported cleanly")
    }
}
#endif
