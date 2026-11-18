import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ed
final class TessokuInputTestsB57: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    return (N, K)
  }

  let example1 = """
    4 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K) = self.readInput() as! (Int, Int)

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
    }).inputOnly(example1)
  }
}
