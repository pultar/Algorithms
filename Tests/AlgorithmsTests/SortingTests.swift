import XCTest
@testable import Algorithms

final class AlgorithmsTests: XCTestCase {
    
    func testInsertionSort() throws {
        var a = [1, 3, 4, 6]
        var b = [8, 1, -1, 5]
        var c = ["Felix", "Valérie", "Liselotte"]
        var d = [Int]()
        var e = [1]
        InsertionSort.sort(&a)
        InsertionSort.sort(&b)
        InsertionSort.sort(&c)
        InsertionSort.sort(&d)
        InsertionSort.sort(&e)
        XCTAssertTrue(isSorted(a))
        XCTAssertTrue(isSorted(b))
        XCTAssertTrue(isSorted(c))
        XCTAssertTrue(isSorted(d))
        XCTAssertTrue(isSorted(e))
    }
    
    func testIsSorted() throws {
        let a = [1, 2, 3]
        let b = [3, 1, 2]
        let c = [1]
        let d = [Int]()
        XCTAssertTrue(isSorted(a))
        XCTAssertFalse(isSorted(b))
        XCTAssertTrue(isSorted(c))
        XCTAssertTrue(isSorted(d))
    }
    
}
