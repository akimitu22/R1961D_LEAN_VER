import R2103DLeanLiPhaseNormalForm.LiPhaseNormalForm
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

namespace R2104DLeanCanonicalLiPhaseInverse

open scoped Real
open R2102DLeanActualLiKernel
open R2103DLeanLiPhaseNormalForm

/-- The inverse phase coordinate `T_n(u)` from equation (4.2) of the main
manuscript. -/
noncomputable def canonicalLiPhaseInverse (n : Nat) (u : Real) : Real :=
  1 / (2 * Real.tan (u / (2 * (n : Real))))

/-- The canonical height attached to the phase-cell endpoint `k * pi`, as in
equation (4.4). -/
noncomputable def canonicalLiCellBoundary (n k : Nat) : Real :=
  canonicalLiPhaseInverse n ((k : Real) * Real.pi)

theorem canonical_li_cell_boundary_eq (n k : Nat) :
    canonicalLiCellBoundary n k =
      canonicalLiPhaseInverse n ((k : Real) * Real.pi) :=
  rfl

/-- The inverse phase coordinate is positive on the canonical open phase
interval. -/
theorem canonical_li_phase_inverse_pos
    {n : Nat} (hn : 0 < n) {u : Real}
    (hu0 : 0 < u) (hu1 : u < (n : Real) * Real.pi) :
    0 < canonicalLiPhaseInverse n u := by
  have hnR : 0 < (n : Real) := Nat.cast_pos.mpr hn
  have hden : 0 < 2 * (n : Real) := by positivity
  have hx0 : 0 < u / (2 * (n : Real)) := div_pos hu0 hden
  have hx1 : u / (2 * (n : Real)) < Real.pi / 2 := by
    rw [div_lt_iff₀ hden]
    calc
      u < (n : Real) * Real.pi := hu1
      _ = (Real.pi / 2) * (2 * (n : Real)) := by ring
  have htan : 0 < Real.tan (u / (2 * (n : Real))) :=
    Real.tan_pos_of_pos_of_lt_pi_div_two hx0 hx1
  unfold canonicalLiPhaseInverse
  positivity

/-- `T_n` is a left inverse of the actual Li phase on positive heights. -/
theorem canonical_li_phase_inverse_left
    {n : Nat} (hn : 0 < n) {T : Real} (hT : 0 < T) :
    canonicalLiPhaseInverse n (actualLiPhase n T) = T := by
  have hn0 : (n : Real) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hn)
  have hphase :
      actualLiPhase n T / (2 * (n : Real)) =
        Real.arctan (1 / (2 * T)) := by
    unfold actualLiPhase
    field_simp [hn0]
  unfold canonicalLiPhaseInverse
  rw [hphase, Real.tan_arctan]
  field_simp [ne_of_gt hT]

/-- The actual Li phase is a right inverse of `T_n` on the canonical open
phase interval. -/
theorem canonical_li_phase_inverse_right
    {n : Nat} (hn : 0 < n) {u : Real}
    (hu0 : 0 < u) (hu1 : u < (n : Real) * Real.pi) :
    actualLiPhase n (canonicalLiPhaseInverse n u) = u := by
  have hnR : 0 < (n : Real) := Nat.cast_pos.mpr hn
  have hn0 : (n : Real) ≠ 0 := ne_of_gt hnR
  have hden : 0 < 2 * (n : Real) := by positivity
  have hx0 : 0 < u / (2 * (n : Real)) := div_pos hu0 hden
  have hx1 : u / (2 * (n : Real)) < Real.pi / 2 := by
    rw [div_lt_iff₀ hden]
    calc
      u < (n : Real) * Real.pi := hu1
      _ = (Real.pi / 2) * (2 * (n : Real)) := by ring
  have hxneg : -(Real.pi / 2) < u / (2 * (n : Real)) := by
    linarith [Real.pi_pos]
  have htan : 0 < Real.tan (u / (2 * (n : Real))) :=
    Real.tan_pos_of_pos_of_lt_pi_div_two hx0 hx1
  have hinvarg :
      1 / (2 * canonicalLiPhaseInverse n u) =
        Real.tan (u / (2 * (n : Real))) := by
    unfold canonicalLiPhaseInverse
    field_simp [ne_of_gt htan]
  unfold actualLiPhase
  rw [hinvarg, Real.arctan_tan hxneg hx1]
  field_simp [hn0]

/-- Pulling the actual Li kernel back along the canonical inverse gives the
phase normal form from equation (4.3). -/
theorem actual_li_kernel_at_phase_inverse
    {n : Nat} (hn : 0 < n) {u : Real}
    (hu0 : 0 < u) (hu1 : u < (n : Real) * Real.pi) :
    actualLiKernel n (canonicalLiPhaseInverse n u) =
      liPhaseNormalForm n u := by
  have hT : 0 < canonicalLiPhaseInverse n u :=
    canonical_li_phase_inverse_pos hn hu0 hu1
  calc
    actualLiKernel n (canonicalLiPhaseInverse n u) =
        liPhaseNormalForm n
          (actualLiPhase n (canonicalLiPhaseInverse n u)) :=
      actual_li_kernel_eq_phase_normal_form hn hT
    _ = liPhaseNormalForm n u := by
      rw [canonical_li_phase_inverse_right hn hu0 hu1]

/-- Proof-carrying realization of the canonical phase inverse on its full open
domain. -/
structure CanonicalLiPhaseInverseWitness (n : Nat) : Prop where
  indexPositive : 0 < n
  inversePositive : ∀ {u : Real}, 0 < u → u < (n : Real) * Real.pi →
    0 < canonicalLiPhaseInverse n u
  leftInverse : ∀ {T : Real}, 0 < T →
    canonicalLiPhaseInverse n (actualLiPhase n T) = T
  rightInverse : ∀ {u : Real}, 0 < u → u < (n : Real) * Real.pi →
    actualLiPhase n (canonicalLiPhaseInverse n u) = u
  kernelPullback : ∀ {u : Real}, 0 < u → u < (n : Real) * Real.pi →
    actualLiKernel n (canonicalLiPhaseInverse n u) = liPhaseNormalForm n u

def canonicalLiPhaseInverseWitness
    {n : Nat} (hn : 0 < n) : CanonicalLiPhaseInverseWitness n :=
  { indexPositive := hn
    inversePositive := fun hu0 hu1 =>
      canonical_li_phase_inverse_pos hn hu0 hu1
    leftInverse := fun hT => canonical_li_phase_inverse_left hn hT
    rightInverse := fun hu0 hu1 =>
      canonical_li_phase_inverse_right hn hu0 hu1
    kernelPullback := fun hu0 hu1 =>
      actual_li_kernel_at_phase_inverse hn hu0 hu1 }

end R2104DLeanCanonicalLiPhaseInverse
