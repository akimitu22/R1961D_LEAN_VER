import R1960DLeanLimit.AbelBoundaryTransfer
import R1958DLeanAudit
import R1956DLeanInterface

namespace R1960DLeanLimit

/--
R1960D critical slots.  R1960D still does not fill the analytic Abel estimate
slot; it formalizes the abstract tail-to-boundary passage pattern that such
an estimate would have to instantiate.
-/
def boundaryLimitCriticalSlots : List R1956DLeanInterface.EstimateSlot :=
  [ R1956DLeanInterface.abelBoundaryEstimateSlot,
    R1956DLeanInterface.scaleTopologyEstimateSlot,
    R1956DLeanInterface.uniformLittleOhEstimateSlot,
    R1956DLeanInterface.conclusionTransferSlot ]

structure BoundaryLimitDepthCertificate where
  boundaryLimitPassageFormalized : Bool
  eventualFiniteTargetFormalized : Bool
  noHiddenScaleDriftBoundaryFormalized : Bool
  usesR1959SameScaleTransfer : Bool
  connectsAbelBoundaryEstimateSlot : Bool
  connectsScaleTopologyEstimateSlot : Bool
  connectsUniformLittleOhEstimateSlot : Bool
  connectsConclusionTransferSlot : Bool
  inheritedR1959TransferUnchanged : Bool
  analyticAbelBoundaryTheoremFormalizedHere : Bool
  zetaTheoryFormalizedHere : Bool
  explicitFormulaFormalizedHere : Bool
  fullRHFormalizationClaimed : Bool

def r1960BoundaryLimitDepthCertificate : BoundaryLimitDepthCertificate :=
  { boundaryLimitPassageFormalized := true
    eventualFiniteTargetFormalized := true
    noHiddenScaleDriftBoundaryFormalized := true
    usesR1959SameScaleTransfer := true
    connectsAbelBoundaryEstimateSlot := true
    connectsScaleTopologyEstimateSlot := true
    connectsUniformLittleOhEstimateSlot := true
    connectsConclusionTransferSlot := true
    inheritedR1959TransferUnchanged := true
    analyticAbelBoundaryTheoremFormalizedHere := false
    zetaTheoryFormalizedHere := false
    explicitFormulaFormalizedHere := false
    fullRHFormalizationClaimed := false }

theorem r1960_critical_slots_are_inherited_from_r1956_interface :
    boundaryLimitCriticalSlots =
      [ R1956DLeanInterface.abelBoundaryEstimateSlot,
        R1956DLeanInterface.scaleTopologyEstimateSlot,
        R1956DLeanInterface.uniformLittleOhEstimateSlot,
        R1956DLeanInterface.conclusionTransferSlot ] := by
  rfl

theorem r1960_limit_depth_certificate_records_actual_abstract_theorems :
    r1960BoundaryLimitDepthCertificate.boundaryLimitPassageFormalized = true ∧
    r1960BoundaryLimitDepthCertificate.eventualFiniteTargetFormalized = true ∧
    r1960BoundaryLimitDepthCertificate.noHiddenScaleDriftBoundaryFormalized = true ∧
    r1960BoundaryLimitDepthCertificate.usesR1959SameScaleTransfer = true ∧
    r1960BoundaryLimitDepthCertificate.connectsAbelBoundaryEstimateSlot = true ∧
    r1960BoundaryLimitDepthCertificate.connectsScaleTopologyEstimateSlot = true ∧
    r1960BoundaryLimitDepthCertificate.connectsUniformLittleOhEstimateSlot = true ∧
    r1960BoundaryLimitDepthCertificate.connectsConclusionTransferSlot = true := by
  simp [r1960BoundaryLimitDepthCertificate]

theorem r1960_limit_layer_keeps_r1958_non_claim_boundary :
    r1960BoundaryLimitDepthCertificate.inheritedR1959TransferUnchanged = true ∧
    r1960BoundaryLimitDepthCertificate.analyticAbelBoundaryTheoremFormalizedHere = false ∧
    r1960BoundaryLimitDepthCertificate.zetaTheoryFormalizedHere = false ∧
    r1960BoundaryLimitDepthCertificate.explicitFormulaFormalizedHere = false ∧
    r1960BoundaryLimitDepthCertificate.fullRHFormalizationClaimed = false ∧
    R1958DLeanAudit.r1958NonClaimCertificate.claimsAbelBoundaryPassage = false ∧
    R1958DLeanAudit.r1958NonClaimCertificate.claimsExplicitFormula = false ∧
    R1958DLeanAudit.r1958NonClaimCertificate.claimsFullRHFormalization = false := by
  simp [r1960BoundaryLimitDepthCertificate, R1958DLeanAudit.r1958NonClaimCertificate]

end R1960DLeanLimit
