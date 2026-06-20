import R2092DLeanGeometricAbelKernelMassLimit
import Mathlib.Topology.Algebra.InfiniteSum.Ring

namespace R2093DLeanGeometricAbelKernelInfiniteNormalization

open scoped BigOperators Topology
open Filter
open R2091DLeanConcreteRealAbelBoundary

/-- For `0 <= r < 1`, the geometric Abel kernel has infinite sum one. -/
theorem geometric_abel_kernel_hasSum_one
    {r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    HasSum (geometricAbelKernel r) 1 := by
  exact
    (hasSum_iff_tendsto_nat_of_nonneg
      (fun k =>
        R2092DLeanGeometricAbelKernelMassLimit.geometric_abel_kernel_nonneg
          hr0 hr1.le k) 1).mpr
      (R2092DLeanGeometricAbelKernelMassLimit.finite_geometric_abel_kernel_mass_tendsto_one hr0 hr1)

/-- For `0 <= r < 1`, the geometric Abel kernel is summable. -/
theorem geometric_abel_kernel_summable
    {r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    Summable (geometricAbelKernel r) :=
  (geometric_abel_kernel_hasSum_one hr0 hr1).summable

/-- For `0 <= r < 1`, the `tsum` of the geometric Abel kernel is one. -/
theorem geometric_abel_kernel_tsum_eq_one
    {r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    (∑' k : Nat, geometricAbelKernel r k) = 1 :=
  (geometric_abel_kernel_hasSum_one hr0 hr1).tsum_eq

/-- A concrete proof-carrying infinite normalization of the Abel kernel. -/
structure GeometricAbelKernelInfiniteNormalizationWitness (r : Real) where
  nonnegativeParameter : 0 <= r
  parameterBelowOne : r < 1
  kernelNonnegative : ∀ k, 0 <= geometricAbelKernel r k
  hasSumOne : HasSum (geometricAbelKernel r) 1
  summable : Summable (geometricAbelKernel r)
  tsumEqOne : (∑' k : Nat, geometricAbelKernel r k) = 1

/-- Construct the infinite normalization witness from `0 <= r < 1`. -/
def geometricAbelKernelInfiniteNormalizationWitness
    {r : Real} (hr0 : 0 <= r) (hr1 : r < 1) :
    GeometricAbelKernelInfiniteNormalizationWitness r :=
  { nonnegativeParameter := hr0
    parameterBelowOne := hr1
    kernelNonnegative :=
      R2092DLeanGeometricAbelKernelMassLimit.geometric_abel_kernel_nonneg
        hr0 hr1.le
    hasSumOne := geometric_abel_kernel_hasSum_one hr0 hr1
    summable := geometric_abel_kernel_summable hr0 hr1
    tsumEqOne := geometric_abel_kernel_tsum_eq_one hr0 hr1 }

end R2093DLeanGeometricAbelKernelInfiniteNormalization
