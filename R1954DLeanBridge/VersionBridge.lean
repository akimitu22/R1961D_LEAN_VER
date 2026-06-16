import R1952DLeanSupport

namespace R1954DLeanBridge

structure BridgeVersionCompatibility where
  manuscriptVersion : String
  bridgePacketVersion : String
  inheritedSupportPacketVersion : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  bridgePurpose : String
  analyticObjectsAreBridgedConditionally : Bool
  inheritedSupportUnchanged : Bool


def r1954BridgeUsesR1953Support : BridgeVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    bridgePacketVersion := "R1954D_LEAN_BRIDGE"
    inheritedSupportPacketVersion := "R1953D_LEAN_VER"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    bridgePurpose := "standard RH / Li-criterion / manuscript-object bridge layer above the verified conditional support packet"
    analyticObjectsAreBridgedConditionally := true
    inheritedSupportUnchanged := true }


theorem bridge_version_declares_inherited_verified_support :
    r1954BridgeUsesR1953Support.manuscriptVersion = "R1952D" ∧
    r1954BridgeUsesR1953Support.bridgePacketVersion = "R1954D_LEAN_BRIDGE" ∧
    r1954BridgeUsesR1953Support.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1954BridgeUsesR1953Support.inheritedCoreNamespace = "R1949DLean" ∧
    r1954BridgeUsesR1953Support.analyticObjectsAreBridgedConditionally = true ∧
    r1954BridgeUsesR1953Support.inheritedSupportUnchanged = true := by
  exact And.intro rfl
    (And.intro rfl
      (And.intro rfl
        (And.intro rfl
          (And.intro rfl rfl))))

end R1954DLeanBridge
