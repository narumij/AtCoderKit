// verification-helper: PROBLEM https://judge.yosupo.jp/problem/double_ended_priority_queue
import AtCoderKit

@main
struct DoubleEndedPriorityQueue {
  static func main() {
    let n = Int.stdin, q = Int.stdin
    var set = RedBlackTreeMultiSet((0..<n).map { _ in Int.stdin })
    for _ in 0..<q {
      switch Int.stdin {
      case 0: set.insert(Int.stdin)
      case 1: print(set.popFirst()!)
      default: print(set.popLast()!)
      }
    }
  }
}
