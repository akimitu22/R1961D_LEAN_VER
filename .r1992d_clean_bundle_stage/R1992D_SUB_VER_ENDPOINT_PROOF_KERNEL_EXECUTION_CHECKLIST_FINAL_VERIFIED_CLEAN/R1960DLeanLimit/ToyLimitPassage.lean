import R1960DLeanLimit.LimitPassageCertificates

namespace R1960DLeanLimit

open R1959DLeanTransfer

/-- Toy boundary system: every finite approximant and the Abel boundary share the unit scale. -/
def toyBoundaryLimitSystem : BoundaryLimitSystem Unit Unit Unit :=
  { transferSystem := toySameScaleTransferSystem
    finiteApprox := fun _ => Unit.unit
    abelBoundary := Unit.unit
    tailStartsAt := 0
    boundaryClosedUnderTail := fun _ => trivial }

def toyFiniteToAbelBoundaryLimitWitness : FiniteToAbelBoundaryLimitWitness Unit Unit Unit :=
  { boundarySystem := toyBoundaryLimitSystem
    sameScaleOnTail := fun _ _ => rfl
    finiteTargetOnTail := fun _ _ => trivial }

theorem toy_boundary_limit_passage_runs :
    AbelTarget toyBoundaryLimitSystem.transferSystem toyBoundaryLimitSystem.abelBoundary := by
  exact same_scale_boundary_limit_transfer
    toyBoundaryLimitSystem
    (fun _ _ => rfl)
    (fun _ _ => trivial)

theorem toy_finite_to_abel_boundary_limit_passage_runs :
    AbelTarget toyFiniteToAbelBoundaryLimitWitness.boundarySystem.transferSystem
      toyFiniteToAbelBoundaryLimitWitness.boundarySystem.abelBoundary := by
  exact finite_to_abel_boundary_limit_transfer toyFiniteToAbelBoundaryLimitWitness

/-- Toy normalized boundary system with one visible identity normalizer. -/
def toyNormalizedBoundaryLimitSystem : NormalizedBoundaryLimitSystem Unit Unit Nat Nat :=
  { transferSystem := toyNormalizedSameScaleTransferSystem
    finiteApprox := fun _ => Unit.unit
    abelBoundary := Unit.unit
    tailStartsAt := 0
    boundaryClosedUnderTail := fun h => h 0 (Nat.zero_le 0) }

def toyNormalizedFiniteToAbelBoundaryLimitWitness :
    NormalizedFiniteToAbelBoundaryLimitWitness Unit Unit Nat Nat :=
  { boundarySystem := toyNormalizedBoundaryLimitSystem
    sameNormalizedScaleOnTail := fun _ _ => rfl
    finiteTargetOnTail := fun _ _ => rfl }

theorem toy_no_hidden_scale_drift_boundary_passage_runs :
    NormalizedAbelTarget toyNormalizedBoundaryLimitSystem.transferSystem
      toyNormalizedBoundaryLimitSystem.abelBoundary := by
  exact no_hidden_scale_drift_boundary_transfer
    toyNormalizedBoundaryLimitSystem
    (fun _ _ => rfl)
    (fun _ _ => rfl)

theorem toy_finite_to_abel_no_hidden_boundary_limit_passage_runs :
    NormalizedAbelTarget
      toyNormalizedFiniteToAbelBoundaryLimitWitness.boundarySystem.transferSystem
      toyNormalizedFiniteToAbelBoundaryLimitWitness.boundarySystem.abelBoundary := by
  exact finite_to_abel_no_hidden_boundary_limit_transfer
    toyNormalizedFiniteToAbelBoundaryLimitWitness

end R1960DLeanLimit
