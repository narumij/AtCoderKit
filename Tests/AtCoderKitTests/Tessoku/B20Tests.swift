import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_cs
final class TessokuInputTestsB20: XCTestCase {
  func readInput() -> Any {
    let S = [UInt8].stdin
    let T = [UInt8].stdin
    return (S, T)
  }

  let example1 = """
    abcaab
    abcaab
    """

  let example2 = """
    bcaabc
    bcaabc
    """

  let example3 = """
    caabca
    caabca
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (S, T) = self.readInput() as! ([UInt8], [UInt8])

      XCTAssertEqual(S, Array("abcaab".utf8))
      XCTAssertEqual(T, Array("abcaab".utf8))
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (S, T) = self.readInput() as! ([UInt8], [UInt8])

      XCTAssertEqual(S, Array("bcaabc".utf8))
      XCTAssertEqual(T, Array("bcaabc".utf8))
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (S, T) = self.readInput() as! ([UInt8], [UInt8])

      XCTAssertEqual(S, Array("caabca".utf8))
      XCTAssertEqual(T, Array("caabca".utf8))
    }).inputOnly(example3)
  }
}
