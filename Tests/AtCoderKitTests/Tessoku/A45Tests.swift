import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_as
final class TessokuInputTestsA45: XCTestCase {
  func readInput() -> Any {
    let (N, C): (Int, String) = stdin()
    let S = [UInt8].stdin
    return (N, C, S)
  }

  let example1 = """
    4 R
    WRBW
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, C, S) = self.readInput() as! (Int, String, [UInt8])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(C, "R")
      XCTAssertEqual(S, Array("WRBW".utf8))
    }).inputOnly(example1)
  }
}
