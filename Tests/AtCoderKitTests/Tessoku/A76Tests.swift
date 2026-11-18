import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bx
final class TessokuInputTestsA76: XCTestCase {
  func readInput() -> Any {
    let (N, W, L, R): (Int, Int, Int, Int) = stdin()
    let X = [Int].stdin()
    return (N, W, L, R, X)
  }

  let example1 = """
    4 20 2 11
    7 12 17 22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, W, L, R, X) = self.readInput() as! (Int, Int, Int, Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(W, 20)
      XCTAssertEqual(L, 2)
      XCTAssertEqual(R, 11)
      XCTAssertEqual(X, [7, 12, 17, 22])
    }).inputOnly(example1)
  }
}
