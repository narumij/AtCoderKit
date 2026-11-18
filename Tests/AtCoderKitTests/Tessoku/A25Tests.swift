import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_y
final class TessokuInputTestsA25: XCTestCase {
  func readInput() -> Any {
    let (H, W): (Int, Int) = stdin()
    let c = (0..<H).map { _ in [UInt8].stdin }
    return (H, W, c)
  }

  let example1 = """
    3 4
    .#.#
    .#.#
    .#.#
    """

  let example2 = """
    4 4
    #.#.
    #.#.
    #.#.
    #.#.
    """

  let example3 = """
    3 4
    .#.#
    .#.#
    .#.#
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (H, W, c) = self.readInput() as! (Int, Int, [[UInt8]])

      XCTAssertEqual(H, 3)
      XCTAssertEqual(W, 4)
      XCTAssertEqual(c, [Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8)])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (H, W, c) = self.readInput() as! (Int, Int, [[UInt8]])

      XCTAssertEqual(H, 4)
      XCTAssertEqual(W, 4)
      XCTAssertEqual(
        c, [Array("#.#.".utf8), Array("#.#.".utf8), Array("#.#.".utf8), Array("#.#.".utf8)])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (H, W, c) = self.readInput() as! (Int, Int, [[UInt8]])

      XCTAssertEqual(H, 3)
      XCTAssertEqual(W, 4)
      XCTAssertEqual(c, [Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8)])
    }).inputOnly(example3)
  }
}
