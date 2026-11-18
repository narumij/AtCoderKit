import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_aq
final class TessokuInputTestsA43: XCTestCase {
  func readInput() -> Any {
    let (N, L): (Int, Int) = stdin()
    var pairs: [(Int, String)] = []
    for _ in 0..<N {
      let (position, direction): (Int, String) = stdin()
      pairs.append((position, direction))
    }
    return (N, L, pairs)
  }

  let example1 = """
    4 2
    1 E
    2 W
    3 E
    1 W
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, L, pairs) = self.readInput() as! (Int, Int, [(Int, String)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(L, 2)
      let expectedPairs: [(Int, String)] = [(1, "E"), (2, "W"), (3, "E"), (1, "W")]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
