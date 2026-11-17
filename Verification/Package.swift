// swift-tools-version: 6.2
import PackageDescription

let problems = ["UnionFind", "PointAddRangeSum", "SumOfFloorOfLinear", "Convolution", "StronglyConnectedComponents", "NumberOfSubstrings", "RangeAffineRangeSum", "PredecessorProblem", "DoubleEndedPriorityQueue", "DoubleEndedPriorityQueueHeap", "AssociativeArray", "APlusB", "ManyAPlusB", "ManyAPlusB128"]
let package = Package(
  name: "AtCoderKitVerification",
  platforms: [.macOS(.v15)],
  dependencies: [.package(path: "..")],
  targets: problems.map { name in
    .executableTarget(
      name: name,
      dependencies: [.product(name: "AtCoderKit", package: "AtCoderKit")],
      path: name)
  }
)
