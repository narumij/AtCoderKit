import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fr
final class TessokuInputTestsC20: XCTestCase {
  func readInput() -> Any {
    let (N, K, L): (Int, Int, Int) = stdin()
    var pairs: [(Int, Int)] = []
    for _ in 0..<K {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    let C = [[Int]].stdin(rows: N, columns: N)
    return (N, K, L, pairs, C)
  }

  let example1 = """
    4 3 2
    1 2
    2 3
    3 1
    1 3 2 1
    2 1 3 2
    3 2 1 3
    1 3 2 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, L, pairs, C) = self.readInput() as! (Int, Int, Int, [(Int, Int)], [[Int]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(L, 2)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
      XCTAssertEqual(C, [[1, 3, 2, 1], [2, 1, 3, 2], [3, 2, 1, 3], [1, 3, 2, 1]])
    }).inputOnly(example1)
  }
}
