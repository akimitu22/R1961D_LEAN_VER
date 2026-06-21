import R2106DLeanFiniteLiBoundaryIntegration.FiniteLiBoundaryIntegration
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

namespace R2107DLeanSmoothZeroCountingDensity

/-- The standard smooth zero-counting main term from equation (5.1). -/
noncomputable def smoothZeroCountingMain (T : Real) : Real :=
  T / (2 * Real.pi) * Real.log (T / (2 * Real.pi)) -
    T / (2 * Real.pi) + 7 / 8

/-- The smooth zero density `M'(T)` on positive heights. -/
noncomputable def smoothZeroCountingDensity (T : Real) : Real :=
  Real.log (T / (2 * Real.pi)) / (2 * Real.pi)

theorem smooth_zero_counting_argument_pos {T : Real} (hT : 0 < T) :
    0 < T / (2 * Real.pi) := by
  positivity

/-- The derivative of the exact smooth main term is the standard logarithmic
zero density. -/
theorem hasDerivAt_smooth_zero_counting_main
    {T : Real} (hT : 0 < T) :
    HasDerivAt smoothZeroCountingMain (smoothZeroCountingDensity T) T := by
  have hden : 2 * Real.pi ≠ 0 := by positivity
  have harg :
      HasDerivAt (fun x : Real ↦ x / (2 * Real.pi))
        (1 / (2 * Real.pi)) T := by
    simpa using (hasDerivAt_id T).div_const (2 * Real.pi)
  have harg0 : T / (2 * Real.pi) ≠ 0 :=
    ne_of_gt (smooth_zero_counting_argument_pos hT)
  have hmain := (harg.mul (harg.log harg0)).sub harg |>.add_const (7 / 8)
  unfold smoothZeroCountingMain smoothZeroCountingDensity
  convert hmain using 1
  field_simp [hden, harg0]
  ring

theorem differentiableAt_smooth_zero_counting_main
    {T : Real} (hT : 0 < T) :
    DifferentiableAt Real smoothZeroCountingMain T :=
  (hasDerivAt_smooth_zero_counting_main hT).differentiableAt

theorem deriv_smooth_zero_counting_main
    {T : Real} (hT : 0 < T) :
    deriv smoothZeroCountingMain T = smoothZeroCountingDensity T :=
  (hasDerivAt_smooth_zero_counting_main hT).deriv

/-- Proof-carrying realization of the smooth term and its density in (5.1). -/
structure SmoothZeroCountingDensityWitness : Prop where
  mainDerivative : ∀ {T : Real}, 0 < T →
    HasDerivAt smoothZeroCountingMain (smoothZeroCountingDensity T) T
  derivativeValue : ∀ {T : Real}, 0 < T →
    deriv smoothZeroCountingMain T = smoothZeroCountingDensity T

def smoothZeroCountingDensityWitness : SmoothZeroCountingDensityWitness :=
  { mainDerivative := hasDerivAt_smooth_zero_counting_main
    derivativeValue := deriv_smooth_zero_counting_main }

end R2107DLeanSmoothZeroCountingDensity
