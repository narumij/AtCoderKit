import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bv
final class TessokuInputTestsA74: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let P = [[Int]].stdin(rows: N, columns: N)
    return (N, P)
  }

  let example1 = """
    4
    1 3 2 1
    2 1 3 2
    3 2 1 3
    1 3 2 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, P) = self.readInput() as! (Int, [[Int]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(P, [[1, 3, 2, 1], [2, 1, 3, 2], [3, 2, 1, 3], [1, 3, 2, 1]])
    }).inputOnly(example1)
  }
}
