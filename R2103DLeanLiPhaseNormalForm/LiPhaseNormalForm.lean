import R2102DLeanActualLiKernel.ActualLiKernel
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

namespace R2103DLeanLiPhaseNormalForm

open scoped Real
open R2102DLeanActualLiKernel

/-- The nonnegative amplitude in the phase-coordinate form of the Li kernel. -/
noncomputable def liPhaseAmplitude (n : Nat) (u : Real) : Real :=
  8 * (n : Real) * Real.sin (u / (2 * (n : Real))) ^ 2

/-- The exact phase-coordinate normal form from equation (4.3). -/
noncomputable def liPhaseNormalForm (n : Nat) (u : Real) : Real :=
  liPhaseAmplitude n u * Real.sin u

theorem li_phase_amplitude_nonneg (n : Nat) (u : Real) :
    0 <= liPhaseAmplitude n u := by
  unfold liPhaseAmplitude
  positivity

theorem abs_li_phase_normal_form_le_amplitude (n : Nat) (u : Real) :
    |liPhaseNormalForm n u| <= liPhaseAmplitude n u := by
  have hamp : 0 <= liPhaseAmplitude n u := li_phase_amplitude_nonneg n u
  calc
    |liPhaseNormalForm n u| =
        liPhaseAmplitude n u * |Real.sin u| := by
      rw [liPhaseNormalForm, abs_mul, abs_of_nonneg hamp]
    _ <= liPhaseAmplitude n u * 1 :=
      mul_le_mul_of_nonneg_left (Real.abs_sin_le_one u) hamp
    _ = liPhaseAmplitude n u := by ring

/-- Exact conversion of the rational Li amplitude to its arctangent phase
amplitude. -/
theorem actual_li_rational_amplitude_eq_phase_amplitude
    {n : Nat} {T : Real} (hT : T ≠ 0) :
    8 * (n : Real) / (4 * T ^ 2 + 1) =
      8 * (n : Real) * Real.sin (Real.arctan (1 / (2 * T))) ^ 2 := by
  rw [Real.sin_sq_arctan]
  have hden : 4 * T ^ 2 + 1 ≠ 0 := by
    positivity
  have hargden : 1 + (1 / (2 * T)) ^ 2 ≠ 0 := by
    positivity
  field_simp [hT, hden, hargden]
  all_goals ring

/-- Equation (4.3) on the positive Li phase domain: pulling the actual kernel
into its own canonical phase gives `8 n sin^2(u/(2n)) sin u`. -/
theorem actual_li_kernel_eq_phase_normal_form
    {n : Nat} (hn : 0 < n) {T : Real} (hT : 0 < T) :
    actualLiKernel n T = liPhaseNormalForm n (actualLiPhase n T) := by
  have hn0 : (n : Real) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hn)
  have hphase :
      actualLiPhase n T / (2 * (n : Real)) =
        Real.arctan (1 / (2 * T)) := by
    unfold actualLiPhase
    field_simp [hn0]
  rw [actualLiKernel, liPhaseNormalForm, liPhaseAmplitude, hphase]
  rw [actual_li_rational_amplitude_eq_phase_amplitude (ne_of_gt hT)]

/-- A proof-carrying exact phase-coordinate realization of the actual kernel. -/
structure LiPhaseNormalFormWitness (n : Nat) (T : Real) : Prop where
  indexPositive : 0 < n
  heightPositive : 0 < T
  exactPhaseNormalForm :
    actualLiKernel n T = liPhaseNormalForm n (actualLiPhase n T)
  phaseAmplitudeNonnegative :
    0 <= liPhaseAmplitude n (actualLiPhase n T)

def liPhaseNormalFormWitness
    {n : Nat} (hn : 0 < n) {T : Real} (hT : 0 < T) :
    LiPhaseNormalFormWitness n T :=
  { indexPositive := hn
    heightPositive := hT
    exactPhaseNormalForm := actual_li_kernel_eq_phase_normal_form hn hT
    phaseAmplitudeNonnegative := li_phase_amplitude_nonneg n (actualLiPhase n T) }

end R2103DLeanLiPhaseNormalForm
