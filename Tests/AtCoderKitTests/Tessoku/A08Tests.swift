import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_h
final class TessokuInputTestsA08: XCTestCase {
  func readInput() -> Any {
    let (H, W): (Int, Int) = stdin()
    let X = [[Int]].stdin(rows: H, columns: W)
    let Q = Int.stdin
    var queries: [(Int, Int, Int, Int)] = []
    for _ in 0..<Q {
      let (A, B, C, D): (Int, Int, Int, Int) = stdin()
      queries.append((A, B, C, D))
    }
    return (H, W, X, Q, queries)
  }

  let example1 = """
    3 4
    1 3 2 1
    2 1 3 2
    3 2 1 3
    4
    1 1 2 2
    1 1 2 2
    1 1 2 2
    1 1 2 2
    """

  let example2 = """
    1 1
    2
    1
    1 1 1 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (H, W, X, Q, queries) =
        self.readInput() as! (Int, Int, [[Int]], Int, [(Int, Int, Int, Int)])

      XCTAssertEqual(H, 3)
      XCTAssertEqual(W, 4)
      XCTAssertEqual(X, [[1, 3, 2, 1], [2, 1, 3, 2], [3, 2, 1, 3]])
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

  func testExample2() throws {
    try SolverRunner(solver: {
      let (H, W, X, Q, queries) =
        self.readInput() as! (Int, Int, [[Int]], Int, [(Int, Int, Int, Int)])

      XCTAssertEqual(H, 1)
      XCTAssertEqual(W, 1)
      XCTAssertEqual(X, [[2]])
      XCTAssertEqual(Q, 1)
      let expectedQueries: [(Int, Int, Int, Int)] = [(1, 1, 1, 1)]
      XCTAssertEqual(queries.count, expectedQueries.count)
      for (actual, expected) in zip(queries, expectedQueries) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
        XCTAssertEqual(actual.3, expected.3)
      }
    }).inputOnly(example2)
  }
}
