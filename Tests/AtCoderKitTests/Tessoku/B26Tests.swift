import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_cy
final class TessokuInputTestsB26: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    return N
  }

  let example1 = """
    4
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let N = self.readInput() as! Int

      XCTAssertEqual(N, 4)
    }).inputOnly(example1)
  }
}
