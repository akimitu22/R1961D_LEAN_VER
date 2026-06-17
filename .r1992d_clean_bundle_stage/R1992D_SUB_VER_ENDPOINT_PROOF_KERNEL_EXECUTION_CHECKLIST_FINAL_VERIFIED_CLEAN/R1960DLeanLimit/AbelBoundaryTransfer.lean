import R1960DLeanLimit.BoundaryLimitSystem

namespace R1960DLeanLimit

open R1959DLeanTransfer

universe u v w z

/--
A packaged witness for the abstract finite-to-Abel boundary limit passage:
it includes the boundary system and the two tail hypotheses needed for the
R1960D transfer theorem.
-/
structure FiniteToAbelBoundaryLimitWitness
    (Finite : Type u) (Abel : Type v) (Scale : Type w) where
  boundarySystem : BoundaryLimitSystem Finite Abel Scale
  sameScaleOnTail : SameScaleOnTail boundarySystem
  finiteTargetOnTail : FiniteTargetOnTail boundarySystem

/--
Finite-to-Abel boundary limit transfer from a packaged witness.  This is the
main R1960D theorem intended to deepen the R1959D single-object transfer into
an abstract tail-to-boundary passage theorem.
-/
theorem finite_to_abel_boundary_limit_transfer
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (W : FiniteToAbelBoundaryLimitWitness Finite Abel Scale) :
    AbelTarget W.boundarySystem.transferSystem W.boundarySystem.abelBoundary := by
  exact same_scale_boundary_limit_transfer W.boundarySystem W.sameScaleOnTail W.finiteTargetOnTail

/--
A packaged normalized witness for the no-hidden-scale-drift boundary limit passage.
-/
structure NormalizedFiniteToAbelBoundaryLimitWitness
    (Finite : Type u) (Abel : Type v) (RawScale : Type w) (NormalizedScale : Type z) where
  boundarySystem : NormalizedBoundaryLimitSystem Finite Abel RawScale NormalizedScale
  sameNormalizedScaleOnTail : SameNormalizedScaleOnTail boundarySystem
  finiteTargetOnTail : NormalizedFiniteTargetOnTail boundarySystem

/--
Normalized finite-to-Abel boundary limit transfer.
-/
theorem finite_to_abel_no_hidden_boundary_limit_transfer
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (W : NormalizedFiniteToAbelBoundaryLimitWitness Finite Abel RawScale NormalizedScale) :
    NormalizedAbelTarget W.boundarySystem.transferSystem W.boundarySystem.abelBoundary := by
  exact no_hidden_scale_drift_boundary_transfer
    W.boundarySystem W.sameNormalizedScaleOnTail W.finiteTargetOnTail

/--
Compatibility theorem: the R1960D boundary transfer specializes to the
R1959D same-scale transfer at every tail index.  This is a sanity check that
R1960D does not replace R1959D; it repeatedly applies it along the tail and
then invokes boundary closure.
-/
theorem boundary_limit_uses_r1959_same_scale_transfer_on_tail
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : BoundaryLimitSystem Finite Abel Scale)
    (hScaleTail : SameScaleOnTail D)
    (hFiniteTail : FiniteTargetOnTail D) :
    ∀ n : Nat, D.tailStartsAt ≤ n → AbelTarget D.transferSystem D.abelBoundary := by
  intro n hn
  exact same_scale_target_transfer D.transferSystem (hScaleTail n hn) (hFiniteTail n hn)

end R1960DLeanLimit
