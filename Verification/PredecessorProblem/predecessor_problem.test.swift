// verification-helper: PROBLEM https://judge.yosupo.jp/problem/predecessor_problem
import AtCoderKit
import IOUtil
#if canImport(Darwin)
import Darwin
#else
import Glibc
#endif

@main
struct PredecessorProblem {
  static func main() {
    run()
  }

  nonisolated static func run() {
    let n = Int.stdin
    let q = Int.stdin
    var set = RedBlackTreeSet(
      (0..<n).lazy.filter { _ in getchar_unlocked() == 49 }
    )
    for _ in 0..<q {
      let type = Int.stdin, key = Int.stdin
      switch type {
      case 0: set.insert(key)
      case 1: set.remove(key)
      case 2: fastPrint(set.contains(key) ? 1 : 0)
      case 3:
        fastPrint(set[.lowerBound(key)] ?? -1)
      default:
        fastPrint(set[.upperBound(key).before] ?? -1)
      }
    }
  }
}
