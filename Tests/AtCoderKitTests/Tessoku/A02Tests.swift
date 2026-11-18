import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_b
final class TessokuInputTestsA02: XCTestCase {
  func readInput() -> Any {
    let (N, X): (Int, Int) = stdin()
    let A = [Int].stdin()
    return (N, X, A)
  }

  let example1 = """
    4 11
    7 12 17 22
    """

  let example2 = """
    5 18
    18 23 28 33 38
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, X, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(X, 11)
      XCTAssertEqual(A, [7, 12, 17, 22])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, X, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(X, 18)
      XCTAssertEqual(A, [18, 23, 28, 33, 38])
    }).inputOnly(example2)
  }
}
