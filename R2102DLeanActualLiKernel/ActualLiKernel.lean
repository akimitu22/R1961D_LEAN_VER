import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

namespace R2102DLeanActualLiKernel

open scoped Real

/-- The canonical phase from equation (4.2) of the main manuscript. -/
noncomputable def actualLiPhase (n : Nat) (T : Real) : Real :=
  2 * (n : Real) * Real.arctan (1 / (2 * T))

/-- The actual oscillatory Li kernel from equation (4.1) of the main
manuscript. -/
noncomputable def actualLiKernel (n : Nat) (T : Real) : Real :=
  (8 * (n : Real) / (4 * T ^ 2 + 1)) * Real.sin (actualLiPhase n T)

theorem actual_li_kernel_denominator_pos (T : Real) :
    0 < 4 * T ^ 2 + 1 := by
  positivity

/-- On the positive half-line the canonical Li phase is positive. -/
theorem actual_li_phase_pos
    {n : Nat} (hn : 0 < n) {T : Real} (hT : 0 < T) :
    0 < actualLiPhase n T := by
  have hnR : 0 < (n : Real) := Nat.cast_pos.mpr hn
  have harg : 0 < 1 / (2 * T) := by positivity
  have hatan : 0 < Real.arctan (1 / (2 * T)) :=
    Real.arctan_pos.mpr harg
  unfold actualLiPhase
  positivity

/-- The positive-half-line phase lies in the canonical interval `(0, n * pi)`. -/
theorem actual_li_phase_lt_nat_mul_pi
    {n : Nat} (hn : 0 < n) (T : Real) :
    actualLiPhase n T < (n : Real) * Real.pi := by
  have hnR : 0 < (n : Real) := Nat.cast_pos.mpr hn
  have hatan := Real.arctan_lt_pi_div_two (1 / (2 * T))
  calc
    actualLiPhase n T =
        (2 * (n : Real)) * Real.arctan (1 / (2 * T)) := by
          simp [actualLiPhase, mul_assoc]
    _ < (2 * (n : Real)) * (Real.pi / 2) :=
      mul_lt_mul_of_pos_left hatan (by positivity)
    _ = (n : Real) * Real.pi := by ring

/-- The actual kernel is controlled by its exact rational amplitude. -/
theorem abs_actual_li_kernel_le (n : Nat) (T : Real) :
    |actualLiKernel n T| <= 8 * (n : Real) / (4 * T ^ 2 + 1) := by
  have hden : 0 < 4 * T ^ 2 + 1 := actual_li_kernel_denominator_pos T
  have hcoeff : 0 <= 8 * (n : Real) / (4 * T ^ 2 + 1) := by
    positivity
  calc
    |actualLiKernel n T| =
        (8 * (n : Real) / (4 * T ^ 2 + 1)) *
          |Real.sin (actualLiPhase n T)| := by
      rw [actualLiKernel, abs_mul, abs_of_nonneg hcoeff]
    _ <= (8 * (n : Real) / (4 * T ^ 2 + 1)) * 1 :=
      mul_le_mul_of_nonneg_left (Real.abs_sin_le_one _) hcoeff
    _ = 8 * (n : Real) / (4 * T ^ 2 + 1) := by ring

/-- A proof-carrying record of the exact kernel and its canonical phase range. -/
structure ActualLiKernelWitness (n : Nat) (T : Real) : Prop where
  indexPositive : 0 < n
  heightPositive : 0 < T
  phasePositive : 0 < actualLiPhase n T
  phaseBelowEndpoint : actualLiPhase n T < (n : Real) * Real.pi
  kernelBound :
    |actualLiKernel n T| <= 8 * (n : Real) / (4 * T ^ 2 + 1)

def actualLiKernelWitness
    {n : Nat} (hn : 0 < n) {T : Real} (hT : 0 < T) :
    ActualLiKernelWitness n T :=
  { indexPositive := hn
    heightPositive := hT
    phasePositive := actual_li_phase_pos hn hT
    phaseBelowEndpoint := actual_li_phase_lt_nat_mul_pi hn T
    kernelBound := abs_actual_li_kernel_le n T }

end R2102DLeanActualLiKernel
