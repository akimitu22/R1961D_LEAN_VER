import Mathlib.Data.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.Ring

namespace R2090DLeanConcreteFiniteAbelSummation

open scoped BigOperators

/-- The inclusive finite partial sum `a 0 + ... + a n`. -/
def partialSum (a : Nat -> Real) (n : Nat) : Real :=
  ∑ k ∈ Finset.range (n + 1), a k

/--
Finite Abel summation (summation by parts) for real sequences.  This is an
actual finite-sum identity, with no analytic-realization proposition assumed.
-/
theorem finite_abel_summation (a b : Nat -> Real) (n : Nat) :
    (∑ k ∈ Finset.range (n + 1), a k * b k) =
      partialSum a n * b n +
        ∑ k ∈ Finset.range n, partialSum a k * (b k - b (k + 1)) := by
  induction n with
  | zero => simp [partialSum]
  | succ n ih =>
      rw [Finset.sum_range_succ, ih, Finset.sum_range_succ]
      simp only [partialSum, Finset.sum_range_succ]
      ring

end R2090DLeanConcreteFiniteAbelSummation
