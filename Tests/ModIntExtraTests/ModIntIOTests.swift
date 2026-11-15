import AtCoder
import IOReader
import ModIntExtra
import TestingUtil
import XCTest

final class ModIntIOTests: XCTestCase {

  func testRead() throws {
    try SolverRunner(solver: {
      XCTAssertEqual(modint998244353.stdin, 3)
      XCTAssertEqual(modint998244353.stdin.val, modint998244353.mod - 1)
      let A: [modint998244353] = .stdin(columns: 3)
      XCTAssertEqual(A, [1, 2, 3])
    })
    .inputOnly("3\n-1\n1 2 3")
  }

  func testReadDynamic() throws {
    modint.set_mod(7)
    try SolverRunner(solver: {
      XCTAssertEqual(modint.stdin.val, 3)
      XCTAssertEqual(modint.stdin.val, 6)
    })
    .inputOnly("10\n-1")
  }

  func testPrint() throws {
    let A: [modint998244353] = [1, 2, -1]
    let B: [[modint998244353]] = [[4, 5], [6, 7]]
    XCTAssertEqual(
      try SolverRunner(solver: {
        A.print()
        B.print()
        A.print(separator: ",", terminator: ";\n")
      })
      .run(input: ""),
      """
      1 2 998244352
      4 5
      6 7
      1,2,998244352;
      """)
  }

  func testFastPrint() throws {
    let A: [modint998244353] = [1, 2, -1]
    let B: [[modint998244353]] = [[4, 5], [6, 7]]
    XCTAssertEqual(
      try SolverRunner(solver: {
        fastPrint(modint998244353(-1))
        fastPrint(A)
        A.fastPrint()
        B.fastPrint()
      })
      .run(input: ""),
      """
      998244352
      1 2 998244352
      1 2 998244352
      4 5
      6 7
      """)
  }
}
