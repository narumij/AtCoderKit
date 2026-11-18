import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/future_contest_2018_qual_a
final class TessokuInputTestsA50: XCTestCase {
  func readInput() -> Any {
    let A = [[Int]].stdin(rows: 100, columns: 100)
    return A
  }

  // 高さ1の山を同じ位置へ1000回足した自作盤面。
  let example = (0..<100).map { row in
    (0..<100).map { column in row == 2 && column == 3 ? "1000" : "0" }.joined(separator: " ")
  }.joined(separator: "\n")

  func testGeneratedBoard() throws {
    try SolverRunner(solver: {
      let A = self.readInput() as! [[Int]]
      var expected = Array(repeating: Array(repeating: 0, count: 100), count: 100)
      expected[2][3] = 1000
      XCTAssertEqual(A, expected)
    }).inputOnly(example)
  }
}
