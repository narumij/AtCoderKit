// verification-helper: PROBLEM https://judge.yosupo.jp/problem/associative_array
import AtCoderKit
import IOUtil

@main
struct AssociativeArray {
  static func main() {
    let q = Int.stdin
    var dictionary = RedBlackTreeDictionary<Int, Int>()
    for _ in 0..<q {
      let type = Int.stdin, key = Int.stdin
      if type == 0 { dictionary[key] = Int.stdin }
      else { fastPrint(dictionary[key] ?? 0) }
    }
  }
}
