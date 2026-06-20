import R2098DLeanConvergentPartialSumBound

namespace R2099DLeanBoundFreeRealAbelLimit

open scoped BigOperators Topology
open Filter
open R2090DLeanConcreteFiniteAbelSummation
open R2094DLeanConcreteBoundedAbelAverage
open R2096DLeanInfiniteAbelSummationIdentity

/-- Infinite Abel summation with no separately supplied boundedness premise. -/
theorem infinite_abel_summation_identity_of_tendsto
    {a : Nat -> Real} {L r : Real}
    (hr0 : 0 <= r) (hr1 : r < 1)
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    realPowerSeriesValue a r = realAbelAverage r (partialSum a) := by
  obtain ⟨M, hM, hbound⟩ :=
    R2098DLeanConvergentPartialSumBound.exists_inclusive_partial_sum_abs_bound h
  exact infinite_abel_summation_identity hM hr0 hr1 h hbound

/-- The concrete real Abel boundary theorem with its redundant `hbound`
premise eliminated. -/
theorem real_abel_average_tendsto_of_partial_sums
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    Tendsto (fun r : Real => realAbelAverage r (partialSum a))
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L) := by
  obtain ⟨M, hM, hbound⟩ :=
    R2098DLeanConvergentPartialSumBound.exists_inclusive_partial_sum_abs_bound h
  exact
    R2097DLeanConcreteRealAbelLimitTheorem.real_abel_average_tendsto_of_partial_sums
      hM h hbound

/-- For convergent ordinary partial sums, the power-series value and normalized
Abel average agree throughout `0 <= r < 1`, and the average converges at the
boundary without an independent boundedness hypothesis. -/
structure BoundFreeRealAbelLimitWitness
    (a : Nat -> Real) (L : Real) : Prop where
  partialSumsTendsto :
    Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)
  interiorIdentity : ∀ r, 0 <= r -> r < 1 ->
    realPowerSeriesValue a r = realAbelAverage r (partialSum a)
  boundaryLimit :
    Tendsto (fun r : Real => realAbelAverage r (partialSum a))
      (nhdsWithin 1 (Set.Ioo 0 1)) (nhds L)

def boundFreeRealAbelLimitWitness
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    BoundFreeRealAbelLimitWitness a L :=
  { partialSumsTendsto := h
    interiorIdentity := fun _ hr0 hr1 =>
      infinite_abel_summation_identity_of_tendsto hr0 hr1 h
    boundaryLimit := real_abel_average_tendsto_of_partial_sums h }

end R2099DLeanBoundFreeRealAbelLimit
