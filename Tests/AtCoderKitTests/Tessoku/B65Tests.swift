import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_el
final class TessokuInputTestsB65: XCTestCase {
  func readInput() -> Any {
    let (N, T): (Int, Int) = stdin()
    var pairs: [(Int, Int)] = []
    for _ in 0..<N - 1 {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    return (N, T, pairs)
  }

  let example1 = """
    4 11
    1 2
    2 3
    3 1
    """

  let example2 = """
    5 18
    2 3
    3 1
    1 2
    2 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, T, pairs) = self.readInput() as! (Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(T, 11)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, T, pairs) = self.readInput() as! (Int, Int, [(Int, Int)])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(T, 18)
      let expectedPairs: [(Int, Int)] = [(2, 3), (3, 1), (1, 2), (2, 3)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example2)
  }
}
