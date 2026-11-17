// verification-helper: PROBLEM https://judge.yosupo.jp/problem/predecessor_problem
import AtCoderKit

@main
struct PredecessorProblem {
  static func main() {
    let header = [Int].stdin()
    let q = header[1]
    let bits = [UInt8].readLine()
    var set = RedBlackTreeSet(bits.enumerated().lazy.filter { $0.element == 49 }.map { $0.offset })
    for _ in 0..<q {
      let type = Int.stdin, key = Int.stdin
      switch type {
      case 0: set.insert(key)
      case 1: set.remove(key)
      case 2: print(set.contains(key) ? 1 : 0)
      case 3:
        let index = set.lowerBound(key)
        print(index == set.endIndex ? -1 : set[index])
      default:
        let index = set.upperBound(key)
        print(index == set.startIndex ? -1 : set[set.index(before: index)])
      }
    }
  }
}
