import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_af
final class TessokuInputTestsA32: XCTestCase {
  func readInput() -> Any {
    let (N, A, B): (Int, Int, Int) = stdin()
    return (N, A, B)
  }

  let example1 = """
    4 11 11
    """

  let example2 = """
    5 18 18
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A, B) = self.readInput() as! (Int, Int, Int)

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, 11)
      XCTAssertEqual(B, 11)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, A, B) = self.readInput() as! (Int, Int, Int)

      XCTAssertEqual(N, 5)
      XCTAssertEqual(A, 18)
      XCTAssertEqual(B, 18)
    }).inputOnly(example2)
  }
}
