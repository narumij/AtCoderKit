import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_cl
final class TessokuInputTestsB13: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    let A = [Int].stdin()
    return (N, K, A)
  }

  let example1 = """
    4 3
    7 12 17 22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(A, [7, 12, 17, 22])
    }).inputOnly(example1)
  }
}
