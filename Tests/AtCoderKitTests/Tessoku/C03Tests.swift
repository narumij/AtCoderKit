import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fa
final class TessokuInputTestsC03: XCTestCase {
  func readInput() -> Any {
    let D = Int.stdin
    let X = Int.stdin
    let A = [Int].stdin(rows: D - 1)
    let Q = Int.stdin
    var queries: [(Int, Int)] = []
    for _ in 0..<Q {
      let (S, T): (Int, Int) = stdin()
      queries.append((S, T))
    }
    return (D, X, A, Q, queries)
  }

  let example1 = """
    4
    11
    7
    12
    17
    4
    1 2
    1 2
    1 2
    1 2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (D, X, A, Q, queries) = self.readInput() as! (Int, Int, [Int], Int, [(Int, Int)])

      XCTAssertEqual(D, 4)
      XCTAssertEqual(X, 11)
      XCTAssertEqual(A, [7, 12, 17])
      XCTAssertEqual(Q, 4)
      let expectedQueries: [(Int, Int)] = [(1, 2), (1, 2), (1, 2), (1, 2)]
      XCTAssertEqual(queries.count, expectedQueries.count)
      for (actual, expected) in zip(queries, expectedQueries) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
