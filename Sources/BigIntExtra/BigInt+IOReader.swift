import struct BigInt.BigInt
import IOReader

extension BigInt: @retroactive IOConversion, @retroactive IOReader.Numeric {
  @inlinable
  public static func read() throws -> Self { .init(try readTuple() as String)! }
}
