import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dy
final class TessokuInputTestsB52: XCTestCase {
  func readInput() -> Any {
    let (N, X): (Int, Int) = stdin()
    let S = [UInt8].stdin
    return (N, X, S)
  }

  let example1 = """
    4 11
    .#.#
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, X, S) = self.readInput() as! (Int, Int, [UInt8])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(X, 11)
      XCTAssertEqual(S, Array(".#.#".utf8))
    }).inputOnly(example1)
  }
}
