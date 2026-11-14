import AtCoderKit
import XCTest

final class SuffixArrayBisectTests: XCTestCase {

  /// 接尾辞配列を二分探索して、パターンの出現位置を昇順で返す。
  private func occurrences(of pattern: String, in s: String, sa: [Int]) -> [Int] {
    let chars = Array(s)
    let m = pattern.count
    // 各接尾辞を先頭 m 文字で切った文字列は、接尾辞配列の順に単調非減少になる
    let key: (Int) -> String = { String(chars[$0..<min($0 + m, chars.count)]) }
    let lo = sa.bisectLeft(pattern, key: key)
    let hi = sa.bisectRight(pattern, key: key)
    return sa[lo..<hi].sorted()
  }

  /// 素朴に全位置を調べた答え。
  private func naive(_ pattern: String, in s: String) -> [Int] {
    let chars = Array(s), p = Array(pattern)
    guard p.count <= chars.count else { return [] }
    return (0...(chars.count - p.count)).filter { Array(chars[$0..<$0 + p.count]) == p }
  }

  func testBanana() throws {
    let s = "banana"
    let sa = suffix_array(s)
    XCTAssertEqual(sa, [5, 3, 1, 0, 4, 2])
    XCTAssertEqual(occurrences(of: "ana", in: s, sa: sa), [1, 3])
    XCTAssertEqual(occurrences(of: "a", in: s, sa: sa), [1, 3, 5])
    XCTAssertEqual(occurrences(of: "ban", in: s, sa: sa), [0])
    XCTAssertEqual(occurrences(of: "nab", in: s, sa: sa), [])
    XCTAssertEqual(occurrences(of: "bananas", in: s, sa: sa), [])
  }

  func testAgainstNaive() throws {
    let s = "abracadabraabracadabra"
    let sa = suffix_array(s)
    for pattern in ["a", "ab", "abra", "cad", "ra", "dabraa", "z", "abracadabraabracadabra"] {
      XCTAssertEqual(occurrences(of: pattern, in: s, sa: sa), naive(pattern, in: s), pattern)
    }
  }
}
