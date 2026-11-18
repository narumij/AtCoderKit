import AtCoderKit
import TestingUtil
import XCTest

// 公式入力例の転載許諾を得ていないため、自作のダミーデータを使用しています。
// https://atcoder.jp/contests/tessoku-book/tasks/tessoku_book_az
final class TessokuInputTestsA52: XCTestCase {
  func readInput() -> Any {
    let Q = Int.stdin
    var commands: [Int] = []
    var words: [String] = []
    for _ in 0..<Q {
      let command = Int.stdin
      commands.append(command)
      switch command {
      case 1:
        let word = String.stdin
        words.append(word)
      case 2, 3: break
      default: XCTFail("Unexpected query type")
      }
    }
    return (Q, commands, words)
  }

  let example1 = """
    5
    1 ember
    1 jade
    2
    3
    2
    """

  func testExample1() throws {
    try SolverRunner(solver: {
      let (Q, commands, words) = self.readInput() as! (Int, [Int], [String])

      XCTAssertEqual(Q, 5)
      XCTAssertEqual(commands, [1, 1, 2, 3, 2])
      XCTAssertEqual(words, ["ember", "jade"])
    }).inputOnly(example1)
  }
}
