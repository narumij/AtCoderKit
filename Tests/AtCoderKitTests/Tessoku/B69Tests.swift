import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ep
final class TessokuInputTestsB69: XCTestCase {
  func readInput() -> Any {
    let (N, M): (Int, Int) = stdin()
    let C = (0..<N).map { _ in [UInt8].stdin }
    return (N, M, C)
  }

  let example1 = """
    4 3
    010101010101010101010101
    010101010101010101010101
    010101010101010101010101
    010101010101010101010101
    """

  let example2 = """
    5 3
    101010101010101010101010
    101010101010101010101010
    101010101010101010101010
    101010101010101010101010
    101010101010101010101010
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, M, C) = self.readInput() as! (Int, Int, [[UInt8]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(M, 3)
      XCTAssertEqual(
        C,
        [
          Array("010101010101010101010101".utf8), Array("010101010101010101010101".utf8),
          Array("010101010101010101010101".utf8), Array("010101010101010101010101".utf8),
        ])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, M, C) = self.readInput() as! (Int, Int, [[UInt8]])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(M, 3)
      XCTAssertEqual(
        C,
        [
          Array("101010101010101010101010".utf8), Array("101010101010101010101010".utf8),
          Array("101010101010101010101010".utf8), Array("101010101010101010101010".utf8),
          Array("101010101010101010101010".utf8),
        ])
    }).inputOnly(example2)
  }
}
