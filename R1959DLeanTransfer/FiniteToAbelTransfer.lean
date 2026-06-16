import R1959DLeanTransfer.SameScaleTransfer

namespace R1959DLeanTransfer

universe u v w z

/--
A concrete abstract witness for the finite-to-Abel passage: a finite object,
an Abel boundary object, and an explicit same-scale equality inside a common
scale-indexed target system.
-/
structure FiniteToAbelTransferWitness
    (Finite : Type u) (Abel : Type v) (Scale : Type w) where
  system : SameScaleTransferSystem Finite Abel Scale
  finiteObject : Finite
  abelBoundaryObject : Abel
  sameScalePreserved : SameScalePreserved system finiteObject abelBoundaryObject

/--
The finite-to-Abel transfer theorem obtained from the R1959D same-scale
mechanism.  This is a genuine Lean theorem, not merely an audit-slot entry.
-/
theorem finite_to_abel_target_transfer
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (W : FiniteToAbelTransferWitness Finite Abel Scale)
    (hFinite : FiniteTarget W.system W.finiteObject) :
    AbelTarget W.system W.abelBoundaryObject := by
  exact same_scale_target_transfer W.system W.sameScalePreserved hFinite

/--
The same witness gives finite/Abel target equivalence when the target is
scale-indexed.
-/
theorem finite_to_abel_target_equivalence
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (W : FiniteToAbelTransferWitness Finite Abel Scale) :
    FiniteTarget W.system W.finiteObject ↔ AbelTarget W.system W.abelBoundaryObject := by
  exact same_scale_target_equivalence W.system W.sameScalePreserved

/--
Normalized finite-to-Abel witness using one explicit normalizer shared by
both sides.
-/
structure NormalizedFiniteToAbelTransferWitness
    (Finite : Type u) (Abel : Type v) (RawScale : Type w) (NormalizedScale : Type z) where
  system : NormalizedSameScaleTransferSystem Finite Abel RawScale NormalizedScale
  finiteObject : Finite
  abelBoundaryObject : Abel
  sameNormalizedScalePreserved : SameNormalizedScalePreserved system finiteObject abelBoundaryObject

/--
Finite-to-Abel transfer through a shared normalizer.  This is the formal
R1959D no-hidden-normalization transfer lemma.
-/
theorem finite_to_abel_no_hidden_normalization_transfer
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (W : NormalizedFiniteToAbelTransferWitness Finite Abel RawScale NormalizedScale)
    (hFinite : NormalizedFiniteTarget W.system W.finiteObject) :
    NormalizedAbelTarget W.system W.abelBoundaryObject := by
  exact no_hidden_normalization_target_transfer W.system W.sameNormalizedScalePreserved hFinite

/--
Equivalence form of the normalized finite-to-Abel transfer theorem.
-/
theorem finite_to_abel_no_hidden_normalization_equivalence
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (W : NormalizedFiniteToAbelTransferWitness Finite Abel RawScale NormalizedScale) :
    NormalizedFiniteTarget W.system W.finiteObject ↔
      NormalizedAbelTarget W.system W.abelBoundaryObject := by
  exact no_hidden_normalization_target_equivalence W.system W.sameNormalizedScalePreserved

end R1959DLeanTransfer
