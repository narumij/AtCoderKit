import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dc
final class TessokuInputTestsB30: XCTestCase {
  func readInput() -> Any {
    let (H, W): (Int, Int) = stdin()
    return (H, W)
  }

  let example1 = """
    11 20
    """

  let example2 = """
    18 21
    """

  let example3 = """
    25 22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (H, W) = self.readInput() as! (Int, Int)

      XCTAssertEqual(H, 11)
      XCTAssertEqual(W, 20)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (H, W) = self.readInput() as! (Int, Int)

      XCTAssertEqual(H, 18)
      XCTAssertEqual(W, 21)
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (H, W) = self.readInput() as! (Int, Int)

      XCTAssertEqual(H, 25)
      XCTAssertEqual(W, 22)
    }).inputOnly(example3)
  }
}
