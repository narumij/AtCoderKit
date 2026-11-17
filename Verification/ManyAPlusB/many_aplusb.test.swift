// verification-helper: PROBLEM https://judge.yosupo.jp/problem/many_aplusb
import AtCoderKit
import IOUtil

@main
struct ManyAPlusB {
  static func main() {
    let t = Int.stdin
    for _ in 0..<t {
      let a = Int.stdin, b = Int.stdin
      fastPrint(a + b)
    }
  }
}
