// verification-helper: PROBLEM https://judge.yosupo.jp/problem/point_add_range_sum
import AtCoderKit

@main
struct PointAddRangeSum {
  static func main() {
    let n = Int.stdin, q = Int.stdin
    var tree = FenwickTree<Int>(n)
    for i in 0..<n { tree.add(i, Int.stdin) }
    var output: [Int] = []
    for _ in 0..<q {
      let t = Int.stdin, a = Int.stdin, b = Int.stdin
      if t == 0 { tree.add(a, b) }
      else { output.append(tree.sum(a, b)) }
    }
    output.print(separator: "\n")
  }
}
