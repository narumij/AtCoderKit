import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fl
final class TessokuInputTestsC14: XCTestCase {
  func readInput() -> Any {
    let (N, M): (Int, Int) = stdin()
    var items: [(Int, Int, Int)] = []
    for _ in 0..<M {
      let (a, b, c): (Int, Int, Int) = stdin()
      items.append((a, b, c))
    }
    return (N, M, items)
  }

  let example1 = """
    4 3
    1 2 3
    2 3 1
    3 1 2
    """

  let example2 = """
    5 3
    2 3 1
    3 1 2
    1 2 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, M, items) = self.readInput() as! (Int, Int, [(Int, Int, Int)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(M, 3)
      let expectedItems: [(Int, Int, Int)] = [(1, 2, 3), (2, 3, 1), (3, 1, 2)]
      XCTAssertEqual(items.count, expectedItems.count)
      for (actual, expected) in zip(items, expectedItems) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
      }
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, M, items) = self.readInput() as! (Int, Int, [(Int, Int, Int)])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(M, 3)
      let expectedItems: [(Int, Int, Int)] = [(2, 3, 1), (3, 1, 2), (1, 2, 3)]
      XCTAssertEqual(items.count, expectedItems.count)
      for (actual, expected) in zip(items, expectedItems) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
        XCTAssertEqual(actual.2, expected.2)
      }
    }).inputOnly(example2)
  }
}
