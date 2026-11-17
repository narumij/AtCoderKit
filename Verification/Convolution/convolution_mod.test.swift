// verification-helper: PROBLEM https://judge.yosupo.jp/problem/convolution_mod
import AtCoderKit

@main
struct Convolution {
  static func main() {
    _ = [Int].stdin()
    let a = [Int].stdin()
    let b = [Int].stdin()
    let result = convolution(mod_998_244_353.self, a, b)
    result.print()
  }
}
