import R2095DLeanConcreteAbelAverageStability
import Mathlib.Analysis.Complex.AbelLimit

namespace R2096DLeanInfiniteAbelSummationIdentity

open scoped BigOperators Topology
open Filter
open R2090DLeanConcreteFiniteAbelSummation
open R2091DLeanConcreteRealAbelBoundary
open R2094DLeanConcreteBoundedAbelAverage

/-- The real power-series value associated with `a` at `r`. -/
noncomputable def realPowerSeriesValue
    (a : Nat -> Real) (r : Real) : Real :=
  ∑' k : Nat, a k * r ^ k

theorem inclusive_partial_sum_tendsto
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    Tendsto (partialSum a) atTop (nhds L) := by
  change Tendsto
    (fun n : Nat => ∑ k ∈ Finset.range (n + 1), a k)
    atTop (nhds L)
  simpa only [Function.comp_def] using
    h.comp (tendsto_add_atTop_nat 1)

theorem real_power_series_summable_inside_unit_interval
    {a : Nat -> Real} {L r : Real}
    (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    Summable (fun k : Nat => a k * r ^ k) := by
  have hrnorm : ‖r‖ < 1 := by
    simpa only [Real.norm_eq_abs, abs_of_nonneg hr0] using hr1
  exact summable_powerSeries_of_norm_lt_one h.cauchySeq hrnorm

theorem partial_sum_boundary_term_tendsto_zero
    {a : Nat -> Real} {L r : Real}
    (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    Tendsto (fun n : Nat => partialSum a n * r ^ n) atTop (nhds 0) := by
  have hs : Tendsto (partialSum a) atTop (nhds L) :=
    inclusive_partial_sum_tendsto h
  simpa only [mul_zero] using
    hs.mul (tendsto_pow_atTop_nhds_zero_of_lt_one hr0 hr1)

theorem finite_abel_transform_tendsto_power_series
    {a : Nat -> Real} {L r : Real}
    (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    Tendsto (fun n : Nat => finiteAbelTransform a n r) atTop
      (nhds (realPowerSeriesValue a r)) := by
  have hs :=
    (real_power_series_summable_inside_unit_interval hr0 hr1 h).hasSum.tendsto_sum_nat
  have hs' := hs.comp (tendsto_add_atTop_nat 1)
  simpa only [finiteAbelTransform, realPowerSeriesValue,
    Function.comp_def] using hs'

theorem finite_abel_transform_tendsto_abel_average
    {a : Nat -> Real} {L M r : Real}
    (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L))
    (hbound : ∀ n, |partialSum a n| <= M) :
    Tendsto (fun n : Nat => finiteAbelTransform a n r) atTop
      (nhds (realAbelAverage r (partialSum a))) := by
  have hboundary := partial_sum_boundary_term_tendsto_zero hr0 hr1 h
  have havg :=
    (abel_weighted_terms_summable hM hr0 hr1 hbound).hasSum.tendsto_sum_nat
  have hright :
      Tendsto
        (fun n : Nat =>
          partialSum a n * r ^ n +
            ∑ k ∈ Finset.range n,
              partialSum a k * geometricAbelKernel r k)
        atTop (nhds (realAbelAverage r (partialSum a))) := by
    simpa only [realAbelAverage, abelWeightedTerm, zero_add, mul_comm] using
      hboundary.add havg
  exact hright.congr'
    (Eventually.of_forall fun n =>
      (finite_abel_transform_identity a n r).symm)

/-- Infinite Abel summation: the power series equals the normalized Abel
average of its ordinary partial sums for `0 <= r < 1`. -/
theorem infinite_abel_summation_identity
    {a : Nat -> Real} {L M r : Real}
    (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L))
    (hbound : ∀ n, |partialSum a n| <= M) :
    realPowerSeriesValue a r = realAbelAverage r (partialSum a) := by
  exact tendsto_nhds_unique
    (finite_abel_transform_tendsto_power_series hr0 hr1 h)
    (finite_abel_transform_tendsto_abel_average hM hr0 hr1 h hbound)

/-- A proof-carrying infinite Abel-summation identity. -/
structure InfiniteAbelSummationIdentityWitness
    (a : Nat -> Real) (L M r : Real) : Prop where
  boundNonnegative : 0 <= M
  parameterNonnegative : 0 <= r
  parameterBelowOne : r < 1
  partialSumsTendsto :
    Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)
  inclusivePartialSumsBounded : ∀ n, |partialSum a n| <= M
  boundaryTermTendstoZero :
    Tendsto (fun n : Nat => partialSum a n * r ^ n) atTop (nhds 0)
  infiniteIdentity :
    realPowerSeriesValue a r = realAbelAverage r (partialSum a)

def infiniteAbelSummationIdentityWitness
    {a : Nat -> Real} {L M r : Real}
    (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L))
    (hbound : ∀ n, |partialSum a n| <= M) :
    InfiniteAbelSummationIdentityWitness a L M r :=
  { boundNonnegative := hM
    parameterNonnegative := hr0
    parameterBelowOne := hr1
    partialSumsTendsto := h
    inclusivePartialSumsBounded := hbound
    boundaryTermTendstoZero :=
      partial_sum_boundary_term_tendsto_zero hr0 hr1 h
    infiniteIdentity :=
      infinite_abel_summation_identity hM hr0 hr1 h hbound }

end R2096DLeanInfiniteAbelSummationIdentity
