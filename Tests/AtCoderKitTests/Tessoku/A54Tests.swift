import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_bb
final class TessokuInputTestsA54: XCTestCase {
  func readInput() -> Any {
    let Q = Int.stdin
    var commands: [Int] = []
    var words: [String] = []
    var scores: [Int] = []
    for _ in 0..<Q {
      let command = Int.stdin
      commands.append(command)
      switch command {
      case 1:
        let (name, score): (String, Int) = stdin()
        words.append(name)
        scores.append(score)
      case 2:
        let name = String.stdin
        words.append(name)
      default: XCTFail("Unexpected query type")
      }
    }
    return (Q, commands, words, scores)
  }

  let example1 = """
    3
    1 ember 31
    1 jade 47
    2 ember
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (Q, commands, words, scores) = self.readInput() as! (Int, [Int], [String], [Int])

      XCTAssertEqual(Q, 3)
      XCTAssertEqual(commands, [1, 1, 2])
      XCTAssertEqual(words, ["ember", "jade", "ember"])
      XCTAssertEqual(scores, [31, 47])
    }).inputOnly(example1)
  }
}
