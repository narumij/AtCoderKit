import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_fo
final class TessokuInputTestsC17: XCTestCase {
  func readInput() -> Any {
    let Q = Int.stdin
    var commands: [String] = []
    var words: [String] = []
    for _ in 0..<Q {
      let command = String.stdin
      commands.append(command)
      switch command {
      case "A", "B":
        let word = String.stdin
        words.append(word)
      case "C", "D": break
      default: XCTFail("Unexpected query type")
      }
    }
    return (Q, commands, words)
  }

  let example1 = """
    5
    A ember
    B jade
    D
    C
    D
    """

  let example2 = """
    5
    A ember
    B jade
    D
    C
    D
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (Q, commands, words) = self.readInput() as! (Int, [String], [String])

      XCTAssertEqual(Q, 5)
      XCTAssertEqual(commands, ["A", "B", "D", "C", "D"])
      XCTAssertEqual(words, ["ember", "jade"])
    }).inputOnly(example1)
  }

  func testExample2() throws {
    try SolverRunner(solver: {
      let (Q, commands, words) = self.readInput() as! (Int, [String], [String])

      XCTAssertEqual(Q, 5)
      XCTAssertEqual(commands, ["A", "B", "D", "C", "D"])
      XCTAssertEqual(words, ["ember", "jade"])
    }).inputOnly(example2)
  }
}
