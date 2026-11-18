import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/typical90_a
final class TessokuInputTestsA77: XCTestCase {
  func readInput() -> Any {
    let (N, L): (Int, Int) = stdin()
    let N2 = Int.stdin
    let A = [Int].stdin()
    return (N, L, N2, A)
  }

  let example1 = """
    4 2
    11
    7 12 17 22
    """

  let example2 = """
    5 2
    18
    18 23 28 33 38
    """

  let example3 = """
    6 2
    25
    29 34 39 44 49 54
    """

  let example4 = """
    7 2
    32
    40 45 50 55 60 65 70
    """

  let example5 = """
    8 2
    39
    51 56 61 66 71 76 81 86
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, L, N2, A) = self.readInput() as! (Int, Int, Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(N2, 11)
      XCTAssertEqual(A, [7, 12, 17, 22])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, L, N2, A) = self.readInput() as! (Int, Int, Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(N2, 18)
      XCTAssertEqual(A, [18, 23, 28, 33, 38])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, L, N2, A) = self.readInput() as! (Int, Int, Int, [Int])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(N2, 25)
      XCTAssertEqual(A, [29, 34, 39, 44, 49, 54])
    }).inputOnly(example3)
  }

  func testExample4() throws {
    try SolverRunner(solver: {
      let (N, L, N2, A) = self.readInput() as! (Int, Int, Int, [Int])

      XCTAssertEqual(N, 7)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(N2, 32)
      XCTAssertEqual(A, [40, 45, 50, 55, 60, 65, 70])
    }).inputOnly(example4)
  }

  func testExample5() throws {
    try SolverRunner(solver: {
      let (N, L, N2, A) = self.readInput() as! (Int, Int, Int, [Int])

      XCTAssertEqual(N, 8)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(N2, 39)
      XCTAssertEqual(A, [51, 56, 61, 66, 71, 76, 81, 86])
    }).inputOnly(example5)
  }
}
