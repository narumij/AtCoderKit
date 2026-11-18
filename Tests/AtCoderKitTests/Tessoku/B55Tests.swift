import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_eb
final class TessokuInputTestsB55: XCTestCase {
  func readInput() -> Any {
    let Q = Int.stdin
    var queries: [(Int, Int)] = []
    for _ in 0..<Q {
      let (type, x): (Int, Int) = stdin()
      queries.append((type, x))
    }
    return (Q, queries)
  }

  let example1 = """
    4
    1 13
    1 7
    2 9
    2 15
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (Q, queries) = self.readInput() as! (Int, [(Int, Int)])

      XCTAssertEqual(Q, 4)
      let expectedQueries: [(Int, Int)] = [(1, 13), (1, 7), (2, 9), (2, 15)]
      XCTAssertEqual(queries.count, expectedQueries.count)
      for (actual, expected) in zip(queries, expectedQueries) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
