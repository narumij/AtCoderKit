import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_eo
final class TessokuInputTestsB68: XCTestCase {
  func readInput() -> Any {
    let (N, M): (Int, Int) = stdin()
    let P = [Int].stdin()
    var pairs: [(Int, Int)] = []
    for _ in 0..<M {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    return (N, M, P, pairs)
  }

  let example1 = """
    4 3
    7 12 17 22
    1 2
    2 3
    3 1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, M, P, pairs) = self.readInput() as! (Int, Int, [Int], [(Int, Int)])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(M, 3)
      XCTAssertEqual(P, [7, 12, 17, 22])
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
