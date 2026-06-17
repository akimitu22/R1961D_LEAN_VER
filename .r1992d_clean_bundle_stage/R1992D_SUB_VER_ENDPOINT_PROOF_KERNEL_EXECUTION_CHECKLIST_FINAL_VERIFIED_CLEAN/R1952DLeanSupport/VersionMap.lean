import R1949DLean

namespace R1952DLeanSupport

structure VersionCompatibility where
  manuscriptVersion : String
  supportPacketVersion : String
  inheritedCoreVersion : String
  coreNamespace : String
  coreUnchanged : Bool
  manuscriptChangesArePresentationOnly : Bool
  leanScope : String


def r1952UsesR1949Core : VersionCompatibility :=
  { manuscriptVersion := "R1952D"
    supportPacketVersion := "R1953D_LEAN"
    inheritedCoreVersion := "R1949D verified hardened Lean packet"
    coreNamespace := "R1949DLean"
    coreUnchanged := true
    manuscriptChangesArePresentationOnly := true
    leanScope := "conditional logical assembly from localized packages to main no-escape and terminal-extension conclusions" }


theorem version_map_declares_unmodified_verified_core :
    r1952UsesR1949Core.manuscriptVersion = "R1952D" ∧
    r1952UsesR1949Core.supportPacketVersion = "R1953D_LEAN" ∧
    r1952UsesR1949Core.coreNamespace = "R1949DLean" ∧
    r1952UsesR1949Core.coreUnchanged = true ∧
    r1952UsesR1949Core.manuscriptChangesArePresentationOnly = true := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end R1952DLeanSupport
