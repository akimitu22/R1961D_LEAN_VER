import R1961DLeanPacket.PacketBalanceCertificates

namespace R1961DLeanPacket

structure PacketVersionCompatibility where
  manuscriptVersion : String
  packetBalanceVersion : String
  inheritedLimitNamespace : String
  inheritedTransferNamespace : String
  inheritedAuditNamespace : String
  inheritedCoverageNamespace : String
  inheritedInterfaceNamespace : String
  inheritedScaffoldNamespace : String
  inheritedBridgeNamespace : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  r1960LimitUnchanged : Bool
  packetLayerAddsActualAbstractTheorem : Bool
  packetBalanceFormalized : Bool
  boundaryToPacketTransferFormalized : Bool
  finiteTailToPacketTargetFormalized : Bool
  noHiddenResidualFormalized : Bool
  actualExplicitFormulaFormalizedHere : Bool
  fullAnalyticFormalizationClaimed : Bool

def r1961DeepensR1960Limit : PacketVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    packetBalanceVersion := "R1961D_LEAN"
    inheritedLimitNamespace := "R1960DLeanLimit"
    inheritedTransferNamespace := "R1959DLeanTransfer"
    inheritedAuditNamespace := "R1958DLeanAudit"
    inheritedCoverageNamespace := "R1957DLeanCoverage"
    inheritedInterfaceNamespace := "R1956DLeanInterface"
    inheritedScaffoldNamespace := "R1955DLeanScaffold"
    inheritedBridgeNamespace := "R1954DLeanBridge"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    r1960LimitUnchanged := true
    packetLayerAddsActualAbstractTheorem := true
    packetBalanceFormalized := true
    boundaryToPacketTransferFormalized := true
    finiteTailToPacketTargetFormalized := true
    noHiddenResidualFormalized := true
    actualExplicitFormulaFormalizedHere := false
    fullAnalyticFormalizationClaimed := false }

theorem r1961_version_declares_packet_balance_layer :
    r1961DeepensR1960Limit.manuscriptVersion = "R1952D" ∧
    r1961DeepensR1960Limit.packetBalanceVersion = "R1961D_LEAN" ∧
    r1961DeepensR1960Limit.inheritedLimitNamespace = "R1960DLeanLimit" ∧
    r1961DeepensR1960Limit.inheritedTransferNamespace = "R1959DLeanTransfer" ∧
    r1961DeepensR1960Limit.inheritedAuditNamespace = "R1958DLeanAudit" ∧
    r1961DeepensR1960Limit.inheritedCoverageNamespace = "R1957DLeanCoverage" ∧
    r1961DeepensR1960Limit.inheritedInterfaceNamespace = "R1956DLeanInterface" ∧
    r1961DeepensR1960Limit.inheritedScaffoldNamespace = "R1955DLeanScaffold" ∧
    r1961DeepensR1960Limit.inheritedBridgeNamespace = "R1954DLeanBridge" ∧
    r1961DeepensR1960Limit.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1961DeepensR1960Limit.inheritedCoreNamespace = "R1949DLean" ∧
    r1961DeepensR1960Limit.r1960LimitUnchanged = true ∧
    r1961DeepensR1960Limit.packetLayerAddsActualAbstractTheorem = true ∧
    r1961DeepensR1960Limit.packetBalanceFormalized = true ∧
    r1961DeepensR1960Limit.boundaryToPacketTransferFormalized = true ∧
    r1961DeepensR1960Limit.finiteTailToPacketTargetFormalized = true ∧
    r1961DeepensR1960Limit.noHiddenResidualFormalized = true ∧
    r1961DeepensR1960Limit.actualExplicitFormulaFormalizedHere = false ∧
    r1961DeepensR1960Limit.fullAnalyticFormalizationClaimed = false := by
  simp [r1961DeepensR1960Limit]

end R1961DLeanPacket
