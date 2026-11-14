import BigInt
import BigIntExtra
import IOReader
import TestingUtil
import XCTest

final class BigIntReaderTests: XCTestCase {

  func testBigInt() throws {
    try SolverRunner(solver: {
      XCTAssertEqual(BigInt.stdin, 3)
      XCTAssertEqual(BigInt.stdin, -1)
    })
    .inputOnly("3\n-1")
  }

  @available(macOS 15.0, *)
  func testBigIntBeyondInt64() throws {
    XCTAssertEqual(
      try SolverRunner(solver: {
        print(BigInt.stdin)
        print(BigInt.stdin)
        print(BigInt.stdin)
      })
      .run(
        input:
          """
          \(Int128.max)
          \(Int128.min)
          \(UInt128.max)
          """),
      """
      \(Int128.max)
      \(Int128.min)
      \(UInt128.max)
      """)
  }

  func testBigIntLine() throws {
    try SolverRunner(solver: {
      let A: [BigInt] = .stdin()
      let B: [BigInt] = .stdin()
      XCTAssertEqual(A, [1, 2, 3])
      XCTAssertEqual(B, [4])
    })
    .inputOnly("1 2 3\n4")
  }
}
