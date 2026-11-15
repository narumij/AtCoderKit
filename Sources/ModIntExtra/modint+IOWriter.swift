import AtCoder
import IOUtil
import IOWriter

extension Sequence where Element: modint_base {

  /// 空白区切りで標準出力へ出力する
  @inlinable
  public func print(separator: String = " ", terminator: String = "\n") {
    lazy.map(\.val).print(separator: separator, terminator: terminator)
  }

  /// 空白区切りで標準出力へ出力する
  @inlinable
  public func fastPrint(separator: String = " ", terminator: String = "\n") {
    lazy.map(\.val).fastPrint(separator: separator, terminator: terminator)
  }
}

extension Sequence where Element: Sequence, Element.Element: modint_base {

  @inlinable
  public func print(separator: String = " ", terminator: String = "\n") {
    forEach {
      $0.print(separator: separator, terminator: terminator)
    }
  }

  @inlinable
  public func fastPrint(separator: String = " ", terminator: String = "\n") {
    forEach {
      $0.fastPrint(separator: separator, terminator: terminator)
    }
  }
}

@inlinable
@inline(__always)
public func fastPrint<M: modint_base>(_ x: M, terminator: Int32? = 0x0A) {
  IOUtil.fastPrint(x.val, terminator: terminator)
}

/// 数字出力用です。
@inlinable
@inline(__always)
public func fastPrint<C, M>(_ a: C, separator: Int32 = 0x20, terminator: Int32 = 0x0A)
where C: Collection, C.Element == M, C.Index == Int, M: modint_base {
  IOUtil.fastPrint(a, \.val, separator: separator, terminator: terminator)
}
