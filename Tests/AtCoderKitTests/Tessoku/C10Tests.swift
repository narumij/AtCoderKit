import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fh
final class TessokuInputTestsC10: XCTestCase {
  func readInput() -> Any {
    let W = Int.stdin
    return W
  }

  let example1 = """
    20
    """

  let example2 = """
    21
    """

  let example3 = """
    22
    """

  let example4 = """
    987654321012345678
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let W = self.readInput() as! Int

      XCTAssertEqual(W, 20)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let W = self.readInput() as! Int

      XCTAssertEqual(W, 21)
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let W = self.readInput() as! Int

      XCTAssertEqual(W, 22)
    }).inputOnly(example3)
  }

  func testExample4() throws {
    try SolverRunner(solver: {
      let W = self.readInput() as! Int

      XCTAssertEqual(W, 987_654_321_012_345_678)
    }).inputOnly(example4)
  }
}
