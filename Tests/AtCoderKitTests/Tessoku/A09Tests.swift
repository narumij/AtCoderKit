import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_i
final class TessokuInputTestsA09: XCTestCase {
  func readInput() -> Any {
    let (H, W, N): (Int, Int, Int) = stdin()
    var items: [(Int, Int, Int, Int)] = []
    for _ in 0..<N {
      let (a, b, c, d): (Int, Int, Int, Int) = stdin()
      items.append((a, b, c, d))
    }
    return (H, W, N, items)
  }

  let example1 = """
    11 20 4
    1 2 3 1
    2 3 1 2
    3 1 2 3
    1 2 3 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (H, W, N, items) = self.readInput() as! (Int, Int, Int, [(Int, Int, Int, Int)])

      XCTAssertEqual(H, 11)
      XCTAssertEqual(W, 20)
      XCTAssertEqual(N, 4)
      let expectedItems: [(Int, Int, Int, Int)] = [
        (1, 2, 3, 1), (2, 3, 1, 2), (3, 1, 2, 3), (1, 2, 3, 1),
      ]
      XCTAssertEqual(items.count, expectedItems.count)
      for (actual, expected) in zip(items, expectedItems) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
        XCTAssertEqual(actual.3, expected.3)
      }
    }).inputOnly(example1)
  }
}
