import R2097DLeanConcreteRealAbelLimitTheorem
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

namespace R2098DLeanConvergentPartialSumBound

open scoped BigOperators Topology
open Filter
open R2090DLeanConcreteFiniteAbelSummation

/-- Every convergent real sequence admits a global absolute bound. -/
theorem exists_abs_bound_of_tendsto_real
    {u : Nat -> Real} {L : Real}
    (h : Tendsto u atTop (nhds L)) :
    ∃ M : Real, 0 <= M ∧ ∀ n, |u n| <= M := by
  obtain ⟨N, hN⟩ := (Metric.tendsto_atTop.mp h) 1 zero_lt_one
  let M : Real :=
    |L| + 1 + ∑ k ∈ Finset.range N, |u k|
  refine ⟨M, ?_, ?_⟩
  · dsimp [M]
    positivity
  · intro n
    by_cases hn : n < N
    · have hprefix :
          |u n| <= ∑ k ∈ Finset.range N, |u k| := by
        exact Finset.single_le_sum
          (fun k _ => abs_nonneg (u k))
          (Finset.mem_range.mpr hn)
      have hbase : 0 <= |L| + 1 := by positivity
      dsimp [M]
      linarith
    · have hnN : N <= n := Nat.le_of_not_gt hn
      have hdist : dist (u n) L < 1 := hN n hnN
      have hdelta : |u n - L| < 1 := by
        simpa only [Real.dist_eq] using hdist
      have htriangle : |u n| <= |u n - L| + |L| := by
        calc
          |u n| = |(u n - L) + L| := by rw [sub_add_cancel]
          _ <= |u n - L| + |L| := abs_add_le _ _
      have hsum : 0 <= ∑ k ∈ Finset.range N, |u k| := by
        exact Finset.sum_nonneg fun k _ => abs_nonneg (u k)
      dsimp [M]
      linarith

/-- Convergence of ordinary partial sums supplies the inclusive bound required
by the concrete Abel-average layer. -/
theorem exists_inclusive_partial_sum_abs_bound
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    ∃ M : Real, 0 <= M ∧ ∀ n, |partialSum a n| <= M := by
  exact exists_abs_bound_of_tendsto_real
    (R2096DLeanInfiniteAbelSummationIdentity.inclusive_partial_sum_tendsto h)

/-- A proof-carrying global bound derived solely from partial-sum convergence. -/
structure ConvergentPartialSumBoundWitness
    (a : Nat -> Real) (L : Real) where
  bound : Real
  boundNonnegative : 0 <= bound
  inclusivePartialSumsBounded : ∀ n, |partialSum a n| <= bound

noncomputable def convergentPartialSumBoundWitness
    {a : Nat -> Real} {L : Real}
    (h : Tendsto (fun n : Nat => ∑ k ∈ Finset.range n, a k)
      atTop (nhds L)) :
    ConvergentPartialSumBoundWitness a L :=
  let hex := exists_inclusive_partial_sum_abs_bound h
  { bound := Classical.choose hex
    boundNonnegative := (Classical.choose_spec hex).1
    inclusivePartialSumsBounded := (Classical.choose_spec hex).2 }

end R2098DLeanConvergentPartialSumBound
