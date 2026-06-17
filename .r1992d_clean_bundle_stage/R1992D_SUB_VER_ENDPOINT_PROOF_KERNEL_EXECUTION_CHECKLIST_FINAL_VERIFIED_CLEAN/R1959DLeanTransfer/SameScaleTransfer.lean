import R1958DLeanAudit

namespace R1959DLeanTransfer

universe u v w z

/--
An abstract same-scale transfer system.  The finite object and the Abel
boundary object may be different types, but the target predicate is a
single predicate on the shared scale coordinate.  Hence transfer across
finite-to-Abel passage is not an additional analytic assertion once the
same-scale equality is provided.
-/
structure SameScaleTransferSystem (Finite : Type u) (Abel : Type v) (Scale : Type w) where
  finiteScale : Finite → Scale
  abelScale : Abel → Scale
  targetAtScale : Scale → Prop

def FiniteTarget {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : SameScaleTransferSystem Finite Abel Scale) (x : Finite) : Prop :=
  D.targetAtScale (D.finiteScale x)

def AbelTarget {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : SameScaleTransferSystem Finite Abel Scale) (y : Abel) : Prop :=
  D.targetAtScale (D.abelScale y)

def SameScalePreserved {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : SameScaleTransferSystem Finite Abel Scale) (x : Finite) (y : Abel) : Prop :=
  D.finiteScale x = D.abelScale y

/--
Core R1959D theorem: if the finite and Abel objects are registered at the
same scale coordinate, then any target depending only on that coordinate
transfers from the finite side to the Abel side by equality rewriting.
-/
theorem same_scale_target_transfer
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : SameScaleTransferSystem Finite Abel Scale)
    {x : Finite} {y : Abel}
    (hScale : SameScalePreserved D x y)
    (hFinite : FiniteTarget D x) :
    AbelTarget D y := by
  unfold SameScalePreserved FiniteTarget AbelTarget at *
  rw [hScale] at hFinite
  exact hFinite

/--
The same-scale hypothesis gives equivalence, not merely one-way transfer,
for targets that are literally scale-indexed.  This is the formal guard
against a hidden change of coordinate in the abstract layer.
-/
theorem same_scale_target_equivalence
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (D : SameScaleTransferSystem Finite Abel Scale)
    {x : Finite} {y : Abel}
    (hScale : SameScalePreserved D x y) :
    FiniteTarget D x ↔ AbelTarget D y := by
  constructor
  · intro hFinite
    exact same_scale_target_transfer D hScale hFinite
  · intro hAbel
    unfold SameScalePreserved FiniteTarget AbelTarget at *
    rw [← hScale] at hAbel
    exact hAbel

/--
A variant in which both sides first pass through the same normalizer.  This
records the no-hidden-normalization case: the finite and Abel raw scales are
not separately normalized by unrelated maps.
-/
structure NormalizedSameScaleTransferSystem
    (Finite : Type u) (Abel : Type v) (RawScale : Type w) (NormalizedScale : Type z) where
  finiteRawScale : Finite → RawScale
  abelRawScale : Abel → RawScale
  rawToNormalized : RawScale → NormalizedScale
  targetAtNormalizedScale : NormalizedScale → Prop

def NormalizedFiniteTarget
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale)
    (x : Finite) : Prop :=
  D.targetAtNormalizedScale (D.rawToNormalized (D.finiteRawScale x))

def NormalizedAbelTarget
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale)
    (y : Abel) : Prop :=
  D.targetAtNormalizedScale (D.rawToNormalized (D.abelRawScale y))

def SameNormalizedScalePreserved
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale)
    (x : Finite) (y : Abel) : Prop :=
  D.rawToNormalized (D.finiteRawScale x) = D.rawToNormalized (D.abelRawScale y)

/--
Normalized same-scale transfer.  The proof again uses only equality
rewriting, but the statement forces a single normalizing map to be visible
on both the finite and Abel sides.
-/
theorem no_hidden_normalization_target_transfer
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale)
    {x : Finite} {y : Abel}
    (hScale : SameNormalizedScalePreserved D x y)
    (hFinite : NormalizedFiniteTarget D x) :
    NormalizedAbelTarget D y := by
  unfold SameNormalizedScalePreserved NormalizedFiniteTarget NormalizedAbelTarget at *
  rw [hScale] at hFinite
  exact hFinite

/--
Equivalence form of the normalized theorem.
-/
theorem no_hidden_normalization_target_equivalence
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (D : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale)
    {x : Finite} {y : Abel}
    (hScale : SameNormalizedScalePreserved D x y) :
    NormalizedFiniteTarget D x ↔ NormalizedAbelTarget D y := by
  constructor
  · intro hFinite
    exact no_hidden_normalization_target_transfer D hScale hFinite
  · intro hAbel
    unfold SameNormalizedScalePreserved NormalizedFiniteTarget NormalizedAbelTarget at *
    rw [← hScale] at hAbel
    exact hAbel

end R1959DLeanTransfer
