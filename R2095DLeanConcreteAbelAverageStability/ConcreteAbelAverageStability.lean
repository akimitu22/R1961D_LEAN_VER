import R2094DLeanConcreteBoundedAbelAverage

namespace R2095DLeanConcreteAbelAverageStability

open scoped BigOperators Topology
open R2091DLeanConcreteRealAbelBoundary
open R2094DLeanConcreteBoundedAbelAverage

/-- The Abel average of the pointwise perturbation from `v` to `u`. -/
noncomputable def realAbelAverageDifference
    (r : Real) (u v : Nat -> Real) : Real :=
  realAbelAverage r (fun k => u k - v k)

theorem realAbelAverage_sub_of_summable
    {r : Real} {u v : Nat -> Real}
    (hu : Summable (abelWeightedTerm r u))
    (hv : Summable (abelWeightedTerm r v)) :
    realAbelAverage r (fun k => u k - v k) =
      realAbelAverage r u - realAbelAverage r v := by
  simpa only [realAbelAverage, abelWeightedTerm, mul_sub] using
    (hu.hasSum.sub hv.hasSum).tsum_eq

theorem realAbelAverageDifference_eq_sub
    {Mu Mv r : Real} (hMu : 0 <= Mu) (hMv : 0 <= Mv)
    (hr0 : 0 <= r) (hr1 : r < 1)
    {u v : Nat -> Real}
    (hu : ∀ k, |u k| <= Mu) (hv : ∀ k, |v k| <= Mv) :
    realAbelAverageDifference r u v =
      realAbelAverage r u - realAbelAverage r v := by
  unfold realAbelAverageDifference
  exact realAbelAverage_sub_of_summable
    (abel_weighted_terms_summable hMu hr0 hr1 hu)
    (abel_weighted_terms_summable hMv hr0 hr1 hv)

theorem difference_weighted_terms_summable
    {epsilon r : Real} (hepsilon : 0 <= epsilon)
    (hr0 : 0 <= r) (hr1 : r < 1)
    {u v : Nat -> Real} (huv : ∀ k, |u k - v k| <= epsilon) :
    Summable (abelWeightedTerm r (fun k => u k - v k)) :=
  abel_weighted_terms_summable hepsilon hr0 hr1 huv

theorem norm_realAbelAverageDifference_le
    {epsilon r : Real} (hepsilon : 0 <= epsilon)
    (hr0 : 0 <= r) (hr1 : r < 1)
    {u v : Nat -> Real} (huv : ∀ k, |u k - v k| <= epsilon) :
    ‖realAbelAverageDifference r u v‖ <= epsilon := by
  unfold realAbelAverageDifference
  exact norm_realAbelAverage_le hepsilon hr0 hr1 huv

theorem norm_realAbelAverage_sub_le
    {Mu Mv epsilon r : Real}
    (hMu : 0 <= Mu) (hMv : 0 <= Mv) (hepsilon : 0 <= epsilon)
    (hr0 : 0 <= r) (hr1 : r < 1)
    {u v : Nat -> Real}
    (hu : ∀ k, |u k| <= Mu) (hv : ∀ k, |v k| <= Mv)
    (huv : ∀ k, |u k - v k| <= epsilon) :
    ‖realAbelAverage r u - realAbelAverage r v‖ <= epsilon := by
  rw [← realAbelAverageDifference_eq_sub hMu hMv hr0 hr1 hu hv]
  exact norm_realAbelAverageDifference_le hepsilon hr0 hr1 huv

theorem abs_realAbelAverage_sub_le
    {Mu Mv epsilon r : Real}
    (hMu : 0 <= Mu) (hMv : 0 <= Mv) (hepsilon : 0 <= epsilon)
    (hr0 : 0 <= r) (hr1 : r < 1)
    {u v : Nat -> Real}
    (hu : ∀ k, |u k| <= Mu) (hv : ∀ k, |v k| <= Mv)
    (huv : ∀ k, |u k - v k| <= epsilon) :
    |realAbelAverage r u - realAbelAverage r v| <= epsilon := by
  simpa only [Real.norm_eq_abs] using
    norm_realAbelAverage_sub_le hMu hMv hepsilon hr0 hr1 hu hv huv

/-- A proof-carrying quantitative stability estimate for bounded Abel averages. -/
structure ConcreteAbelAverageStabilityWitness
    (Mu Mv epsilon r : Real) (u v : Nat -> Real) : Prop where
  firstBoundNonnegative : 0 <= Mu
  secondBoundNonnegative : 0 <= Mv
  perturbationNonnegative : 0 <= epsilon
  parameterNonnegative : 0 <= r
  parameterBelowOne : r < 1
  firstPointwiseBound : ∀ k, |u k| <= Mu
  secondPointwiseBound : ∀ k, |v k| <= Mv
  pointwiseDifferenceBound : ∀ k, |u k - v k| <= epsilon
  averageDifferenceIdentity :
    realAbelAverageDifference r u v =
      realAbelAverage r u - realAbelAverage r v
  averageDifferenceNormLe :
    ‖realAbelAverage r u - realAbelAverage r v‖ <= epsilon

def concreteAbelAverageStabilityWitness
    {Mu Mv epsilon r : Real}
    (hMu : 0 <= Mu) (hMv : 0 <= Mv) (hepsilon : 0 <= epsilon)
    (hr0 : 0 <= r) (hr1 : r < 1)
    {u v : Nat -> Real}
    (hu : ∀ k, |u k| <= Mu) (hv : ∀ k, |v k| <= Mv)
    (huv : ∀ k, |u k - v k| <= epsilon) :
    ConcreteAbelAverageStabilityWitness Mu Mv epsilon r u v :=
  { firstBoundNonnegative := hMu
    secondBoundNonnegative := hMv
    perturbationNonnegative := hepsilon
    parameterNonnegative := hr0
    parameterBelowOne := hr1
    firstPointwiseBound := hu
    secondPointwiseBound := hv
    pointwiseDifferenceBound := huv
    averageDifferenceIdentity :=
      realAbelAverageDifference_eq_sub hMu hMv hr0 hr1 hu hv
    averageDifferenceNormLe :=
      norm_realAbelAverage_sub_le hMu hMv hepsilon hr0 hr1 hu hv huv }

end R2095DLeanConcreteAbelAverageStability
