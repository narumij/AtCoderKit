import AtCoderKit
import TestingUtil
import XCTest

final class Int128PrintTests: XCTestCase {
  func testExtremesAndTerminators() throws {
    let values: [Int128] = [.min, .max, 0, -1, 1, -10, 10, Int128(Int64.max) + 1]
    let output = try SolverRunner(solver: {
      for value in values {
        fastPrint(value)
      }
      fastPrint(Int128(12), terminator: nil)
      fastPrint(Int128(34), terminator: 0x20)
      fastPrint(Int128(-5))
    }).run(input: "")
    XCTAssertEqual(output, values.map { String($0) }.joined(separator: "\n") + "\n1234 -5")
  }
}
