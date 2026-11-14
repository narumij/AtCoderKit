import AtCoderKit
import TestingUtil
import XCTest

final class ConversionReaderTests: XCTestCase {

  func testModint() throws {
    try SolverRunner(solver: {
      XCTAssertEqual(modint998244353.stdin, 0)
      XCTAssertEqual(modint998244353.stdin, 3)
      XCTAssertEqual(modint998244353.stdin.val, modint998244353.mod - 1)
      XCTAssertEqual(modint998244353.stdin.val, modint998244353.mod - 1)
      XCTAssertEqual(modint998244353.stdin.val, 0)
    })
    .inputOnly(
      """
      0
      3
      -1
      \(modint998244353.mod - 1)
      \(modint998244353.mod)
      """)
  }

  func testModintColumnsAndRows() throws {
    try SolverRunner(solver: {
      let A: [modint998244353] = .stdin(columns: 3)
      let B: [[modint998244353]] = .stdin(rows: 2, columns: 2)
      XCTAssertEqual(A, [1, 2, 3])
      XCTAssertEqual(B, [[4, 5], [6, 7]])
    })
    .inputOnly("1 2 3\n4 5\n6 7")
  }
}
