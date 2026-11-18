import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bs
final class TessokuInputTestsA71: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let A = [Int].stdin()
    let B = [Int].stdin()
    return (N, A, B)
  }

  let example1 = """
    4
    7 12 17 22
    7 12 17 22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A, B) = self.readInput() as! (Int, [Int], [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, [7, 12, 17, 22])
      XCTAssertEqual(B, [7, 12, 17, 22])
    }).inputOnly(example1)
  }
}
