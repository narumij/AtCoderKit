// verification-helper: PROBLEM https://judge.yosupo.jp/problem/scc
import AtCoderKit

@main
struct StronglyConnectedComponents {
  static func main() {
    let n = Int.stdin, m = Int.stdin
    var graph = SCCGraph(n)
    for _ in 0..<m {
      let from = Int.stdin, to = Int.stdin
      graph.add_edge(from, to)
    }
    let groups = graph.scc()
    print(groups.count)
    for group in groups {
      print(group.count, terminator: " ")
      group.print()
    }
  }
}
