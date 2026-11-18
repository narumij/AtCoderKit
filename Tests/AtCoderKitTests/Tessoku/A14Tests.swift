import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_n
final class TessokuInputTestsA14: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    let A = [Int].stdin()
    let B = [Int].stdin()
    let C = [Int].stdin()
    let D = [Int].stdin()
    return (N, K, A, B, C, D)
  }

  let example1 = """
    4 3
    7 12 17 22
    7 12 17 22
    7 12 17 22
    7 12 17 22
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, A, B, C, D) = self.readInput() as! (Int, Int, [Int], [Int], [Int], [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(A, [7, 12, 17, 22])
      XCTAssertEqual(B, [7, 12, 17, 22])
      XCTAssertEqual(C, [7, 12, 17, 22])
      XCTAssertEqual(D, [7, 12, 17, 22])
    }).inputOnly(example1)
  }
}
