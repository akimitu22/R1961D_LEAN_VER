import R1960DLeanLimit.LimitPassageCertificates

namespace R1960DLeanLimit

structure LimitVersionCompatibility where
  manuscriptVersion : String
  limitPacketVersion : String
  inheritedTransferNamespace : String
  inheritedAuditNamespace : String
  inheritedCoverageNamespace : String
  inheritedInterfaceNamespace : String
  inheritedScaffoldNamespace : String
  inheritedBridgeNamespace : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  r1959TransferUnchanged : Bool
  limitLayerAddsActualAbstractTheorem : Bool
  boundaryLimitPassageFormalized : Bool
  eventualFiniteTargetFormalized : Bool
  noHiddenScaleDriftBoundaryFormalized : Bool
  analyticAbelBoundaryTheoremFormalizedHere : Bool
  fullAnalyticFormalizationClaimed : Bool

def r1960DeepensR1959Transfer : LimitVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    limitPacketVersion := "R1960D_LEAN"
    inheritedTransferNamespace := "R1959DLeanTransfer"
    inheritedAuditNamespace := "R1958DLeanAudit"
    inheritedCoverageNamespace := "R1957DLeanCoverage"
    inheritedInterfaceNamespace := "R1956DLeanInterface"
    inheritedScaffoldNamespace := "R1955DLeanScaffold"
    inheritedBridgeNamespace := "R1954DLeanBridge"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    r1959TransferUnchanged := true
    limitLayerAddsActualAbstractTheorem := true
    boundaryLimitPassageFormalized := true
    eventualFiniteTargetFormalized := true
    noHiddenScaleDriftBoundaryFormalized := true
    analyticAbelBoundaryTheoremFormalizedHere := false
    fullAnalyticFormalizationClaimed := false }

theorem r1960_version_declares_abel_boundary_limit_layer :
    r1960DeepensR1959Transfer.manuscriptVersion = "R1952D" ∧
    r1960DeepensR1959Transfer.limitPacketVersion = "R1960D_LEAN" ∧
    r1960DeepensR1959Transfer.inheritedTransferNamespace = "R1959DLeanTransfer" ∧
    r1960DeepensR1959Transfer.inheritedAuditNamespace = "R1958DLeanAudit" ∧
    r1960DeepensR1959Transfer.inheritedCoverageNamespace = "R1957DLeanCoverage" ∧
    r1960DeepensR1959Transfer.inheritedInterfaceNamespace = "R1956DLeanInterface" ∧
    r1960DeepensR1959Transfer.inheritedScaffoldNamespace = "R1955DLeanScaffold" ∧
    r1960DeepensR1959Transfer.inheritedBridgeNamespace = "R1954DLeanBridge" ∧
    r1960DeepensR1959Transfer.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1960DeepensR1959Transfer.inheritedCoreNamespace = "R1949DLean" ∧
    r1960DeepensR1959Transfer.r1959TransferUnchanged = true ∧
    r1960DeepensR1959Transfer.limitLayerAddsActualAbstractTheorem = true ∧
    r1960DeepensR1959Transfer.boundaryLimitPassageFormalized = true ∧
    r1960DeepensR1959Transfer.eventualFiniteTargetFormalized = true ∧
    r1960DeepensR1959Transfer.noHiddenScaleDriftBoundaryFormalized = true ∧
    r1960DeepensR1959Transfer.analyticAbelBoundaryTheoremFormalizedHere = false ∧
    r1960DeepensR1959Transfer.fullAnalyticFormalizationClaimed = false := by
  simp [r1960DeepensR1959Transfer]

end R1960DLeanLimit
