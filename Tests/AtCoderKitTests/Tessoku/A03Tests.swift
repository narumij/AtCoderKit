import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_c
final class TessokuInputTestsA03: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    let P = [Int].stdin()
    let Q = [Int].stdin()
    return (N, K, P, Q)
  }

  let example1 = """
    4 3
    7 12 17 22
    7 12 17 22
    """

  let example2 = """
    5 3
    18 23 28 33 38
    18 23 28 33 38
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, P, Q) = self.readInput() as! (Int, Int, [Int], [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(P, [7, 12, 17, 22])
      XCTAssertEqual(Q, [7, 12, 17, 22])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, K, P, Q) = self.readInput() as! (Int, Int, [Int], [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(P, [18, 23, 28, 33, 38])
      XCTAssertEqual(Q, [18, 23, 28, 33, 38])
    }).inputOnly(example2)
  }
}
