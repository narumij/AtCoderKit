import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bm
final class TessokuInputTestsA65: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let A = [Int].stdin()
    return (N, A)
  }

  let example1 = """
    4
    7 12 17
    """

  let example2 = """
    5
    18 23 28 33
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, [7, 12, 17])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(A, [18, 23, 28, 33])
    }).inputOnly(example2)
  }
}
