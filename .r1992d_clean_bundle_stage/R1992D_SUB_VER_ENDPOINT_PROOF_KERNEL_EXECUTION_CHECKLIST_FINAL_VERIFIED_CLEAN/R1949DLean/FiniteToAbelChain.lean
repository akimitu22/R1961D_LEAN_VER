import R1949DLean.AssumptionPackages

namespace R1949DLean

theorem same_scale_coordinate_from_identity
    (B : AbelBookkeeping)
    (AI : AbelIdentityAxioms B)
    (hReady : AbelReady B) :
    B.sameScaleCoordinate := by
  have hQ : B.quotientIdentity := hReady.left
  exact AI.quotientIdentityYieldsSameScaleCoordinate hQ

theorem coordinate_closure_from_same_object
    (B : AbelBookkeeping)
    (SO : SameObjectPreservationAxioms B)
    (hSameScale : B.sameScaleCoordinate)
    (hReady : AbelReady B) :
    B.coordinateClosure := by
  have hSame : B.sameObjectPreservation := hReady.right.left
  have hNoHidden : B.noHiddenNormalization := hReady.right.right
  exact SO.sameObjectAndNoHiddenForceCoordinateClosure hSameScale hSame hNoHidden

theorem finite_to_abel_from_bookkeeping
    (B : AbelBookkeeping)
    (AI : AbelIdentityAxioms B)
    (SO : SameObjectPreservationAxioms B)
    (hReady : AbelReady B) :
    B.finiteToAbelClosureNecessity := by
  have hSameScale : B.sameScaleCoordinate :=
    same_scale_coordinate_from_identity B AI hReady
  have hCoord : B.coordinateClosure :=
    coordinate_closure_from_same_object B SO hSameScale hReady
  exact SO.coordinateClosureForcesFiniteToAbelClosure hCoord

end R1949DLean
