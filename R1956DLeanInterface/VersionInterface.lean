import R1955DLeanScaffold

namespace R1956DLeanInterface

open R1955DLeanScaffold

structure AnalyticInterfaceVersionCompatibility where
  manuscriptVersion : String
  interfacePacketVersion : String
  inheritedScaffoldNamespace : String
  inheritedBridgeNamespace : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  r1955ScaffoldUnchanged : Bool
  analyticInterfaceIsPreformal : Bool
  estimateSlotsExplicitlyNamed : Bool
  mathlibAnchorsAreDeclaredOnly : Bool
  fullAnalyticFormalizationClaimed : Bool

def r1956RefinesR1955Scaffold : AnalyticInterfaceVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    interfacePacketVersion := "R1956D_LEAN"
    inheritedScaffoldNamespace := "R1955DLeanScaffold"
    inheritedBridgeNamespace := "R1954DLeanBridge"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    r1955ScaffoldUnchanged := true
    analyticInterfaceIsPreformal := true
    estimateSlotsExplicitlyNamed := true
    mathlibAnchorsAreDeclaredOnly := true
    fullAnalyticFormalizationClaimed := false }

theorem r1956_version_declares_preformal_analytic_interface :
    r1956RefinesR1955Scaffold.manuscriptVersion = "R1952D" ∧
    r1956RefinesR1955Scaffold.interfacePacketVersion = "R1956D_LEAN" ∧
    r1956RefinesR1955Scaffold.inheritedScaffoldNamespace = "R1955DLeanScaffold" ∧
    r1956RefinesR1955Scaffold.inheritedBridgeNamespace = "R1954DLeanBridge" ∧
    r1956RefinesR1955Scaffold.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1956RefinesR1955Scaffold.inheritedCoreNamespace = "R1949DLean" ∧
    r1956RefinesR1955Scaffold.r1955ScaffoldUnchanged = true ∧
    r1956RefinesR1955Scaffold.analyticInterfaceIsPreformal = true ∧
    r1956RefinesR1955Scaffold.estimateSlotsExplicitlyNamed = true ∧
    r1956RefinesR1955Scaffold.mathlibAnchorsAreDeclaredOnly = true ∧
    r1956RefinesR1955Scaffold.fullAnalyticFormalizationClaimed = false := by
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
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  · rfl

end R1956DLeanInterface
