// verification-helper: PROBLEM https://judge.yosupo.jp/problem/unionfind
import AtCoderKit

@main
struct UnionFind {
  static func main() {
    let n = Int.stdin
    let q = Int.stdin
    var dsu = DSU(n)
    var output: [Int] = []
    output.reserveCapacity(q)
    for _ in 0..<q {
      let t = Int.stdin
      let u = Int.stdin
      let v = Int.stdin
      if t == 0 {
        _ = dsu.merge(u, v)
      } else {
        output.append(dsu.same(u, v) ? 1 : 0)
      }
    }
    output.print(separator: "\n")
  }
}
