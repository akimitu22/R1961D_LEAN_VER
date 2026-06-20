import R2096DLeanInfiniteAbelSummationIdentity

namespace R2097DLeanConcreteRealAbelLimitTheorem

open scoped BigOperators Topology
open Filter
open R2090DLeanConcreteFiniteAbelSummation
open R2094DLeanConcreteBoundedAbelAverage
open R2096DLeanInfiniteAbelSummationIdentity

/-- The normalized real Abel averages of ordinary partial sums converge to
the ordinary series limit as `r -> 1` through `0 < r < 1`. -/
theorem real_abel_average_tendsto_of_partial_sums
    {a : Nat -> Real} {L M : Real}
    (hM : 0 <= M)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L))
    (hbound : ∀ n, |partialSum a n| <= M) :
    Tendsto (fun r : Real => realAbelAverage r (partialSum a))
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L) := by
  have hpower :
      Tendsto (fun r : Real => realPowerSeriesValue a r)
        (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L) := by
    have hmathlib := Real.tendsto_tsum_powerSeries_nhdsWithin_lt h
    have hmono :
        nhdsWithin (1 : Real) (Set.Ioo 0 1) <=
          nhdsWithin 1 (Set.Iio 1) :=
      nhdsWithin_mono 1 (fun _ hx => hx.2)
    simpa only [realPowerSeriesValue] using hmathlib.mono_left hmono
  refine hpower.congr' ?_
  filter_upwards [self_mem_nhdsWithin] with r hr
  exact infinite_abel_summation_identity hM hr.1.le hr.2 h hbound

/-- A proof-carrying, non-toy real Abel boundary theorem. -/
structure ConcreteRealAbelLimitWitness
    (a : Nat -> Real) (L M : Real) : Prop where
  boundNonnegative : 0 <= M
  partialSumsTendsto :
    Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)
  inclusivePartialSumsBounded : ∀ n, |partialSum a n| <= M
  abelAverageBoundaryLimit :
    Tendsto (fun r : Real => realAbelAverage r (partialSum a))
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L)

def concreteRealAbelLimitWitness
    {a : Nat -> Real} {L M : Real}
    (hM : 0 <= M)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L))
    (hbound : ∀ n, |partialSum a n| <= M) :
    ConcreteRealAbelLimitWitness a L M :=
  { boundNonnegative := hM
    partialSumsTendsto := h
    inclusivePartialSumsBounded := hbound
    abelAverageBoundaryLimit :=
      real_abel_average_tendsto_of_partial_sums hM h hbound }

end R2097DLeanConcreteRealAbelLimitTheorem
