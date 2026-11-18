import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ak
final class TessokuInputTestsA37: XCTestCase {
  func readInput() -> Any {
    let (N, M, B): (Int, Int, Int) = stdin()
    let A = [Int].stdin()
    let C = [Int].stdin()
    return (N, M, B, A, C)
  }

  let example1 = """
    4 3 11
    7 12 17 22
    7 12 17
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, M, B, A, C) = self.readInput() as! (Int, Int, Int, [Int], [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(M, 3)
      XCTAssertEqual(B, 11)
      XCTAssertEqual(A, [7, 12, 17, 22])
      XCTAssertEqual(C, [7, 12, 17])
    }).inputOnly(example1)
  }
}
