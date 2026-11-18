import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_al
final class TessokuInputTestsA38: XCTestCase {
  func readInput() -> Any {
    let (D, N): (Int, Int) = stdin()
    var items: [(Int, Int, Int)] = []
    for _ in 0..<N {
      let (a, b, c): (Int, Int, Int) = stdin()
      items.append((a, b, c))
    }
    return (D, N, items)
  }

  let example1 = """
    11 4
    1 2 3
    2 3 1
    3 1 2
    1 2 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (D, N, items) = self.readInput() as! (Int, Int, [(Int, Int, Int)])

      XCTAssertEqual(D, 11)
      XCTAssertEqual(N, 4)
      let expectedItems: [(Int, Int, Int)] = [(1, 2, 3), (2, 3, 1), (3, 1, 2), (1, 2, 3)]
      XCTAssertEqual(items.count, expectedItems.count)
      for (actual, expected) in zip(items, expectedItems) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
      }
    }).inputOnly(example1)
  }
}
