import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dl
final class TessokuInputTestsB39: XCTestCase {
  func readInput() -> Any {
    let (N, D): (Int, Int) = stdin()
    var pairs: [(Int, Int)] = []
    for _ in 0..<N {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    return (N, D, pairs)
  }

  let example1 = """
    4 11
    1 2
    2 3
    3 1
    1 2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, D, pairs) = self.readInput() as! (Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(D, 11)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1), (1, 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
