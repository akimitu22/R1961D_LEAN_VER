import R1959DLeanTransfer.TransferCertificates

namespace R1959DLeanTransfer

/-- A minimal toy instance: finite and Abel sides are both registered at the same unit scale. -/
def toySameScaleTransferSystem : SameScaleTransferSystem Unit Unit Unit :=
  { finiteScale := fun _ => Unit.unit
    abelScale := fun _ => Unit.unit
    targetAtScale := fun _ => True }

def toyFiniteToAbelTransferWitness : FiniteToAbelTransferWitness Unit Unit Unit :=
  { system := toySameScaleTransferSystem
    finiteObject := Unit.unit
    abelBoundaryObject := Unit.unit
    sameScalePreserved := rfl }

theorem toy_same_scale_transfer_runs :
    AbelTarget toySameScaleTransferSystem Unit.unit := by
  have hFinite : FiniteTarget toySameScaleTransferSystem Unit.unit := by
    trivial
  exact same_scale_target_transfer toySameScaleTransferSystem rfl hFinite

theorem toy_finite_to_abel_transfer_runs :
    AbelTarget toyFiniteToAbelTransferWitness.system toyFiniteToAbelTransferWitness.abelBoundaryObject := by
  have hFinite : FiniteTarget toyFiniteToAbelTransferWitness.system toyFiniteToAbelTransferWitness.finiteObject := by
    trivial
  exact finite_to_abel_target_transfer toyFiniteToAbelTransferWitness hFinite

/-- A normalized toy instance using Nat as raw and normalized scale. -/
def toyNormalizedSameScaleTransferSystem : NormalizedSameScaleTransferSystem Unit Unit Nat Nat :=
  { finiteRawScale := fun _ => 0
    abelRawScale := fun _ => 0
    rawToNormalized := fun n => n
    targetAtNormalizedScale := fun n => n = 0 }

def toyNormalizedFiniteToAbelTransferWitness :
    NormalizedFiniteToAbelTransferWitness Unit Unit Nat Nat :=
  { system := toyNormalizedSameScaleTransferSystem
    finiteObject := Unit.unit
    abelBoundaryObject := Unit.unit
    sameNormalizedScalePreserved := rfl }

theorem toy_no_hidden_normalization_transfer_runs :
    NormalizedAbelTarget toyNormalizedSameScaleTransferSystem Unit.unit := by
  have hFinite : NormalizedFiniteTarget toyNormalizedSameScaleTransferSystem Unit.unit := by
    rfl
  exact no_hidden_normalization_target_transfer toyNormalizedSameScaleTransferSystem rfl hFinite

theorem toy_finite_to_abel_no_hidden_normalization_transfer_runs :
    NormalizedAbelTarget toyNormalizedFiniteToAbelTransferWitness.system
      toyNormalizedFiniteToAbelTransferWitness.abelBoundaryObject := by
  have hFinite : NormalizedFiniteTarget toyNormalizedFiniteToAbelTransferWitness.system
      toyNormalizedFiniteToAbelTransferWitness.finiteObject := by
    rfl
  exact finite_to_abel_no_hidden_normalization_transfer toyNormalizedFiniteToAbelTransferWitness hFinite

end R1959DLeanTransfer
