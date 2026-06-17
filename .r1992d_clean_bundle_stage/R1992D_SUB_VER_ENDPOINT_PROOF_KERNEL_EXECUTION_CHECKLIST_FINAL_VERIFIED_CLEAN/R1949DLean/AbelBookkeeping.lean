import R1949DLean.Basic

namespace R1949DLean

structure AbelBookkeeping where
  finiteObj : FiniteLiObject
  abelObj : AbelBoundaryObject
  coordinate : SameScaleCoordinate
  quotientIdentity : Prop
  sameScaleCoordinate : Prop
  sameObjectPreservation : Prop
  noHiddenNormalization : Prop
  coordinateClosure : Prop
  finiteToAbelClosureNecessity : Prop

def AbelReady (B : AbelBookkeeping) : Prop :=
  B.quotientIdentity ∧ B.sameObjectPreservation ∧ B.noHiddenNormalization

theorem abel_ready_unpacks (B : AbelBookkeeping) (h : AbelReady B) :
    B.quotientIdentity ∧ B.sameObjectPreservation ∧ B.noHiddenNormalization := by
  exact h

end R1949DLean
