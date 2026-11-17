# AtCoderKitのLibrary Checker検証

practice2の出典になっているLibrary Checkerの7問と、赤黒木向けの3問、入出力向けの3問を、`import AtCoderKit`だけで解きます。IOReaderの`stdin`を使用し、単一の答えはその場で`print`、配列の計算結果はIOWriterの`print`で出力します。出力用の配列には溜めず、独自の入出力処理は持ち込みません。ModIntの入力もAtCoderKitの拡張を使います。

| practice2 | Library Checker | 使用機能 |
| --- | --- | --- |
| A | [Unionfind](https://judge.yosupo.jp/problem/unionfind) | DSU |
| B | [Point Add Range Sum](https://judge.yosupo.jp/problem/point_add_range_sum) | FenwickTree |
| C | [Sum of Floor of Linear](https://judge.yosupo.jp/problem/sum_of_floor_of_linear) | floor_sum |
| F | [Convolution](https://judge.yosupo.jp/problem/convolution_mod) | convolution |
| G | [Strongly Connected Components](https://judge.yosupo.jp/problem/scc) | SCCGraph |
| I | [Number of Substrings](https://judge.yosupo.jp/problem/number_of_substrings) | suffix_array / lcp_array |
| K | [Range Affine Range Sum](https://judge.yosupo.jp/problem/range_affine_range_sum) | LazySegTree / static_modint |

## 入出力の検証

| Library Checker | 使用機能 |
| --- | --- |
| [A + B](https://judge.yosupo.jp/problem/aplusb) | Int.stdinとprintによる基本の入出力 |
| [Many A + B](https://judge.yosupo.jp/problem/many_aplusb) | 最大100万組、各値10^18までの整数入出力 |
| [Many A + B (128 bit)](https://judge.yosupo.jp/problem/many_aplusb_128bit) | 最大50万組、負数を含むInt128.stdinと出力 |

## 赤黒木の検証

| Library Checker | 使用機能 |
| --- | --- |
| [Predecessor Problem](https://judge.yosupo.jp/problem/predecessor_problem) | RedBlackTreeSetの挿入・削除・存在確認・lowerBound / upperBound・前方へのIndex移動 |
| [Double-Ended Priority Queue](https://judge.yosupo.jp/problem/double_ended_priority_queue) | RedBlackTreeMultiSetの重複挿入・popFirst / popLast |
| [Associative Array](https://judge.yosupo.jp/problem/associative_array) | RedBlackTreeDictionaryのキーによる更新・取得、未登録キー |

Predecessorの初期集合は昇順のSequenceから構築します。前後検索ではendIndexとstartIndexを確認してから値へアクセスします。順位検索が必要なOrdered Setは対象に含めません。

AtCoderの問題そのものや非公開ケースは実行せず、Library Checkerの公開ケースとチェッカーを使用します。解答のオンライン提出は行いません。全パッケージ・全APIの網羅試験ではなく、統合した入口と入出力を通した利用例の検証です。

## 実行

Swift 6.2以降、Python 3.12、Git、C++コンパイラが必要です。初回は依存とケースの取得にネットワークを使います。リポジトリ直下で:

```sh
python3 -m venv Verification/.venv
. Verification/.venv/bin/activate
python -m pip install -r Verification/requirements.txt
bash Verification/run.sh
```

解答は独立した検証用パッケージでReleaseビルドします。通常の製品ターゲットに検証用依存は追加しません。毎回検証済み記録を消して全13問を再実行します。1ケース10秒はCI用の制限で、公式ジャッジでの時間保証ではありません。

GitHub ActionsのLibrary Checkerはmainへのpush、main向けPR、手動実行が対象です。ログは`library-checker-diagnostics`に保存します。SwiftPMの検証用Package.resolvedは生成物とし、CIではマニフェストに従って依存を解決します。
