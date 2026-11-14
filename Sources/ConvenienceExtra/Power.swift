import BigInt
import Convenience

/// lhsのrhs乗
///
/// ```
/// 2 ** 3 // 8
/// ```
///
///
/// pythonでよく見かけて便利そうだったので追加
@inlinable
@inline(__always)
public func ** (lhs: BigInt, rhs: Int) -> BigInt {
  lhs.power(rhs)
}
