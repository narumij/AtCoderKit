import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/math_and_algorithm_al
final class TessokuInputTestsB07: XCTestCase {
  func readInput() -> Any {
    let T = Int.stdin
    let N = Int.stdin
    var pairs: [(Int, Int)] = []
    for _ in 0..<N {
      let (a, b): (Int, Int) = stdin()
      pairs.append((a, b))
    }
    return (T, N, pairs)
  }

  let example1 = """
    11
    4
    1 2
    2 3
    3 1
    1 2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (T, N, pairs) = self.readInput() as! (Int, Int, [(Int, Int)])

      XCTAssertEqual(T, 11)
      XCTAssertEqual(N, 4)
      let expectedPairs: [(Int, Int)] = [(1, 2), (2, 3), (3, 1), (1, 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }
}
