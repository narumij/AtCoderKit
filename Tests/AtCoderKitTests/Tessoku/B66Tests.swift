import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_em
final class TessokuInputTestsB66: XCTestCase {
  func readInput() -> Any {
    let (N, M): (Int, Int) = stdin()
    var pairs: [(Int, Int)] = []
    for _ in 0..<M {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    let Q = Int.stdin
    var queries: [[Int]] = []
    for _ in 0..<Q {
      let type = Int.stdin
      switch type {
      case 1:
        let x = Int.stdin
        queries.append([type, x])
      case 2:
        let (u, v): (Int, Int) = stdin()
        queries.append([type, u, v])
      default: XCTFail("Unexpected query type")
      }
    }
    return (N, M, pairs, Q, queries)
  }

  let example1 = """
    4 3
    1 2
    2 3
    3 1
    3
    2 1 3
    1 2
    2 1 3
    """

  let example2 = """
    5 3
    2 3
    3 1
    1 2
    3
    2 1 3
    1 2
    2 1 3
    """

  let example3 = """
    6 3
    3 1
    1 2
    2 3
    3
    2 1 3
    1 2
    2 1 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, M, pairs, Q, queries) = self.readInput() as! (Int, Int, [(Int, Int)], Int, [[Int]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(M, 3)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
      XCTAssertEqual(Q, 3)
      XCTAssertEqual(queries, [[2, 1, 3], [1, 2], [2, 1, 3]])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, M, pairs, Q, queries) = self.readInput() as! (Int, Int, [(Int, Int)], Int, [[Int]])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(M, 3)
      let expectedPairs: [(Int, Int)] = [(2, 3), (3, 1), (1, 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
      XCTAssertEqual(Q, 3)
      XCTAssertEqual(queries, [[2, 1, 3], [1, 2], [2, 1, 3]])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, M, pairs, Q, queries) = self.readInput() as! (Int, Int, [(Int, Int)], Int, [[Int]])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(M, 3)
      let expectedPairs: [(Int, Int)] = [(3, 1), (1, 2), (2, 3)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
      XCTAssertEqual(Q, 3)
      XCTAssertEqual(queries, [[2, 1, 3], [1, 2], [2, 1, 3]])
    }).inputOnly(example3)
  }
}
