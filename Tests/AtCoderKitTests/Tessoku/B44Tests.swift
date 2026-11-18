import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dq
final class TessokuInputTestsB44: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let A = [[Int]].stdin(rows: N, columns: N)
    let Q = Int.stdin
    var queries: [(Int, Int, Int)] = []
    for _ in 0..<Q {
      let (type, x, y): (Int, Int, Int) = stdin()
      queries.append((type, x, y))
    }
    return (N, A, Q, queries)
  }

  let example1 = """
    4
    1 3 2 1
    2 1 3 2
    3 2 1 3
    1 3 2 1
    4
    1 1 2
    2 1 2
    1 2 3
    2 1 3
    """

  let example2 = """
    5
    2 1 3 2 1
    3 2 1 3 2
    1 3 2 1 3
    2 1 3 2 1
    3 2 1 3 2
    4
    1 1 2
    2 1 2
    1 2 3
    2 1 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A, Q, queries) = self.readInput() as! (Int, [[Int]], Int, [(Int, Int, Int)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, [[1, 3, 2, 1], [2, 1, 3, 2], [3, 2, 1, 3], [1, 3, 2, 1]])
      XCTAssertEqual(Q, 4)
      let expectedQueries: [(Int, Int, Int)] = [(1, 1, 2), (2, 1, 2), (1, 2, 3), (2, 1, 3)]
      XCTAssertEqual(queries.count, expectedQueries.count)
      for (actual, expected) in zip(queries, expectedQueries) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
      }
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, A, Q, queries) = self.readInput() as! (Int, [[Int]], Int, [(Int, Int, Int)])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(
        A,
        [[2, 1, 3, 2, 1], [3, 2, 1, 3, 2], [1, 3, 2, 1, 3], [2, 1, 3, 2, 1], [3, 2, 1, 3, 2]])
      XCTAssertEqual(Q, 4)
      let expectedQueries: [(Int, Int, Int)] = [(1, 1, 2), (2, 1, 2), (1, 2, 3), (2, 1, 3)]
      XCTAssertEqual(queries.count, expectedQueries.count)
      for (actual, expected) in zip(queries, expectedQueries) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
      }
    }).inputOnly(example2)
  }
}
