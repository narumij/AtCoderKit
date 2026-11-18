import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fe
final class TessokuInputTestsC07: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let C = [Int].stdin()
    let Q = Int.stdin
    let X = [Int].stdin(rows: Q)
    return (N, C, Q, X)
  }

  let example1 = """
    4
    7 12 17 22
    4
    7
    12
    17
    22
    """

  let example2 = """
    5
    18 23 28 33 38
    4
    18
    23
    28
    33
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, C, Q, X) = self.readInput() as! (Int, [Int], Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(C, [7, 12, 17, 22])
      XCTAssertEqual(Q, 4)
      XCTAssertEqual(X, [7, 12, 17, 22])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, C, Q, X) = self.readInput() as! (Int, [Int], Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(C, [18, 23, 28, 33, 38])
      XCTAssertEqual(Q, 4)
      XCTAssertEqual(X, [18, 23, 28, 33])
    }).inputOnly(example2)
  }
}
