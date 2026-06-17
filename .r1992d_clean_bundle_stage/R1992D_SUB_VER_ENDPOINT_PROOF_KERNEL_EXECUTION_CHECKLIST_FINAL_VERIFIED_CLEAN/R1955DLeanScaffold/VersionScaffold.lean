import R1954DLeanBridge

namespace R1955DLeanScaffold

structure RefinedScaffoldVersionCompatibility where
  manuscriptVersion : String
  refinedPacketVersion : String
  inheritedBridgeNamespace : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  r1954BridgeUnchanged : Bool
  refinedLayerIsIntermediate : Bool
  fullAnalyticFormalizationClaimed : Bool


def r1955RefinesR1954Bridge : RefinedScaffoldVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    refinedPacketVersion := "R1955D_LEAN"
    inheritedBridgeNamespace := "R1954DLeanBridge"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    r1954BridgeUnchanged := true
    refinedLayerIsIntermediate := true
    fullAnalyticFormalizationClaimed := false }


theorem r1955_version_declares_intermediate_refined_scaffold :
    r1955RefinesR1954Bridge.manuscriptVersion = "R1952D" ∧
    r1955RefinesR1954Bridge.refinedPacketVersion = "R1955D_LEAN" ∧
    r1955RefinesR1954Bridge.inheritedBridgeNamespace = "R1954DLeanBridge" ∧
    r1955RefinesR1954Bridge.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1955RefinesR1954Bridge.inheritedCoreNamespace = "R1949DLean" ∧
    r1955RefinesR1954Bridge.r1954BridgeUnchanged = true ∧
    r1955RefinesR1954Bridge.refinedLayerIsIntermediate = true ∧
    r1955RefinesR1954Bridge.fullAnalyticFormalizationClaimed = false := by
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  · rfl

end R1955DLeanScaffold
