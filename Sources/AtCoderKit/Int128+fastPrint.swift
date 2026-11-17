import Foundation

/// Int128を十進表記で直接標準出力へ出力する。
@inlinable
public func fastPrint(_ value: Int128, terminator: Int32? = 0x0A) {
  withUnsafeTemporaryAllocation(of: Int32.self, capacity: 39) { digits in
    var value = value
    let negative = value < 0
    if negative {
      putchar_unlocked(0x2D)
    }
    var count = 0
    repeat {
      let remainder = value % 10
      value /= 10
      // 負数のまま処理することでInt128.minも出力できる。
      digits[count] = 0x30 | Int32(negative ? -remainder : remainder)
      count += 1
    } while value != 0
    while count > 0 {
      count -= 1
      putchar_unlocked(digits[count])
    }
  }
  if let terminator {
    putchar_unlocked(terminator)
  }
}
