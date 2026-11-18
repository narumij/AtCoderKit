import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fi
final class TessokuInputTestsC11: XCTestCase {
  func readInput() -> Any {
    let (N, K): (Int, Int) = stdin()
    let A = [Int].stdin()
    return (N, K, A)
  }

  let example1 = """
    4 3
    7 12 17 22
    """

  let example2 = """
    5 3
    18 23 28 33 38
    """

  let example3 = """
    6 3
    29 34 39 44 49 54
    """

  let example4 = """
    7 3
    40 45 50 55 60 65 70
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, K, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 4)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(A, [7, 12, 17, 22])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, K, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 5)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(A, [18, 23, 28, 33, 38])
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, K, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 6)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(A, [29, 34, 39, 44, 49, 54])
    }).inputOnly(example3)
  }

  func testExample4() throws {
    try SolverRunner(solver: {
      let (N, K, A) = self.readInput() as! (Int, Int, [Int])

      XCTAssertEqual(N, 7)
      XCTAssertEqual(K, 3)
      XCTAssertEqual(A, [40, 45, 50, 55, 60, 65, 70])
    }).inputOnly(example4)
  }
}
