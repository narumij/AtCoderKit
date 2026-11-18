// verification-helper: PROBLEM https://judge.yosupo.jp/problem/predecessor_problem
import AtCoderKit
import IOUtil

@main
struct PredecessorProblem {
  static func main() {
    _ = Int.stdin
    let q = Int.stdin
    let bits = [UInt8].stdin
    var set = RedBlackTreeSet(bits.enumerated().lazy.filter { $0.element == 49 }.map { $0.offset })
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
