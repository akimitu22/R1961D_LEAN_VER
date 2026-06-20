import R2100DLeanRealPowerSeriesAbelBoundary

namespace R2101DLeanHasSumAbelBoundary

open scoped BigOperators Topology
open Filter
open R2096DLeanInfiniteAbelSummationIdentity

/-- A convergent real series remains summable after multiplication by `r ^ k`
inside the unit interval, with sum equal to `realPowerSeriesValue`. -/
theorem weighted_power_series_hasSum_of_hasSum
    {a : Nat -> Real} {L r : Real}
    (hr0 : 0 <= r) (hr1 : r < 1) (h : HasSum a L) :
    HasSum (fun k : Nat => a k * r ^ k) (realPowerSeriesValue a r) := by
  have hs :=
    real_power_series_summable_inside_unit_interval hr0 hr1 (h.tendsto_sum_nat)
  simpa only [realPowerSeriesValue] using hs.hasSum

/-- `HasSum`-native form of Abel's real boundary theorem. -/
theorem real_power_series_tendsto_of_hasSum
    {a : Nat -> Real} {L : Real} (h : HasSum a L) :
    Tendsto (fun r : Real => realPowerSeriesValue a r)
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L) :=
  R2100DLeanRealPowerSeriesAbelBoundary.real_power_series_tendsto_of_partial_sums
    (h.tendsto_sum_nat)

/-- Summable-series form, with the boundary value written as the ordinary
infinite sum. -/
theorem real_power_series_tendsto_tsum_of_summable
    {a : Nat -> Real} (h : Summable a) :
    Tendsto (fun r : Real => realPowerSeriesValue a r)
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds (∑' k : Nat, a k)) :=
  real_power_series_tendsto_of_hasSum h.hasSum

/-- A proof-carrying `HasSum` interface containing both the interior weighted
sum and the boundary limit. -/
structure HasSumAbelBoundaryWitness
    (a : Nat -> Real) (L : Real) : Prop where
  originalHasSum : HasSum a L
  weightedHasSum : ∀ r, 0 <= r -> r < 1 ->
    HasSum (fun k : Nat => a k * r ^ k) (realPowerSeriesValue a r)
  boundaryLimit :
    Tendsto (fun r : Real => realPowerSeriesValue a r)
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L)

def hasSumAbelBoundaryWitness
    {a : Nat -> Real} {L : Real} (h : HasSum a L) :
    HasSumAbelBoundaryWitness a L :=
  { originalHasSum := h
    weightedHasSum := fun _ hr0 hr1 =>
      weighted_power_series_hasSum_of_hasSum hr0 hr1 h
    boundaryLimit := real_power_series_tendsto_of_hasSum h }

end R2101DLeanHasSumAbelBoundary
