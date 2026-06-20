import R2099DLeanBoundFreeRealAbelLimit

namespace R2100DLeanRealPowerSeriesAbelBoundary

open scoped BigOperators Topology
open Filter
open R2090DLeanConcreteFiniteAbelSummation
open R2094DLeanConcreteBoundedAbelAverage
open R2096DLeanInfiniteAbelSummationIdentity

/-- Abel's limit theorem for the original real power series.  Ordinary
convergence of the coefficient series is the only hypothesis. -/
theorem real_power_series_tendsto_of_partial_sums
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    Tendsto (fun r : Real => realPowerSeriesValue a r)
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L) := by
  have havg :=
    R2099DLeanBoundFreeRealAbelLimit.real_abel_average_tendsto_of_partial_sums h
  have heq :
      (fun r : Real => realPowerSeriesValue a r) =ᶠ[nhdsWithin 1 (Set.Ioo 0 1)]
        (fun r : Real => realAbelAverage r (partialSum a)) := by
    filter_upwards [self_mem_nhdsWithin] with r hr
    exact
      R2099DLeanBoundFreeRealAbelLimit.infinite_abel_summation_identity_of_tendsto
        (le_of_lt hr.1) hr.2 h
  exact Filter.Tendsto.congr' heq.symm havg

/-- A proof-carrying form of the real power-series Abel boundary theorem. -/
structure RealPowerSeriesAbelBoundaryWitness
    (a : Nat -> Real) (L : Real) : Prop where
  partialSumsTendsto :
    Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)
  interiorIdentity : ∀ r, 0 <= r -> r < 1 ->
    realPowerSeriesValue a r = realAbelAverage r (partialSum a)
  powerSeriesBoundaryLimit :
    Tendsto (fun r : Real => realPowerSeriesValue a r)
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L)

def realPowerSeriesAbelBoundaryWitness
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    RealPowerSeriesAbelBoundaryWitness a L :=
  { partialSumsTendsto := h
    interiorIdentity := fun _ hr0 hr1 =>
      R2099DLeanBoundFreeRealAbelLimit.infinite_abel_summation_identity_of_tendsto
        hr0 hr1 h
    powerSeriesBoundaryLimit := real_power_series_tendsto_of_partial_sums h }

end R2100DLeanRealPowerSeriesAbelBoundary
