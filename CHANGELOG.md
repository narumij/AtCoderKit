# Changelog

このプロジェクトの主な変更点を記録します。

フォーマットは [Keep a Changelog](https://keepachangelog.com/ja/1.1.0/) に基づいています。

## [Unreleased]

### Added

- AtCoderKit 統合パッケージを作成
  - `AcFoundation`、`AcCollections`、`AtCoder`、`BigNum`、`Collections`、`Algorithms`、`Numerics` を `@_exported import` で一括公開
- `static_modint` / `dynamic_modint` を `IOReader` で標準入力から読み込めるように対応
- `Power` ターゲットを追加
  - べき乗演算子 `**`（`FixedWidthInteger` と `Double` 向け）
- `Multiply` ターゲットを追加
  - `Array * Int` やタプル指定による多次元配列の生成
  - `String * Int` による文字列の繰り返し
- `BigIntExtra` ターゲットを追加
  - attaswift/BigInt の `BigInt` を `IOReader` で読み込めるように対応
  - `BigInt ** Int` のべき乗演算子（swift-ac-foundation から移動）
- `BigNumExtra` ターゲットを追加
  - swift-bignum の `BigInt` を `IOReader` で読み込めるように対応
- suffix array の二分探索テストを追加
