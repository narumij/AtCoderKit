#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
case "$1" in
  Verification/UnionFind/unionfind.test.swift) product=UnionFind ;;
  Verification/PointAddRangeSum/point_add_range_sum.test.swift) product=PointAddRangeSum ;;
  Verification/SumOfFloorOfLinear/sum_of_floor_of_linear.test.swift) product=SumOfFloorOfLinear ;;
  Verification/Convolution/convolution_mod.test.swift) product=Convolution ;;
  Verification/StronglyConnectedComponents/scc.test.swift) product=StronglyConnectedComponents ;;
  Verification/NumberOfSubstrings/number_of_substrings.test.swift) product=NumberOfSubstrings ;;
  Verification/RangeAffineRangeSum/range_affine_range_sum.test.swift) product=RangeAffineRangeSum ;;
  Verification/PredecessorProblem/predecessor_problem.test.swift) product=PredecessorProblem ;;
  Verification/DoubleEndedPriorityQueue/double_ended_priority_queue.test.swift) product=DoubleEndedPriorityQueue ;;
  Verification/AssociativeArray/associative_array.test.swift) product=AssociativeArray ;;
  Verification/APlusB/aplusb.test.swift) product=APlusB ;;
  Verification/ManyAPlusB/many_aplusb.test.swift) product=ManyAPlusB ;;
  Verification/ManyAPlusB128/many_aplusb_128bit.test.swift) product=ManyAPlusB128 ;;
  *) echo "Unknown verification source: $1" >&2; exit 1 ;;
esac
swift build --package-path Verification -c release --product "$product"
bin_dir=$(swift build --package-path Verification -c release --show-bin-path)
mkdir -p "$2"
cp "$bin_dir/$product" "$2/a.out"
