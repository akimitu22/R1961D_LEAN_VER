import R1959DLeanTransfer.TransferCertificates

namespace R1959DLeanTransfer

structure TransferVersionCompatibility where
  manuscriptVersion : String
  transferPacketVersion : String
  inheritedAuditNamespace : String
  inheritedCoverageNamespace : String
  inheritedInterfaceNamespace : String
  inheritedScaffoldNamespace : String
  inheritedBridgeNamespace : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  r1958AuditUnchanged : Bool
  transferLayerAddsActualAbstractTheorem : Bool
  sameScaleTransferFormalized : Bool
  finiteToAbelTransferFormalized : Bool
  noHiddenNormalizationTransferFormalized : Bool
  analyticAbelBoundaryTheoremFormalizedHere : Bool
  fullAnalyticFormalizationClaimed : Bool

def r1959DeepensR1958Audit : TransferVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    transferPacketVersion := "R1959D_LEAN"
    inheritedAuditNamespace := "R1958DLeanAudit"
    inheritedCoverageNamespace := "R1957DLeanCoverage"
    inheritedInterfaceNamespace := "R1956DLeanInterface"
    inheritedScaffoldNamespace := "R1955DLeanScaffold"
    inheritedBridgeNamespace := "R1954DLeanBridge"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    r1958AuditUnchanged := true
    transferLayerAddsActualAbstractTheorem := true
    sameScaleTransferFormalized := true
    finiteToAbelTransferFormalized := true
    noHiddenNormalizationTransferFormalized := true
    analyticAbelBoundaryTheoremFormalizedHere := false
    fullAnalyticFormalizationClaimed := false }

theorem r1959_version_declares_same_scale_transfer_layer :
    r1959DeepensR1958Audit.manuscriptVersion = "R1952D" ∧
    r1959DeepensR1958Audit.transferPacketVersion = "R1959D_LEAN" ∧
    r1959DeepensR1958Audit.inheritedAuditNamespace = "R1958DLeanAudit" ∧
    r1959DeepensR1958Audit.inheritedCoverageNamespace = "R1957DLeanCoverage" ∧
    r1959DeepensR1958Audit.inheritedInterfaceNamespace = "R1956DLeanInterface" ∧
    r1959DeepensR1958Audit.inheritedScaffoldNamespace = "R1955DLeanScaffold" ∧
    r1959DeepensR1958Audit.inheritedBridgeNamespace = "R1954DLeanBridge" ∧
    r1959DeepensR1958Audit.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1959DeepensR1958Audit.inheritedCoreNamespace = "R1949DLean" ∧
    r1959DeepensR1958Audit.r1958AuditUnchanged = true ∧
    r1959DeepensR1958Audit.transferLayerAddsActualAbstractTheorem = true ∧
    r1959DeepensR1958Audit.sameScaleTransferFormalized = true ∧
    r1959DeepensR1958Audit.finiteToAbelTransferFormalized = true ∧
    r1959DeepensR1958Audit.noHiddenNormalizationTransferFormalized = true ∧
    r1959DeepensR1958Audit.analyticAbelBoundaryTheoremFormalizedHere = false ∧
    r1959DeepensR1958Audit.fullAnalyticFormalizationClaimed = false := by
  simp [r1959DeepensR1958Audit]

end R1959DLeanTransfer
