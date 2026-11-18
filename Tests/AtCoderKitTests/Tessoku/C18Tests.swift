import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/typical90_s
final class TessokuInputTestsC18: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    let A = [Int].stdin()
    return (N, A)
  }

  let example1 = """
    4
    7 12 17 22 27 32 37 42
    """

  let example2 = """
    5
    18 23 28 33 38 43 48 53 58 63
    """

  let example3 = """
    6
    29 34 39 44 49 54 59 64 69 74 79 84
    """

  let example4 = """
    7
    40 45 50 55 60 65 70 75 80 85 90 95 100 105
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(A, [7, 12, 17, 22, 27, 32, 37, 42])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(A, [18, 23, 28, 33, 38, 43, 48, 53, 58, 63])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(A, [29, 34, 39, 44, 49, 54, 59, 64, 69, 74, 79, 84])
    }).inputOnly(example3)
  }

  func testExample4() throws {
    try SolverRunner(solver: {
      let (N, A) = self.readInput() as! (Int, [Int])

      XCTAssertEqual(N, 7)
      XCTAssertEqual(A, [40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105])
    }).inputOnly(example4)
  }
}
