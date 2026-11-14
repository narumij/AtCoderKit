// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "AtCoderKit",
  products: [
    .library(name: "AtCoderKit", targets: ["AtCoderKit"])
  ],
  dependencies: [
    .package(url: "https://github.com/narumij/swift-ac-foundation", branch: "main"),
    .package(url: "https://github.com/narumij/swift-ac-collections", branch: "main"),
    .package(url: "https://github.com/narumij/swift-ac-library", branch: "main"),
    .package(url: "https://github.com/attaswift/BigInt", from: "5.7.0"),
    .package(url: "https://github.com/narumij/swift-bignum", branch: "main"),
    .package(url: "https://github.com/apple/swift-collections", from: "1.6.0"),
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.2.1"),
    .package(url: "https://github.com/apple/swift-numerics", from: "1.1.1"),
  ],
  targets: [
    .target(
      name: "AtCoderKit",
      dependencies: [
        .product(name: "AcFoundation", package: "swift-ac-foundation"),
        .product(name: "AcCollections", package: "swift-ac-collections"),
        .product(name: "AtCoder", package: "swift-ac-library"),
        .product(name: "BigInt", package: "BigInt"),
        .product(name: "BigNum", package: "swift-bignum"),
        .product(name: "Collections", package: "swift-collections"),
        .product(name: "Algorithms", package: "swift-algorithms"),
        .product(name: "Numerics", package: "swift-numerics"),
      ]
    ),
    .testTarget(name: "AtCoderKitTests", dependencies: ["AtCoderKit"]),
  ]
)
