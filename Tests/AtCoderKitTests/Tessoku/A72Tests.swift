import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bt
final class TessokuInputTestsA72: XCTestCase {
  func readInput() -> Any {
    let (H, W, K): (Int, Int, Int) = stdin()
    let c = (0..<H).map { _ in [UInt8].stdin }
    return (H, W, K, c)
  }

  let example1 = """
    3 4 3
    .#.#
    .#.#
    .#.#
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (H, W, K, c) = self.readInput() as! (Int, Int, Int, [[UInt8]])

      XCTAssertEqual(H, 3)
      XCTAssertEqual(W, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(c, [Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8)])
    }).inputOnly(example1)
  }
}
