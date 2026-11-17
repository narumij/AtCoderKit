// verification-helper: PROBLEM https://judge.yosupo.jp/problem/sum_of_floor_of_linear
import AtCoderKit

@main
struct SumOfFloorOfLinear {
  static func main() {
    let t = Int.stdin
    var output: [Int] = []
    for _ in 0..<t {
      let n = Int.stdin, m = Int.stdin, a = Int.stdin, b = Int.stdin
      output.append(floor_sum(n, m, a, b))
    }
    output.print(separator: "\n")
  }
}
