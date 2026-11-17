// verification-helper: PROBLEM https://judge.yosupo.jp/problem/double_ended_priority_queue
import AtCoderKit

@main
struct DoubleEndedPriorityQueueHeap {
  static func main() {
    let n = Int.stdin, q = Int.stdin
    var heap = Heap<Int>.stdin(columns: n)
    for _ in 0..<q {
      switch Int.stdin {
      case 0: heap.insert(Int.stdin)
      case 1: print(heap.popMin()!)
      default: print(heap.popMax()!)
      }
    }
  }
}
