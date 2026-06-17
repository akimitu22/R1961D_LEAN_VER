import R1959DLeanTransfer.FiniteToAbelTransfer
import R1958DLeanAudit
import R1956DLeanInterface

namespace R1959DLeanTransfer

/--
The R1956D estimate slots most directly touched by the R1959D abstract
same-scale theorem.  R1959D does not fill the analytic Abel estimate slot;
it formalizes the transfer mechanism that such a slot must use once its
same-scale equality has been supplied.
-/
def sameScaleTransferCriticalSlots : List R1956DLeanInterface.EstimateSlot :=
  [ R1956DLeanInterface.finiteLiCompatibilitySlot,
    R1956DLeanInterface.abelBoundaryEstimateSlot,
    R1956DLeanInterface.conclusionTransferSlot ]

structure TransferDepthCertificate where
  abstractSameScaleTransferFormalized : Bool
  finiteToAbelTransferTheoremFormalized : Bool
  normalizedNoHiddenTransferFormalized : Bool
  connectsFiniteLiCompatibilitySlot : Bool
  connectsAbelBoundaryEstimateSlot : Bool
  connectsConclusionTransferSlot : Bool
  inheritedR1958AuditUnchanged : Bool
  analyticAbelBoundaryTheoremFormalizedHere : Bool
  zetaTheoryFormalizedHere : Bool
  fullRHFormalizationClaimed : Bool

def r1959TransferDepthCertificate : TransferDepthCertificate :=
  { abstractSameScaleTransferFormalized := true
    finiteToAbelTransferTheoremFormalized := true
    normalizedNoHiddenTransferFormalized := true
    connectsFiniteLiCompatibilitySlot := true
    connectsAbelBoundaryEstimateSlot := true
    connectsConclusionTransferSlot := true
    inheritedR1958AuditUnchanged := true
    analyticAbelBoundaryTheoremFormalizedHere := false
    zetaTheoryFormalizedHere := false
    fullRHFormalizationClaimed := false }

theorem r1959_critical_slots_are_inherited_from_r1956_interface :
    sameScaleTransferCriticalSlots =
      [ R1956DLeanInterface.finiteLiCompatibilitySlot,
        R1956DLeanInterface.abelBoundaryEstimateSlot,
        R1956DLeanInterface.conclusionTransferSlot ] := by
  rfl

theorem r1959_transfer_depth_certificate_records_actual_abstract_theorems :
    r1959TransferDepthCertificate.abstractSameScaleTransferFormalized = true ∧
    r1959TransferDepthCertificate.finiteToAbelTransferTheoremFormalized = true ∧
    r1959TransferDepthCertificate.normalizedNoHiddenTransferFormalized = true ∧
    r1959TransferDepthCertificate.connectsFiniteLiCompatibilitySlot = true ∧
    r1959TransferDepthCertificate.connectsAbelBoundaryEstimateSlot = true ∧
    r1959TransferDepthCertificate.connectsConclusionTransferSlot = true := by
  simp [r1959TransferDepthCertificate]

theorem r1959_transfer_layer_keeps_r1958_non_claim_boundary :
    r1959TransferDepthCertificate.inheritedR1958AuditUnchanged = true ∧
    r1959TransferDepthCertificate.analyticAbelBoundaryTheoremFormalizedHere = false ∧
    r1959TransferDepthCertificate.zetaTheoryFormalizedHere = false ∧
    r1959TransferDepthCertificate.fullRHFormalizationClaimed = false ∧
    R1958DLeanAudit.r1958NonClaimCertificate.claimsAbelBoundaryPassage = false ∧
    R1958DLeanAudit.r1958NonClaimCertificate.claimsFullRHFormalization = false := by
  simp [r1959TransferDepthCertificate, R1958DLeanAudit.r1958NonClaimCertificate]

end R1959DLeanTransfer
