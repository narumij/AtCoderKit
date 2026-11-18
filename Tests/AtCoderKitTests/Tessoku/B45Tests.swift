import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dr
final class TessokuInputTestsB45: XCTestCase {
  func readInput() -> Any {
    let (a, b, c): (Int, Int, Int) = stdin()
    return (a, b, c)
  }

  let example1 = """
    11 11 11
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (a, b, c) = self.readInput() as! (Int, Int, Int)

      XCTAssertEqual(a, 11)
      XCTAssertEqual(b, 11)
      XCTAssertEqual(c, 11)
    }).inputOnly(example1)
  }
}
