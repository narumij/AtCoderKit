import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_z
final class TessokuInputTestsA26: XCTestCase {
  func readInput() -> Any {
    let Q = Int.stdin
    let X = [Int].stdin(rows: Q)
    return (Q, X)
  }

  let example1 = """
    4
    7
    12
    17
    22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (Q, X) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(Q, 4)
      XCTAssertEqual(X, [7, 12, 17, 22])
    }).inputOnly(example1)
  }
}
