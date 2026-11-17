import struct BigInt.BigInt
import IOReader

extension BigInt: @retroactive IOConversion, @retroactive IOReader.Numeric {
  @inlinable
  public static func read() throws -> (value: Self, separator: UInt8?) {
    try readTuple { .init($0 as String)! }
  }
}
