import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/abc007_3
final class TessokuInputTestsB63: XCTestCase {
  func readInput() -> Any {
    let (R, C): (Int, Int) = stdin()
    let (X, Y): (Int, Int) = stdin()
    let (X2, Y2): (Int, Int) = stdin()
    let c = (0..<R).map { _ in [UInt8].stdin }
    return (R, C, X, Y, X2, Y2, c)
  }

  let example1 = """
    3 4
    11 11
    11 11
    .#.#
    .#.#
    .#.#
    """

  let example2 = """
    4 4
    18 18
    18 18
    #.#.
    #.#.
    #.#.
    #.#.
    """

  let example3 = """
    3 4
    25 25
    25 25
    .#.#
    .#.#
    .#.#
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (R, C, X, Y, X2, Y2, c) = self.readInput() as! (Int, Int, Int, Int, Int, Int, [[UInt8]])

      XCTAssertEqual(R, 3)
      XCTAssertEqual(C, 4)
      XCTAssertEqual(X, 11)
      XCTAssertEqual(Y, 11)
      XCTAssertEqual(X2, 11)
      XCTAssertEqual(Y2, 11)
      XCTAssertEqual(c, [Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8)])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (R, C, X, Y, X2, Y2, c) = self.readInput() as! (Int, Int, Int, Int, Int, Int, [[UInt8]])

      XCTAssertEqual(R, 4)
      XCTAssertEqual(C, 4)
      XCTAssertEqual(X, 18)
      XCTAssertEqual(Y, 18)
      XCTAssertEqual(X2, 18)
      XCTAssertEqual(Y2, 18)
      XCTAssertEqual(
        c, [Array("#.#.".utf8), Array("#.#.".utf8), Array("#.#.".utf8), Array("#.#.".utf8)])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (R, C, X, Y, X2, Y2, c) = self.readInput() as! (Int, Int, Int, Int, Int, Int, [[UInt8]])

      XCTAssertEqual(R, 3)
      XCTAssertEqual(C, 4)
      XCTAssertEqual(X, 25)
      XCTAssertEqual(Y, 25)
      XCTAssertEqual(X2, 25)
      XCTAssertEqual(Y2, 25)
      XCTAssertEqual(c, [Array(".#.#".utf8), Array(".#.#".utf8), Array(".#.#".utf8)])
    }).inputOnly(example3)
  }
}
