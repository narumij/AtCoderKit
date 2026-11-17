import AtCoder
import IOReader

extension static_modint: @retroactive IOConversion, @retroactive IOReader.Numeric {
  @inlinable
  public static func read() throws -> (value: Self, separator: UInt8?) {
    try readTuple { .init($0 as Int) }
  }
}

extension dynamic_modint: @retroactive IOConversion, @retroactive IOReader.Numeric {
  @inlinable
  public static func read() throws -> (value: Self, separator: UInt8?) {
    try readTuple { .init($0 as Int) }
  }
}
