import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dn
final class TessokuInputTestsB41: XCTestCase {
  func readInput() -> Any {
    let (X, Y): (Int, Int) = stdin()
    return (X, Y)
  }

  let example1 = """
    11 11
    """

  let example2 = """
    18 18
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (X, Y) = self.readInput() as! (Int, Int)

      XCTAssertEqual(X, 11)
      XCTAssertEqual(Y, 11)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (X, Y) = self.readInput() as! (Int, Int)

      XCTAssertEqual(X, 18)
      XCTAssertEqual(Y, 18)
    }).inputOnly(example2)
  }
}
