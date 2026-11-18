import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dk
final class TessokuInputTestsB38: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let S: [UInt8] = N > 1 ? [UInt8].stdin : []
    return (N, S)
  }

  let example1 = """
    4
    ABB
    """

  let example2 = """
    1
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, S) = self.readInput() as! (Int, [UInt8])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(S, Array("ABB".utf8))
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, S) = self.readInput() as! (Int, [UInt8])

      XCTAssertEqual(N, 1)
      XCTAssertEqual(S, Array("".utf8))
    }).inputOnly(example2)
  }
}
