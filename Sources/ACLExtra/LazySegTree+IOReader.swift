import AtCoder
import AcFoundation

extension LazySegTree: @retroactive IOReader.Numeric1D where S: IOReader.Numeric {
  public typealias Element = S

  @inlinable
  public init<Elements: Sequence>(_ values: Elements) where Elements.Element == S {
    self.init(Array(values))
  }
}
