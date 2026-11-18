import AcCollections
import AcFoundation

extension RedBlackTreeMultiSet: @retroactive IOReader.Numeric1D
where Element: IOReader.Numeric {}
