import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ad
final class TessokuInputTestsA30: XCTestCase {
  func readInput() -> Any {
    let (n, r): (Int, Int) = stdin()
    return (n, r)
  }

  let example1 = """
    11 11
    """

  let example2 = """
    18 18
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (n, r) = self.readInput() as! (Int, Int)

      XCTAssertEqual(n, 11)
      XCTAssertEqual(r, 11)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (n, r) = self.readInput() as! (Int, Int)

      XCTAssertEqual(n, 18)
      XCTAssertEqual(r, 18)
    }).inputOnly(example2)
  }
}
