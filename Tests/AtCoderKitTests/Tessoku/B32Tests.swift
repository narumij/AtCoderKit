import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_de
final class TessokuInputTestsB32: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    let a = [Int].stdin()
    return (N, K, a)
  }

  let example1 = """
    4 3
    7 12 17
    """

  let example2 = """
    5 3
    18 23 28
    """

  let example3 = """
    6 3
    29 34 39
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, a) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(a, [7, 12, 17])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, K, a) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(a, [18, 23, 28])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, K, a) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(a, [29, 34, 39])
    }).inputOnly(example3)
  }
}
