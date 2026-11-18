import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ca
final class TessokuInputTestsB02: XCTestCase {
  func readInput() -> Any {
    let (A, B): (Int, Int) = stdin()
    return (A, B)
  }

  let example1 = """
    11 11
    """

  let example2 = """
    18 18
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (A, B) = self.readInput() as! (Int, Int)

      XCTAssertEqual(A, 11)
      XCTAssertEqual(B, 11)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (A, B) = self.readInput() as! (Int, Int)

      XCTAssertEqual(A, 18)
      XCTAssertEqual(B, 18)
    }).inputOnly(example2)
  }
}
