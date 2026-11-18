import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_p
final class TessokuInputTestsA16: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let A = [Int].stdin()
    let B = [Int].stdin()
    return (N, A, B)
  }

  let example1 = """
    4
    7 12 17
    7 12
    """

  let example2 = """
    5
    18 23 28 33
    18 23 28
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A, B) = self.readInput() as! (Int, [Int], [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, [7, 12, 17])
      XCTAssertEqual(B, [7, 12])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, A, B) = self.readInput() as! (Int, [Int], [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(A, [18, 23, 28, 33])
      XCTAssertEqual(B, [18, 23, 28])
    }).inputOnly(example2)
  }
}
