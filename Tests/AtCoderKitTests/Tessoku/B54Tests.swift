import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ea
final class TessokuInputTestsB54: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let A = [Int].stdin(rows: N)
    return (N, A)
  }

  let example1 = """
    4
    7
    12
    17
    22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, [7, 12, 17, 22])
    }).inputOnly(example1)
  }
}
