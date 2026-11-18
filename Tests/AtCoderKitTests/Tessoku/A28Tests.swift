import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ab
final class TessokuInputTestsA28: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    var pairs: [(String, Int)] = []
    for _ in 0..<N {
      let (text, value): (String, Int) = stdin()
      pairs.append((text, value))
    }
    return (N, pairs)
  }

  let example1 = """
    4
    + 2
    * 3
    - 1
    + 2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, pairs) = self.readInput() as! (Int, [(String, Int)])

      XCTAssertEqual(N, 4)
      let expectedPairs: [(String, Int)] = [("+", 2), ("*", 3), ("-", 1), ("+", 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
