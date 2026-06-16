import R1959DLeanTransfer

namespace R1960DLeanLimit

open R1959DLeanTransfer

universe u v w z

/--
An abstract Abel-boundary limit-passage system.  It does not formalize a
specific topology or zeta-theoretic Abel limit.  Instead it isolates the
minimal logical shape needed for a boundary passage: a tail of finite
approximants, a common same-scale transfer system, and a boundary-closure
operation for the Abel target once all tail approximants have been moved to
that same Abel boundary target.
-/
structure BoundaryLimitSystem (Finite : Type u) (Abel : Type v) (Scale : Type w) where
  transferSystem : SameScaleTransferSystem Finite Abel Scale
  finiteApprox : Nat → Finite
  abelBoundary : Abel
  tailStartsAt : Nat
  boundaryClosedUnderTail :
    (∀ n : Nat, tailStartsAt ≤ n → AbelTarget transferSystem abelBoundary) →
      AbelTarget transferSystem abelBoundary

/--
The tail finite-target assertion used by the abstract limit-passage layer.
-/
def FiniteTargetOnTail
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : BoundaryLimitSystem Finite Abel Scale) : Prop :=
  ∀ n : Nat, D.tailStartsAt ≤ n → FiniteTarget D.transferSystem (D.finiteApprox n)

/--
The tail same-scale assertion: every tail approximant is registered at the
same scale coordinate as the Abel boundary object.
-/
def SameScaleOnTail
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : BoundaryLimitSystem Finite Abel Scale) : Prop :=
  ∀ n : Nat, D.tailStartsAt ≤ n →
    SameScalePreserved D.transferSystem (D.finiteApprox n) D.abelBoundary

/--
Core R1960D theorem.  If all sufficiently late finite approximants satisfy
the finite target, and all sufficiently late approximants are registered at
the same scale coordinate as the Abel boundary object, then the Abel boundary
target follows through the explicit boundary-closure operation.

This is one step deeper than R1959D: R1959D transfers a single same-scale
finite object to an Abel object; R1960D transfers an entire tail of finite
approximants through a boundary-passage interface.
-/
theorem same_scale_boundary_limit_transfer
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : BoundaryLimitSystem Finite Abel Scale)
    (hScaleTail : SameScaleOnTail D)
    (hFiniteTail : FiniteTargetOnTail D) :
    AbelTarget D.transferSystem D.abelBoundary := by
  exact D.boundaryClosedUnderTail
    (fun n hn =>
      same_scale_target_transfer D.transferSystem (hScaleTail n hn) (hFiniteTail n hn))

/--
A named version emphasizing the eventual finite-target premise.
-/
theorem eventual_finite_target_to_boundary_target
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : BoundaryLimitSystem Finite Abel Scale)
    (hScaleTail : SameScaleOnTail D)
    (hFiniteTail : FiniteTargetOnTail D) :
    AbelTarget D.transferSystem D.abelBoundary := by
  exact same_scale_boundary_limit_transfer D hScaleTail hFiniteTail

/--
Normalized variant of the abstract boundary limit-passage system.  The raw
finite and Abel scales must pass through one shared normalizing map before
the boundary transfer is allowed.  This is the R1960D no-hidden-scale-drift
boundary layer.
-/
structure NormalizedBoundaryLimitSystem
    (Finite : Type u) (Abel : Type v) (RawScale : Type w) (NormalizedScale : Type z) where
  transferSystem : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale
  finiteApprox : Nat → Finite
  abelBoundary : Abel
  tailStartsAt : Nat
  boundaryClosedUnderTail :
    (∀ n : Nat, tailStartsAt ≤ n → NormalizedAbelTarget transferSystem abelBoundary) →
      NormalizedAbelTarget transferSystem abelBoundary

def NormalizedFiniteTargetOnTail
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedBoundaryLimitSystem Finite Abel RawScale NormalizedScale) : Prop :=
  ∀ n : Nat, D.tailStartsAt ≤ n →
    NormalizedFiniteTarget D.transferSystem (D.finiteApprox n)

def SameNormalizedScaleOnTail
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedBoundaryLimitSystem Finite Abel RawScale NormalizedScale) : Prop :=
  ∀ n : Nat, D.tailStartsAt ≤ n →
    SameNormalizedScalePreserved D.transferSystem (D.finiteApprox n) D.abelBoundary

/--
No-hidden-scale-drift boundary limit passage.  Both finite approximants and
the Abel boundary object use the same normalizer; the theorem then transfers
tail finite targets to the normalized Abel boundary target through the
visible boundary-closure operation.
-/
theorem no_hidden_scale_drift_boundary_transfer
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedBoundaryLimitSystem Finite Abel RawScale NormalizedScale)
    (hScaleTail : SameNormalizedScaleOnTail D)
    (hFiniteTail : NormalizedFiniteTargetOnTail D) :
    NormalizedAbelTarget D.transferSystem D.abelBoundary := by
  exact D.boundaryClosedUnderTail
    (fun n hn =>
      no_hidden_normalization_target_transfer D.transferSystem (hScaleTail n hn) (hFiniteTail n hn))

end R1960DLeanLimit
