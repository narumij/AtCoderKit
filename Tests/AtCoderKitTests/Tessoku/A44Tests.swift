import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ar
final class TessokuInputTestsA44: XCTestCase {
  func readInput() -> Any {
    let (N, Q): (Int, Int) = stdin()
    var queries: [[Int]] = []
    for _ in 0..<Q {
      let type = Int.stdin
      switch type {
      case 1:
        let (x, y): (Int, Int) = stdin()
        queries.append([type, x, y])
      case 2:
        queries.append([type])
      case 3:
        let x = Int.stdin
        queries.append([type, x])
      default: XCTFail("Unexpected query type")
      }
    }
    return (N, Q, queries)
  }

  let example1 = """
    4 4
    1 2 31
    3 2
    2
    3 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, Q, queries) = self.readInput() as! (Int, Int, [[Int]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(Q, 4)
      XCTAssertEqual(queries, [[1, 2, 31], [3, 2], [2], [3, 1]])
    }).inputOnly(example1)
  }
}
