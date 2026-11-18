import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_ff
final class TessokuInputTestsC08: XCTestCase {
  func readInput() -> Any {
    let N = Int.stdin
    var pairs: [(String, Int)] = []
    for _ in 0..<N {
      let (text, value): (String, Int) = stdin()
      pairs.append((text, value))
    }
    return (N, pairs)
  }

  let example1 = """
    4
    0042 2
    0155 3
    0268 1
    0381 2
    """

  let example2 = """
    5
    0043 3
    0156 1
    0269 2
    0382 3
    0495 1
    """

  let example3 = """
    6
    0044 1
    0157 2
    0270 3
    0383 1
    0496 2
    0609 3
    """

  let example4 = """
    7
    0045 2
    0158 3
    0271 1
    0384 2
    0497 3
    0610 1
    0723 2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (N, pairs) = self.readInput() as! (Int, [(String, Int)])

      XCTAssertEqual(N, 4)
      let expectedPairs: [(String, Int)] = [("0042", 2), ("0155", 3), ("0268", 1), ("0381", 2)]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (N, pairs) = self.readInput() as! (Int, [(String, Int)])

      XCTAssertEqual(N, 5)
      let expectedPairs: [(String, Int)] = [
        ("0043", 3), ("0156", 1), ("0269", 2), ("0382", 3), ("0495", 1),
      ]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example2)
  }

  func testExample3() throws {
    try SolverRunner(solver: {
      let (N, pairs) = self.readInput() as! (Int, [(String, Int)])

      XCTAssertEqual(N, 6)
      let expectedPairs: [(String, Int)] = [
        ("0044", 1), ("0157", 2), ("0270", 3), ("0383", 1), ("0496", 2), ("0609", 3),
      ]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example3)
  }

  func testExample4() throws {
    try SolverRunner(solver: {
      let (N, pairs) = self.readInput() as! (Int, [(String, Int)])

      XCTAssertEqual(N, 7)
      let expectedPairs: [(String, Int)] = [
        ("0045", 2), ("0158", 3), ("0271", 1), ("0384", 2), ("0497", 3), ("0610", 1), ("0723", 2),
      ]
      XCTAssertEqual(pairs.count, expectedPairs.count)
      for (actual, expected) in zip(pairs, expectedPairs) {
        XCTAssertEqual(actual.0, expected.0)
        XCTAssertEqual(actual.1, expected.1)
      }
    }).inputOnly(example4)
  }
}
