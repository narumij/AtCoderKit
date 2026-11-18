import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/math_and_algorithm_aq
final class TessokuInputTestsA29: XCTestCase {
  func readInput() -> Any {
    let (a, b): (Int, Int) = stdin()
    return (a, b)
  }

  let example1 = """
    11 11
    """

  let example2 = """
    18 18
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (a, b) = self.readInput() as! (Int, Int)

      XCTAssertEqual(a, 11)
      XCTAssertEqual(b, 11)
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (a, b) = self.readInput() as! (Int, Int)

      XCTAssertEqual(a, 18)
      XCTAssertEqual(b, 18)
    }).inputOnly(example2)
  }
}
