import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ba
final class TessokuInputTestsA53: XCTestCase {
  func readInput() -> Any {
    let Q = Int.stdin
    var queries: [[Int]] = []
    for _ in 0..<Q {
      let type = Int.stdin
      switch type {
      case 1:
        let x = Int.stdin
        queries.append([type, x])
      case 2, 3:
        queries.append([type])
      default: XCTFail("Unexpected query type")
      }
    }
    return (Q, queries)
  }

  let example1 = """
    5
    1 19
    1 7
    2
    3
    2
    """

  let example2 = """
    5
    1 20
    1 8
    2
    3
    2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (Q, queries) = self.readInput() as! (Int, [[Int]])

      XCTAssertEqual(Q, 5)
      XCTAssertEqual(queries, [[1, 19], [1, 7], [2], [3], [2]])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (Q, queries) = self.readInput() as! (Int, [[Int]])

      XCTAssertEqual(Q, 5)
      XCTAssertEqual(queries, [[1, 20], [1, 8], [2], [3], [2]])
    }).inputOnly(example2)
  }
}
