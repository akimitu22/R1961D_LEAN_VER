import R2093DLeanGeometricAbelKernelInfiniteNormalization
import Mathlib.Analysis.Normed.Group.InfiniteSum

namespace R2094DLeanConcreteBoundedAbelAverage

open scoped BigOperators Topology
open Filter
open R2091DLeanConcreteRealAbelBoundary

/-- The geometric Abel kernel scaled by a nonnegative bound. -/
def scaledAbelKernel (M r : Real) (k : Nat) : Real :=
  geometricAbelKernel r k * M

/-- The `k`-th weighted term in the real Abel average of `u`. -/
def abelWeightedTerm (r : Real) (u : Nat -> Real) (k : Nat) : Real :=
  geometricAbelKernel r k * u k

/-- The infinite real Abel average associated with the normalized kernel. -/
noncomputable def realAbelAverage (r : Real) (u : Nat -> Real) : Real :=
  ∑' k : Nat, abelWeightedTerm r u k

theorem scaled_abel_kernel_nonneg
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1) (k : Nat) :
    0 <= scaledAbelKernel M r k := by
  exact mul_nonneg
    (R2092DLeanGeometricAbelKernelMassLimit.geometric_abel_kernel_nonneg
      hr0 hr1.le k)
    hM

theorem finite_scaled_abel_kernel_mass_tendsto
    {M r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    Tendsto (fun m : Nat => ∑ k ∈ Finset.range m, scaledAbelKernel M r k)
      atTop (nhds M) := by
  have h :=
    (R2092DLeanGeometricAbelKernelMassLimit.finite_geometric_abel_kernel_mass_tendsto_one
      hr0 hr1).mul_const M
  simpa only [scaledAbelKernel, ← Finset.sum_mul, one_mul] using h

theorem scaled_abel_kernel_hasSum
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1) :
    HasSum (scaledAbelKernel M r) M := by
  exact
    (hasSum_iff_tendsto_nat_of_nonneg
      (scaled_abel_kernel_nonneg hM hr0 hr1) M).mpr
      (finite_scaled_abel_kernel_mass_tendsto hr0 hr1)

theorem scaled_abel_kernel_summable
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1) :
    Summable (scaledAbelKernel M r) :=
  (scaled_abel_kernel_hasSum hM hr0 hr1).summable

theorem abel_weighted_term_norm_le_scaled_kernel
    {M r : Real} (hr0 : 0 <= r) (hr1 : r < 1)
    {u : Nat -> Real} (hu : ∀ k, |u k| <= M) (k : Nat) :
    ‖abelWeightedTerm r u k‖ <= scaledAbelKernel M r k := by
  have hk : 0 <= geometricAbelKernel r k :=
    R2092DLeanGeometricAbelKernelMassLimit.geometric_abel_kernel_nonneg
      hr0 hr1.le k
  simpa only [abelWeightedTerm, scaledAbelKernel, Real.norm_eq_abs,
    abs_mul, abs_of_nonneg hk] using mul_le_mul_of_nonneg_left (hu k) hk

theorem abel_weighted_terms_summable
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    {u : Nat -> Real} (hu : ∀ k, |u k| <= M) :
    Summable (abelWeightedTerm r u) := by
  exact Summable.of_norm_bounded
    (scaled_abel_kernel_summable hM hr0 hr1)
    (abel_weighted_term_norm_le_scaled_kernel hr0 hr1 hu)

theorem norm_realAbelAverage_le
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    {u : Nat -> Real} (hu : ∀ k, |u k| <= M) :
    ‖realAbelAverage r u‖ <= M := by
  unfold realAbelAverage
  exact tsum_of_norm_bounded
    (scaled_abel_kernel_hasSum hM hr0 hr1)
    (abel_weighted_term_norm_le_scaled_kernel hr0 hr1 hu)

theorem abs_realAbelAverage_le
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    {u : Nat -> Real} (hu : ∀ k, |u k| <= M) :
    |realAbelAverage r u| <= M := by
  simpa only [Real.norm_eq_abs] using
    norm_realAbelAverage_le hM hr0 hr1 hu

/-- A proof-carrying bounded infinite Abel average. -/
structure ConcreteBoundedAbelAverageWitness
    (M r : Real) (u : Nat -> Real) : Prop where
  boundNonnegative : 0 <= M
  parameterNonnegative : 0 <= r
  parameterBelowOne : r < 1
  pointwiseBound : ∀ k, |u k| <= M
  weightedTermsSummable : Summable (abelWeightedTerm r u)
  averageNormLe : ‖realAbelAverage r u‖ <= M
  averageAbsLe : |realAbelAverage r u| <= M

def concreteBoundedAbelAverageWitness
    {M r : Real} (hM : 0 <= M) (hr0 : 0 <= r) (hr1 : r < 1)
    {u : Nat -> Real} (hu : ∀ k, |u k| <= M) :
    ConcreteBoundedAbelAverageWitness M r u :=
  { boundNonnegative := hM
    parameterNonnegative := hr0
    parameterBelowOne := hr1
    pointwiseBound := hu
    weightedTermsSummable := abel_weighted_terms_summable hM hr0 hr1 hu
    averageNormLe := norm_realAbelAverage_le hM hr0 hr1 hu
    averageAbsLe := abs_realAbelAverage_le hM hr0 hr1 hu }

end R2094DLeanConcreteBoundedAbelAverage
