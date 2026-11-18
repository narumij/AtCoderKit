import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_di
final class TessokuInputTestsB36: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    let S = [UInt8].stdin
    return (N, K, S)
  }

  let example1 = """
    4 3
    ()()
    """

  let example2 = """
    5 3
    )()()
    """

  let example3 = """
    6 3
    ()()()
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, S) = self.readInput() as! (Int, Int, [UInt8])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(S, Array("()()".utf8))
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, K, S) = self.readInput() as! (Int, Int, [UInt8])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(S, Array(")()()".utf8))
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, K, S) = self.readInput() as! (Int, Int, [UInt8])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(S, Array("()()()".utf8))
    }).inputOnly(example3)
  }
}
