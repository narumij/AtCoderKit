import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bq
final class TessokuInputTestsA69: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let C = (0..<N).map { _ in [UInt8].stdin }
    return (N, C)
  }

  let example1 = """
    4
    .#.#
    .#.#
    .#.#
    .#.#
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, C) = self.readInput() as! (Int, [[UInt8]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(
        C, [Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8)])
    }).inputOnly(example1)
  }
}
