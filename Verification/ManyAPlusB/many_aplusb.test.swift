// verification-helper: PROBLEM https://judge.yosupo.jp/problem/many_aplusb
import AtCoderKit

@main
struct ManyAPlusB {
  static func main() {
    let t = Int.stdin
    var output: [Int] = []
    output.reserveCapacity(t)
    for _ in 0..<t {
      let a = Int.stdin, b = Int.stdin
      output.append(a + b)
    }
    output.print(separator: "\n")
  }
}
