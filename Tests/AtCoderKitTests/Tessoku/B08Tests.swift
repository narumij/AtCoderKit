import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_cg
final class TessokuInputTestsB08: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    var pairs: [(Int, Int)] = []
    for _ in 0..<N {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    let Q = Int.stdin
    var queries: [(Int, Int, Int, Int)] = []
    for _ in 0..<Q {
      let (a, b, c, d): (Int, Int, Int, Int) = stdin()
      queries.append((a, b, c, d))
    }
    return (N, pairs, Q, queries)
  }

  let example1 = """
    4
    1 2
    2 3
    3 1
    1 2
    4
    1 1 2 2
    1 1 2 2
    1 1 2 2
    1 1 2 2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, pairs, Q, queries) =
        self.readInput() as! (Int, [(Int, Int)], Int, [(Int, Int, Int, Int)])

      XCTAssertEqual(N, 4)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1), (1, 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
      XCTAssertEqual(Q, 4)
      let expectedQueries: [(Int, Int, Int, Int)] = [
        (1, 1, 2, 2), (1, 1, 2, 2), (1, 1, 2, 2), (1, 1, 2, 2),
      ]
      XCTAssertEqual(queries.count, expectedQueries.count)
      for (actual, expected) in zip(queries, expectedQueries) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
        XCTAssertEqual(actual.3, expected.3)
      }
    }).inputOnly(example1)
  }
}
