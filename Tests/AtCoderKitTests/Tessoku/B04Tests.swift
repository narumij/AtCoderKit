import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_cc
final class TessokuInputTestsB04: XCTestCase {
  func readInput() -> Any {
    let S = [UInt8].stdin
    return S
  }

  let example1 = """
    101101
    """

  let example2 = """
    011011
    """

  let example3 = """
    110110
    """

  let example4 = """
    101101
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let S = self.readInput() as! [UInt8]

      XCTAssertEqual(S, Array("101101".utf8))
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let S = self.readInput() as! [UInt8]

      XCTAssertEqual(S, Array("011011".utf8))
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let S = self.readInput() as! [UInt8]

      XCTAssertEqual(S, Array("110110".utf8))
    }).inputOnly(example3)
  }

  func testExample4() throws {
    try SolverRunner(solver: {
      let S = self.readInput() as! [UInt8]

      XCTAssertEqual(S, Array("101101".utf8))
    }).inputOnly(example4)
  }
}
