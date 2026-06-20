import R2090DLeanConcreteFiniteAbelSummation
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Tactic.FunProp

namespace R2091DLeanConcreteRealAbelBoundary

open scoped BigOperators Topology
open Filter
open R2090DLeanConcreteFiniteAbelSummation

/-- The geometric Abel kernel `(1 - r) r^k`. -/
def geometricAbelKernel (r : Real) (k : Nat) : Real :=
  (1 - r) * r ^ k

/-- The finite Abel transform of `a 0, ..., a n`. -/
def finiteAbelTransform (a : Nat -> Real) (n : Nat) (r : Real) : Real :=
  ∑ k ∈ Finset.range (n + 1), a k * r ^ k

/-- The geometric Abel kernel has the exact finite mass `1 - r^m`. -/
theorem geometric_abel_kernel_mass (r : Real) (m : Nat) :
    (∑ k ∈ Finset.range m, geometricAbelKernel r k) = 1 - r ^ m := by
  induction m with
  | zero => simp [geometricAbelKernel]
  | succ m ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [geometricAbelKernel, pow_succ]
      ring

/-- Abel summation specialized to the geometric weights `r^k`. -/
theorem finite_abel_transform_identity (a : Nat -> Real) (n : Nat) (r : Real) :
    finiteAbelTransform a n r =
      partialSum a n * r ^ n +
        ∑ k ∈ Finset.range n, partialSum a k * geometricAbelKernel r k := by
  have hdiff : ∀ k : Nat, r ^ k - r ^ (k + 1) = geometricAbelKernel r k := by
    intro k
    simp only [geometricAbelKernel, pow_succ]
    ring
  simpa [finiteAbelTransform, hdiff] using
    (finite_abel_summation a (fun k => r ^ k) n)

/-- Every finite real Abel transform is a continuous function of `r`. -/
theorem finite_abel_transform_continuous (a : Nat -> Real) (n : Nat) :
    Continuous (finiteAbelTransform a n) := by
  unfold finiteAbelTransform
  fun_prop

/-- At `r = 1`, the finite Abel transform is the ordinary partial sum. -/
theorem finite_abel_transform_same_scale (a : Nat -> Real) (n : Nat) :
    finiteAbelTransform a n 1 = partialSum a n := by
  simp [finiteAbelTransform, partialSum]

/-- The finite Abel transform tends to the ordinary partial sum as `r -> 1`. -/
theorem finite_abel_boundary_limit (a : Nat -> Real) (n : Nat) :
    Tendsto (finiteAbelTransform a n) (nhds 1) (nhds (partialSum a n)) := by
  have h :
      Tendsto (finiteAbelTransform a n) (nhds (1 : Real))
        (nhds (finiteAbelTransform a n 1)) :=
    (finite_abel_transform_continuous a n).continuousAt
  simpa [finite_abel_transform_same_scale] using h

/-- The one-sided Abel boundary limit `r -> 1-`. -/
theorem finite_abel_boundary_limit_below (a : Nat -> Real) (n : Nat) :
    Tendsto (finiteAbelTransform a n) (nhdsWithin 1 (Set.Iio 1))
      (nhds (partialSum a n)) := by
  exact tendsto_nhdsWithin_of_tendsto_nhds (finite_abel_boundary_limit a n)

/--
An unconditional, non-toy witness carrying the concrete finite Abel object,
identity, normalization, continuity, and boundary limit.
-/
structure ConcreteRealAbelBoundaryWitness (a : Nat -> Real) (n : Nat) where
  transform : Real -> Real
  transform_eq : transform = finiteAbelTransform a n
  finiteIdentity : ∀ r, transform r =
    partialSum a n * r ^ n +
      ∑ k ∈ Finset.range n, partialSum a k * geometricAbelKernel r k
  kernelMass : ∀ r m,
    (∑ k ∈ Finset.range m, geometricAbelKernel r k) = 1 - r ^ m
  continuous : Continuous transform
  sameScale : transform 1 = partialSum a n
  boundaryLimit : Tendsto transform (nhds 1) (nhds (partialSum a n))
  boundaryLimitBelow : Tendsto transform (nhdsWithin 1 (Set.Iio 1))
    (nhds (partialSum a n))

/-- Construct the concrete real Abel-boundary witness without assumptions. -/
def concreteRealAbelBoundaryWitness (a : Nat -> Real) (n : Nat) :
    ConcreteRealAbelBoundaryWitness a n :=
  { transform := finiteAbelTransform a n
    transform_eq := rfl
    finiteIdentity := finite_abel_transform_identity a n
    kernelMass := geometric_abel_kernel_mass
    continuous := finite_abel_transform_continuous a n
    sameScale := finite_abel_transform_same_scale a n
    boundaryLimit := finite_abel_boundary_limit a n
    boundaryLimitBelow := finite_abel_boundary_limit_below a n }

end R2091DLeanConcreteRealAbelBoundary
