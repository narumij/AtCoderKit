import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dx
final class TessokuInputTestsB51: XCTestCase {
  func readInput() -> Any {
    let S = [UInt8].stdin
    return S
  }

  let example1 = """
    abcaab
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let S = self.readInput() as! [UInt8]

      XCTAssertEqual(S, Array("abcaab".utf8))
    }).inputOnly(example1)
  }
}
