import R2105DLeanActualLiAbelWeight.ActualLiAbelWeight
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

namespace R2106DLeanFiniteLiBoundaryIntegration

open MeasureTheory Set
open R2104DLeanCanonicalLiPhaseInverse
open R2105DLeanActualLiAbelWeight

/-- The actual residual contribution on a finite phase interval. This is the
finite-interval form of the residual integral in equations (4.6) and (5.2). -/
noncomputable def finiteLiBoundaryIntegral
    (n : Nat) (cutoff residual : Real → Real) (a b : Real) : Real :=
  ∫ u in a..b, liBoundaryResidualIntegrand n cutoff residual u

/-- The endpoint ledger produced by integration by parts on `[a, b]`. -/
noncomputable def finiteLiBoundaryTerm
    (n : Nat) (cutoff residual : Real → Real) (a b : Real) : Real :=
  residual (canonicalLiPhaseInverse n b) * liAbelPrimitive n cutoff b -
    residual (canonicalLiPhaseInverse n a) * liAbelPrimitive n cutoff a

/-- The interior correction after the derivative is moved off the Abel
primitive. The supplied derivative is that of `residual ∘ T_n` in the phase
variable. -/
noncomputable def finiteLiInteriorCorrection
    (n : Nat) (cutoff phaseResidualDeriv : Real → Real) (a b : Real) : Real :=
  ∫ u in a..b, phaseResidualDeriv u * liAbelPrimitive n cutoff u

/-- Finite-interval integration by parts for the actual Li phase pullback.

The interval may be chosen inside `(0, n * pi)`. Endpoint or Stieltjes limits
require additional hypotheses and are deliberately not asserted here. -/
theorem finite_li_boundary_integral_by_parts
    {n : Nat} (hn : 0 < n)
    {cutoff cutoff' residual phaseResidualDeriv : Real → Real} {a b : Real}
    (hcutoff : ∀ u ∈ Set.uIcc a b, HasDerivAt cutoff (cutoff' u) u)
    (hresidual : ∀ u ∈ Set.uIcc a b,
      HasDerivAt (fun v ↦ residual (canonicalLiPhaseInverse n v))
        (phaseResidualDeriv u) u)
    (hresidualIntegrable :
      IntervalIntegrable phaseResidualDeriv volume a b)
    (hweightIntegrable :
      IntervalIntegrable (liAbelWeight n cutoff) volume a b) :
    finiteLiBoundaryIntegral n cutoff residual a b =
      finiteLiBoundaryTerm n cutoff residual a b -
        finiteLiInteriorCorrection n cutoff phaseResidualDeriv a b := by
  have hprimitive : ∀ u ∈ Set.uIcc a b,
      HasDerivAt (liAbelPrimitive n cutoff) (liAbelWeight n cutoff u) u := by
    intro u hu
    convert hasDerivAt_li_abel_primitive hn (hcutoff u hu) using 1
    exact li_abel_weight_eq hn (hcutoff u hu)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hresidual hprimitive hresidualIntegrable hweightIntegrable
  simpa [finiteLiBoundaryIntegral, finiteLiBoundaryTerm,
    finiteLiInteriorCorrection, liBoundaryResidualIntegrand] using hibp

/-- Proof-carrying finite Li boundary integration identity. -/
structure FiniteLiBoundaryIntegrationWitness
    (n : Nat) (cutoff cutoff' residual phaseResidualDeriv : Real → Real)
    (a b : Real) : Prop where
  indexPositive : 0 < n
  cutoffDerivative : ∀ u ∈ Set.uIcc a b,
    HasDerivAt cutoff (cutoff' u) u
  phaseResidualDerivative : ∀ u ∈ Set.uIcc a b,
    HasDerivAt (fun v ↦ residual (canonicalLiPhaseInverse n v))
      (phaseResidualDeriv u) u
  phaseResidualDerivIntegrable :
    IntervalIntegrable phaseResidualDeriv volume a b
  weightIntegrable : IntervalIntegrable (liAbelWeight n cutoff) volume a b
  integrationIdentity :
    finiteLiBoundaryIntegral n cutoff residual a b =
      finiteLiBoundaryTerm n cutoff residual a b -
        finiteLiInteriorCorrection n cutoff phaseResidualDeriv a b

def finiteLiBoundaryIntegrationWitness
    {n : Nat} (hn : 0 < n)
    {cutoff cutoff' residual phaseResidualDeriv : Real → Real} {a b : Real}
    (hcutoff : ∀ u ∈ Set.uIcc a b, HasDerivAt cutoff (cutoff' u) u)
    (hresidual : ∀ u ∈ Set.uIcc a b,
      HasDerivAt (fun v ↦ residual (canonicalLiPhaseInverse n v))
        (phaseResidualDeriv u) u)
    (hresidualIntegrable :
      IntervalIntegrable phaseResidualDeriv volume a b)
    (hweightIntegrable :
      IntervalIntegrable (liAbelWeight n cutoff) volume a b) :
    FiniteLiBoundaryIntegrationWitness n cutoff cutoff' residual
      phaseResidualDeriv a b :=
  { indexPositive := hn
    cutoffDerivative := hcutoff
    phaseResidualDerivative := hresidual
    phaseResidualDerivIntegrable := hresidualIntegrable
    weightIntegrable := hweightIntegrable
    integrationIdentity := finite_li_boundary_integral_by_parts hn hcutoff
      hresidual hresidualIntegrable hweightIntegrable }

end R2106DLeanFiniteLiBoundaryIntegration
