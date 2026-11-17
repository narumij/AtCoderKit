// verification-helper: PROBLEM https://judge.yosupo.jp/problem/convolution_mod
import AtCoderKit

@main
struct Convolution {
  static func main() {
    let n = Int.stdin, m = Int.stdin
    let a = (0..<n).map { _ in Int.stdin }
    let b = (0..<m).map { _ in Int.stdin }
    let result = convolution(mod_998_244_353.self, a, b)
    result.print()
  }
}
