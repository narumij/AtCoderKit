import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_w
final class TessokuInputTestsA23: XCTestCase {
  func readInput() -> Any {
    let (N, M): (Int, Int) = stdin()
    let A = [[Int]].stdin(rows: M, columns: N)
    return (N, M, A)
  }

  let example1 = """
    4 3
    1 3 2 1
    2 1 3 2
    3 2 1 3
    """

  let example2 = """
    5 3
    2 1 3 2 1
    3 2 1 3 2
    1 3 2 1 3
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, M, A) = self.readInput() as! (Int, Int, [[Int]])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(M, 3)
      XCTAssertEqual(A, [[1, 3, 2, 1], [2, 1, 3, 2], [3, 2, 1, 3]])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, M, A) = self.readInput() as! (Int, Int, [[Int]])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(M, 3)
      XCTAssertEqual(A, [[2, 1, 3, 2, 1], [3, 2, 1, 3, 2], [1, 3, 2, 1, 3]])
    }).inputOnly(example2)
  }
}
