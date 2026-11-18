import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_cp
final class TessokuInputTestsB17: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let h = [Int].stdin()
    return (N, h)
  }

  let example1 = """
    4
    7 12 17 22
    """

  let example2 = """
    5
    18 23 28 33 38
    """

  let example3 = """
    6
    29 34 39 44 49 54
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, h) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(h, [7, 12, 17, 22])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, h) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(h, [18, 23, 28, 33, 38])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, h) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(h, [29, 34, 39, 44, 49, 54])
    }).inputOnly(example3)
  }
}
