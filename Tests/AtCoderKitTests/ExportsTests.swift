import AtCoderKit
import XCTest

final class ExportsTests: XCTestCase {
  func testExports() {
    let readInteger: () -> Int = { Int.stdin }
    _ = readInteger
    let set = RedBlackTreeSet<Int>([3, 1, 2])
    XCTAssertEqual(Array(set), [1, 2, 3])
    let deque: Deque<Int> = [1, 2, 3]
    XCTAssertEqual(Array(deque), [1, 2, 3])
    XCTAssertEqual(Array([1, 2, 3].adjacentPairs()).count, 2)
    XCTAssertEqual(Complex<Double>(1, 2).real, 1)
    XCTAssertEqual(BigInt(2) + BigInt(3), BigInt(5))
    var dsu = DSU(3)
    _ = dsu.merge(0, 1)
    XCTAssertTrue(dsu.same(0, 1))
    XCTAssertEqual(BigInt(2) + BigInt(3), BigInt(5))
  }
}
