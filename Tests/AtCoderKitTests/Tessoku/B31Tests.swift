import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_dd
final class TessokuInputTestsB31: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    return N
  }

  let example1 = """
    4
    """

  let example2 = """
    5
    """

  let example3 = """
    6
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let N = self.readInput() as! Int

      XCTAssertEqual(N, 4)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let N = self.readInput() as! Int

      XCTAssertEqual(N, 5)
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let N = self.readInput() as! Int

      XCTAssertEqual(N, 6)
    }).inputOnly(example3)
  }
}
