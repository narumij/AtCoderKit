import Collections
import AcFoundation

extension Heap: @retroactive IOReader.Numeric1D
where Element: IOReader.Numeric {}
