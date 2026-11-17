// verification-helper: PROBLEM https://judge.yosupo.jp/problem/number_of_substrings
import AtCoderKit

@main
struct NumberOfSubstrings {
  static func main() {
    let s = [UInt8].readLine()
    let sa = suffix_array(s)
    let lcp = lcp_array(s, sa)
    let result = s.count * (s.count + 1) / 2 - lcp.reduce(0, +)
    print(result)
  }
}
