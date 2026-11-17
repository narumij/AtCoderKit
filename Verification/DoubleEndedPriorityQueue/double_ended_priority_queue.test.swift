// verification-helper: PROBLEM https://judge.yosupo.jp/problem/double_ended_priority_queue
import AtCoderKit

@main
struct DoubleEndedPriorityQueue {
  static func main() {
    let header = [Int].stdin()
    let q = header[1]
    var set = RedBlackTreeMultiSet<Int>.stdin(columns: header[0])
    for _ in 0..<q {
      switch Int.stdin {
      case 0: set.insert(Int.stdin)
      case 1: print(set.popFirst()!)
      default: print(set.popLast()!)
      }
    }
  }
}
