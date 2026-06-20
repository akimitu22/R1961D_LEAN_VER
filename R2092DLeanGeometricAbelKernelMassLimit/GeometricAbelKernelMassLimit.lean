import R2091DLeanConcreteRealAbelBoundary
import Mathlib.Analysis.SpecificLimits.Basic

namespace R2092DLeanGeometricAbelKernelMassLimit

open scoped BigOperators Topology
open Filter
open R2091DLeanConcreteRealAbelBoundary

/-- Every geometric Abel-kernel weight is nonnegative on `0 <= r <= 1`. -/
theorem geometric_abel_kernel_nonneg
    {r : Real} (hr0 : 0 <= r) (hr1 : r <= 1) (k : Nat) :
    0 <= geometricAbelKernel r k := by
  exact mul_nonneg (sub_nonneg.mpr hr1) (pow_nonneg hr0 k)

/-- Every finite geometric Abel-kernel mass is nonnegative. -/
theorem finite_geometric_abel_kernel_mass_nonneg
    {r : Real} (hr0 : 0 <= r) (hr1 : r <= 1) (m : Nat) :
    0 <= ∑ k ∈ Finset.range m, geometricAbelKernel r k := by
  exact Finset.sum_nonneg fun k _ => geometric_abel_kernel_nonneg hr0 hr1 k

/-- Every finite geometric Abel-kernel mass is at most one. -/
theorem finite_geometric_abel_kernel_mass_le_one
    {r : Real} (hr0 : 0 <= r) (m : Nat) :
    (∑ k ∈ Finset.range m, geometricAbelKernel r k) <= 1 := by
  rw [geometric_abel_kernel_mass]
  exact sub_le_self 1 (pow_nonneg hr0 m)

/-- For `0 <= r < 1`, the finite masses of the Abel kernel tend to one. -/
theorem finite_geometric_abel_kernel_mass_tendsto_one
    {r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    Tendsto (fun m : Nat => ∑ k ∈ Finset.range m, geometricAbelKernel r k)
      atTop (nhds 1) := by
  simpa [geometric_abel_kernel_mass] using
    (tendsto_const_nhds.sub
      (tendsto_pow_atTop_nhds_zero_of_lt_one hr0 hr1))

/-- Concrete finite-mass approximation data for the geometric Abel kernel. -/
structure GeometricAbelKernelMassLimitWitness (r : Real) where
  nonnegativeParameter : 0 <= r
  parameterBelowOne : r < 1
  kernelNonnegative : ∀ k, 0 <= geometricAbelKernel r k
  finiteMassNonnegative : ∀ m,
    0 <= ∑ k ∈ Finset.range m, geometricAbelKernel r k
  finiteMassLeOne : ∀ m,
    (∑ k ∈ Finset.range m, geometricAbelKernel r k) <= 1
  finiteMassTendstoOne :
    Tendsto (fun m : Nat => ∑ k ∈ Finset.range m, geometricAbelKernel r k)
      atTop (nhds 1)

/-- Construct the finite-mass limit witness from the natural parameter bounds. -/
def geometricAbelKernelMassLimitWitness
    {r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    GeometricAbelKernelMassLimitWitness r :=
  { nonnegativeParameter := hr0
    parameterBelowOne := hr1
    kernelNonnegative := geometric_abel_kernel_nonneg hr0 hr1.le
    finiteMassNonnegative := finite_geometric_abel_kernel_mass_nonneg hr0 hr1.le
    finiteMassLeOne := finite_geometric_abel_kernel_mass_le_one hr0
    finiteMassTendstoOne :=
      finite_geometric_abel_kernel_mass_tendsto_one hr0 hr1 }

end R2092DLeanGeometricAbelKernelMassLimit
