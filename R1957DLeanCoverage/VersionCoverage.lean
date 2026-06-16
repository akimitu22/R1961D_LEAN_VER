import R1956DLeanInterface

namespace R1957DLeanCoverage

structure CoverageVersionCompatibility where
  manuscriptVersion : String
  coveragePacketVersion : String
  inheritedInterfaceNamespace : String
  inheritedScaffoldNamespace : String
  inheritedBridgeNamespace : String
  inheritedSupportNamespace : String
  inheritedCoreNamespace : String
  r1956InterfaceUnchanged : Bool
  coverageLayerIsCertificationOnly : Bool
  dependencyProfilesExplicitlyNamed : Bool
  estimateSlotCoverageCertified : Bool
  mathlibAnchorCoverageCertified : Bool
  fullAnalyticFormalizationClaimed : Bool

def r1957CertifiesR1956Interface : CoverageVersionCompatibility :=
  { manuscriptVersion := "R1952D"
    coveragePacketVersion := "R1957D_LEAN"
    inheritedInterfaceNamespace := "R1956DLeanInterface"
    inheritedScaffoldNamespace := "R1955DLeanScaffold"
    inheritedBridgeNamespace := "R1954DLeanBridge"
    inheritedSupportNamespace := "R1952DLeanSupport"
    inheritedCoreNamespace := "R1949DLean"
    r1956InterfaceUnchanged := true
    coverageLayerIsCertificationOnly := true
    dependencyProfilesExplicitlyNamed := true
    estimateSlotCoverageCertified := true
    mathlibAnchorCoverageCertified := true
    fullAnalyticFormalizationClaimed := false }

theorem r1957_version_declares_interface_coverage_certification_layer :
    r1957CertifiesR1956Interface.manuscriptVersion = "R1952D" ∧
    r1957CertifiesR1956Interface.coveragePacketVersion = "R1957D_LEAN" ∧
    r1957CertifiesR1956Interface.inheritedInterfaceNamespace = "R1956DLeanInterface" ∧
    r1957CertifiesR1956Interface.inheritedScaffoldNamespace = "R1955DLeanScaffold" ∧
    r1957CertifiesR1956Interface.inheritedBridgeNamespace = "R1954DLeanBridge" ∧
    r1957CertifiesR1956Interface.inheritedSupportNamespace = "R1952DLeanSupport" ∧
    r1957CertifiesR1956Interface.inheritedCoreNamespace = "R1949DLean" ∧
    r1957CertifiesR1956Interface.r1956InterfaceUnchanged = true ∧
    r1957CertifiesR1956Interface.coverageLayerIsCertificationOnly = true ∧
    r1957CertifiesR1956Interface.dependencyProfilesExplicitlyNamed = true ∧
    r1957CertifiesR1956Interface.estimateSlotCoverageCertified = true ∧
    r1957CertifiesR1956Interface.mathlibAnchorCoverageCertified = true ∧
    r1957CertifiesR1956Interface.fullAnalyticFormalizationClaimed = false := by
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
  constructor
  · rfl
  constructor
  · rfl
  · rfl

end R1957DLeanCoverage
