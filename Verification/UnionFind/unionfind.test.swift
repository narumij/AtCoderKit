// verification-helper: PROBLEM https://judge.yosupo.jp/problem/unionfind
import AtCoderKit

@main
struct UnionFind {
  static func main() {
    let n = Int.stdin
    let q = Int.stdin
    var dsu = DSU(n)
    for _ in 0..<q {
      let t = Int.stdin
      let u = Int.stdin
      let v = Int.stdin
      if t == 0 {
        _ = dsu.merge(u, v)
      } else {
        print(dsu.same(u, v) ? 1 : 0)
      }
    }
  }
}
