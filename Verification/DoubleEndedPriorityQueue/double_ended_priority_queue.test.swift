// verification-helper: PROBLEM https://judge.yosupo.jp/problem/double_ended_priority_queue
import AtCoderKit

@main
struct DoubleEndedPriorityQueue {
  static func main() {
    let n = Int.stdin, q = Int.stdin
    var set = RedBlackTreeMultiSet((0..<n).map { _ in Int.stdin })
    var output: [Int] = []
    for _ in 0..<q {
      switch Int.stdin {
      case 0: set.insert(Int.stdin)
      case 1: output.append(set.popFirst()!)
      case 2: output.append(set.popLast()!)
      default: preconditionFailure("Unknown query")
      }
    }
    output.print(separator: "\n")
  }
}
