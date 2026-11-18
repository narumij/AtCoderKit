import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ao
final class TessokuInputTestsA41: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let S = [UInt8].stdin
    return (N, S)
  }

  let example1 = """
    4
    RBRR
    """

  let example2 = """
    5
    BRRBR
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, S) = self.readInput() as! (Int, [UInt8])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(S, Array("RBRR".utf8))
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, S) = self.readInput() as! (Int, [UInt8])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(S, Array("BRRBR".utf8))
    }).inputOnly(example2)
  }
}
