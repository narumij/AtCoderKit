import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fm
final class TessokuInputTestsC15: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let K = Int.stdin
    var pairs: [(Int, Int)] = []
    for _ in 0..<N {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    return (N, K, pairs)
  }

  let example1 = """
    4
    3
    1 2
    2 3
    3 1
    1 2
    """

  let example2 = """
    5
    3
    2 3
    3 1
    1 2
    2 3
    3 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, pairs) = self.readInput() as! (Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 4)
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
      let (N, K, pairs) = self.readInput() as! (Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(K, 3)
      let expectedPairs: [(Int, Int)] = [(2, 3), (3, 1), (1, 2), (2, 3), (3, 1)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example2)
  }
}
