import R2104DLeanCanonicalLiPhaseInverse.CanonicalLiPhaseInverse
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

namespace R2105DLeanActualLiAbelWeight

open scoped Real
open R2103DLeanLiPhaseNormalForm
open R2104DLeanCanonicalLiPhaseInverse

/-- The explicit derivative of the Li phase normal form `F_n`. -/
noncomputable def liPhaseNormalFormDeriv (n : Nat) (u : Real) : Real :=
  8 * Real.sin (u / (2 * (n : Real))) *
        Real.cos (u / (2 * (n : Real))) * Real.sin u +
    liPhaseAmplitude n u * Real.cos u

/-- The Abel-regularized phase primitive `a_sigma(u) F_n(u)` from equation
(4.6). -/
noncomputable def liAbelPrimitive
    (n : Nat) (cutoff : Real → Real) (u : Real) : Real :=
  cutoff u * liPhaseNormalForm n u

/-- The actual Li Abel weight `d/du {a_sigma(u) F_n(u)}` from equation (4.6). -/
noncomputable def liAbelWeight
    (n : Nat) (cutoff : Real → Real) (u : Real) : Real :=
  deriv (fun v => liAbelPrimitive n cutoff v) u

/-- The phase-coordinate residual integrand in equation (4.6). -/
noncomputable def liBoundaryResidualIntegrand
    (n : Nat) (cutoff residual : Real → Real) (u : Real) : Real :=
  residual (canonicalLiPhaseInverse n u) * liAbelWeight n cutoff u

theorem hasDerivAt_li_phase_normal_form
    {n : Nat} (hn : 0 < n) (u : Real) :
    HasDerivAt (liPhaseNormalForm n) (liPhaseNormalFormDeriv n u) u := by
  have hn0 : (n : Real) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hn)
  have harg :
      HasDerivAt (fun v : Real => v / (2 * (n : Real)))
        (1 / (2 * (n : Real))) u := by
    simpa using (hasDerivAt_id u).div_const (2 * (n : Real))
  have hnormal :=
    (((harg.sin.pow 2).const_mul (8 * (n : Real))).mul
      (Real.hasDerivAt_sin u))
  unfold liPhaseNormalForm liPhaseNormalFormDeriv liPhaseAmplitude
  convert hnormal using 1 <;> try rfl
  simp only [Pi.pow_apply]
  field_simp [hn0]
  ring_nf

theorem hasDerivAt_li_abel_primitive
    {n : Nat} (hn : 0 < n)
    {cutoff cutoff' : Real → Real} {u : Real}
    (hcutoff : HasDerivAt cutoff (cutoff' u) u) :
    HasDerivAt (liAbelPrimitive n cutoff)
      (cutoff' u * liPhaseNormalForm n u +
        cutoff u * liPhaseNormalFormDeriv n u) u := by
  change HasDerivAt (fun v => cutoff v * liPhaseNormalForm n v)
    (cutoff' u * liPhaseNormalForm n u +
      cutoff u * liPhaseNormalFormDeriv n u) u
  exact hcutoff.mul (hasDerivAt_li_phase_normal_form hn u)

theorem li_abel_weight_eq
    {n : Nat} (hn : 0 < n)
    {cutoff cutoff' : Real → Real} {u : Real}
    (hcutoff : HasDerivAt cutoff (cutoff' u) u) :
    liAbelWeight n cutoff u =
      cutoff' u * liPhaseNormalForm n u +
        cutoff u * liPhaseNormalFormDeriv n u := by
  exact (hasDerivAt_li_abel_primitive hn hcutoff).deriv

theorem li_phase_normal_form_zero_left (n : Nat) :
    liPhaseNormalForm n 0 = 0 := by
  simp [liPhaseNormalForm]

theorem li_phase_normal_form_zero_right (n : Nat) :
    liPhaseNormalForm n ((n : Real) * Real.pi) = 0 := by
  simp [liPhaseNormalForm]

/-- Proof-carrying realization of the actual phase derivative and Abel weight. -/
structure ActualLiAbelWeightWitness
    (n : Nat) (cutoff cutoff' : Real → Real) : Prop where
  indexPositive : 0 < n
  normalFormDerivative : ∀ u : Real,
    HasDerivAt (liPhaseNormalForm n) (liPhaseNormalFormDeriv n u) u
  primitiveDerivative : ∀ {u : Real}, HasDerivAt cutoff (cutoff' u) u →
    HasDerivAt (liAbelPrimitive n cutoff)
      (cutoff' u * liPhaseNormalForm n u +
        cutoff u * liPhaseNormalFormDeriv n u) u
  weightFormula : ∀ {u : Real}, HasDerivAt cutoff (cutoff' u) u →
    liAbelWeight n cutoff u =
      cutoff' u * liPhaseNormalForm n u +
        cutoff u * liPhaseNormalFormDeriv n u

def actualLiAbelWeightWitness
    {n : Nat} (hn : 0 < n) (cutoff cutoff' : Real → Real) :
    ActualLiAbelWeightWitness n cutoff cutoff' :=
  { indexPositive := hn
    normalFormDerivative := hasDerivAt_li_phase_normal_form hn
    primitiveDerivative := fun hcutoff =>
      hasDerivAt_li_abel_primitive hn hcutoff
    weightFormula := fun hcutoff => li_abel_weight_eq hn hcutoff }

end R2105DLeanActualLiAbelWeight
