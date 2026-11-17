// verification-helper: PROBLEM https://judge.yosupo.jp/problem/many_aplusb_128bit
import AtCoderKit

@main
struct ManyAPlusB128 {
  static func main() {
    let t = Int.stdin
    for _ in 0..<t {
      let a = Int128.stdin, b = Int128.stdin
      print(a + b)
    }
  }
}
