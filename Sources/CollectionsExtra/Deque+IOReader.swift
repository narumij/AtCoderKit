import Collections
import AcFoundation

extension Deque: @retroactive IOReader.Numeric1D
where Element: IOReader.Numeric {}
