import R1949DLean.AssumptionPackages

namespace R1949DLean

structure DependencyCertificate where
  usesAbelIdentity : Bool
  usesSameObjectPreservation : Bool
  usesSupportExhaustion : Bool
  usesLayerRealization : Bool
  usesGeneratorRealization : Bool
  usesTerminalExtension : Bool

def finiteToAbelCertificate : DependencyCertificate :=
  { usesAbelIdentity := true
    usesSameObjectPreservation := true
    usesSupportExhaustion := false
    usesLayerRealization := false
    usesGeneratorRealization := false
    usesTerminalExtension := false }

def layerRealizationCertificate : DependencyCertificate :=
  { usesAbelIdentity := false
    usesSameObjectPreservation := false
    usesSupportExhaustion := false
    usesLayerRealization := true
    usesGeneratorRealization := false
    usesTerminalExtension := false }

def structuralSupportCertificate : DependencyCertificate :=
  { usesAbelIdentity := false
    usesSameObjectPreservation := false
    usesSupportExhaustion := true
    usesLayerRealization := true
    usesGeneratorRealization := true
    usesTerminalExtension := false }

def terminalRigidityCertificate : DependencyCertificate :=
  { usesAbelIdentity := false
    usesSameObjectPreservation := false
    usesSupportExhaustion := false
    usesLayerRealization := false
    usesGeneratorRealization := false
    usesTerminalExtension := true }

def mainNoEscapeCertificate : DependencyCertificate :=
  { usesAbelIdentity := true
    usesSameObjectPreservation := true
    usesSupportExhaustion := true
    usesLayerRealization := true
    usesGeneratorRealization := true
    usesTerminalExtension := true }

theorem finite_to_abel_certificate_shape :
    finiteToAbelCertificate.usesAbelIdentity = true ∧
    finiteToAbelCertificate.usesSameObjectPreservation = true ∧
    finiteToAbelCertificate.usesSupportExhaustion = false ∧
    finiteToAbelCertificate.usesLayerRealization = false ∧
    finiteToAbelCertificate.usesGeneratorRealization = false ∧
    finiteToAbelCertificate.usesTerminalExtension = false := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

theorem layer_realization_certificate_shape :
    layerRealizationCertificate.usesAbelIdentity = false ∧
    layerRealizationCertificate.usesSameObjectPreservation = false ∧
    layerRealizationCertificate.usesSupportExhaustion = false ∧
    layerRealizationCertificate.usesLayerRealization = true ∧
    layerRealizationCertificate.usesGeneratorRealization = false ∧
    layerRealizationCertificate.usesTerminalExtension = false := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

theorem structural_support_certificate_shape :
    structuralSupportCertificate.usesAbelIdentity = false ∧
    structuralSupportCertificate.usesSameObjectPreservation = false ∧
    structuralSupportCertificate.usesSupportExhaustion = true ∧
    structuralSupportCertificate.usesLayerRealization = true ∧
    structuralSupportCertificate.usesGeneratorRealization = true ∧
    structuralSupportCertificate.usesTerminalExtension = false := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

theorem terminal_rigidity_certificate_shape :
    terminalRigidityCertificate.usesAbelIdentity = false ∧
    terminalRigidityCertificate.usesSameObjectPreservation = false ∧
    terminalRigidityCertificate.usesSupportExhaustion = false ∧
    terminalRigidityCertificate.usesLayerRealization = false ∧
    terminalRigidityCertificate.usesGeneratorRealization = false ∧
    terminalRigidityCertificate.usesTerminalExtension = true := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

theorem main_no_escape_certificate_shape :
    mainNoEscapeCertificate.usesAbelIdentity = true ∧
    mainNoEscapeCertificate.usesSameObjectPreservation = true ∧
    mainNoEscapeCertificate.usesSupportExhaustion = true ∧
    mainNoEscapeCertificate.usesLayerRealization = true ∧
    mainNoEscapeCertificate.usesGeneratorRealization = true ∧
    mainNoEscapeCertificate.usesTerminalExtension = true := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end R1949DLean
