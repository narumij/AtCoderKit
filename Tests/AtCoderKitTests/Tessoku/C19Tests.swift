import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fq
final class TessokuInputTestsC19: XCTestCase {
  func readInput() -> Any {
    let (N, L, K): (Int, Int, Int) = stdin()
    var pairs: [(Int, Int)] = []
    for _ in 0..<N {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    return (N, L, K, pairs)
  }

  let example1 = """
    4 2 3
    1 2
    2 3
    3 1
    1 2
    """

  let example2 = """
    5 2 3
    2 3
    3 1
    1 2
    2 3
    3 1
    """

  let example3 = """
    6 2 3
    3 1
    1 2
    2 3
    3 1
    1 2
    2 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, L, K, pairs) = self.readInput() as! (Int, Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(K, 3)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1), (1, 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, L, K, pairs) = self.readInput() as! (Int, Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(K, 3)
      let expectedPairs: [(Int, Int)] = [(2, 3), (3, 1), (1, 2), (2, 3), (3, 1)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, L, K, pairs) = self.readInput() as! (Int, Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(K, 3)
      let expectedPairs: [(Int, Int)] = [(3, 1), (1, 2), (2, 3), (3, 1), (1, 2), (2, 3)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example3)
  }
}
