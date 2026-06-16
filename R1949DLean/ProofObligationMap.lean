import R1949DLean.DependencyCertificates
import R1949DLean.MainLogicalChain

namespace R1949DLean

inductive ManuscriptSection where
  | finiteToAbelBoundary
  | sameObjectPreservation
  | structuralSupportExhaustion
  | layerRealization
  | generatorRealization
  | terminalNoEscape
  | mainLogicalChain
  deriving Repr, DecidableEq

inductive FormalStatus where
  | leanTheorem
  | objectLocalAssumptionPackage
  | theoryLocalAssumptionPackage
  | reviewObligation
  deriving Repr, DecidableEq

inductive ProofObligationLabel where
  | poFA1QuotientIdentityToSameScale
  | poFA2SameObjectNoHiddenToClosure
  | poFA3CoordinateClosureToFiniteToAbel
  | poSS1CoherentSupportExhaustion
  | poLR1ListedLayerRealizability
  | poGR1SupportActionGeneratorRealization
  | poGR2GeneratorEntryIntoGeneratedClosure
  | poTR1GeneratedPreservesTerminal
  | poTR2PreservationExcludesInternalKill
  | poTR3KillAttemptClassification
  deriving Repr, DecidableEq

inductive ConclusionKind where
  | finiteToAbelClosureNecessity
  | generatedClosureEntry
  | terminalNoEscape
  | terminalIdealExtension
  | assembledMainChain
  deriving Repr, DecidableEq

structure FieldLevelObligation where
  label : ProofObligationLabel
  manuscriptSection : ManuscriptSection
  packageName : String
  status : FormalStatus

structure TheoremDependencyProfile where
  theoremName : String
  requiredObligations : List ProofObligationLabel
  conclusionKind : ConclusionKind
  certificate : DependencyCertificate

def poFA1 : FieldLevelObligation :=
  { label := ProofObligationLabel.poFA1QuotientIdentityToSameScale
    manuscriptSection := ManuscriptSection.finiteToAbelBoundary
    packageName := "AbelIdentityAxioms B"
    status := FormalStatus.objectLocalAssumptionPackage }

def poFA2 : FieldLevelObligation :=
  { label := ProofObligationLabel.poFA2SameObjectNoHiddenToClosure
    manuscriptSection := ManuscriptSection.sameObjectPreservation
    packageName := "SameObjectPreservationAxioms B"
    status := FormalStatus.objectLocalAssumptionPackage }

def poFA3 : FieldLevelObligation :=
  { label := ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel
    manuscriptSection := ManuscriptSection.finiteToAbelBoundary
    packageName := "SameObjectPreservationAxioms B"
    status := FormalStatus.objectLocalAssumptionPackage }

def poSS1 : FieldLevelObligation :=
  { label := ProofObligationLabel.poSS1CoherentSupportExhaustion
    manuscriptSection := ManuscriptSection.structuralSupportExhaustion
    packageName := "SupportExhaustionAxioms Th"
    status := FormalStatus.theoryLocalAssumptionPackage }

def poLR1 : FieldLevelObligation :=
  { label := ProofObligationLabel.poLR1ListedLayerRealizability
    manuscriptSection := ManuscriptSection.layerRealization
    packageName := "LayerRealizationAxioms Th.layerCtx"
    status := FormalStatus.theoryLocalAssumptionPackage }

def poGR1 : FieldLevelObligation :=
  { label := ProofObligationLabel.poGR1SupportActionGeneratorRealization
    manuscriptSection := ManuscriptSection.generatorRealization
    packageName := "GeneratorRealizationAxioms Th"
    status := FormalStatus.theoryLocalAssumptionPackage }

def poGR2 : FieldLevelObligation :=
  { label := ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure
    manuscriptSection := ManuscriptSection.generatorRealization
    packageName := "GeneratorRealizationAxioms Th"
    status := FormalStatus.theoryLocalAssumptionPackage }

def poTR1 : FieldLevelObligation :=
  { label := ProofObligationLabel.poTR1GeneratedPreservesTerminal
    manuscriptSection := ManuscriptSection.terminalNoEscape
    packageName := "TerminalExtensionAxioms Th"
    status := FormalStatus.theoryLocalAssumptionPackage }

def poTR2 : FieldLevelObligation :=
  { label := ProofObligationLabel.poTR2PreservationExcludesInternalKill
    manuscriptSection := ManuscriptSection.terminalNoEscape
    packageName := "TerminalExtensionAxioms Th"
    status := FormalStatus.theoryLocalAssumptionPackage }

def poTR3 : FieldLevelObligation :=
  { label := ProofObligationLabel.poTR3KillAttemptClassification
    manuscriptSection := ManuscriptSection.terminalNoEscape
    packageName := "TerminalExtensionAxioms Th"
    status := FormalStatus.theoryLocalAssumptionPackage }

def finiteToAbelProfile : TheoremDependencyProfile :=
  { theoremName := "finite_to_abel_from_bookkeeping"
    requiredObligations :=
      [ ProofObligationLabel.poFA1QuotientIdentityToSameScale,
        ProofObligationLabel.poFA2SameObjectNoHiddenToClosure,
        ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel ]
    conclusionKind := ConclusionKind.finiteToAbelClosureNecessity
    certificate := finiteToAbelCertificate }

def structuralGeneratedClosureProfile : TheoremDependencyProfile :=
  { theoremName := "coherent_closure_normal_form_chain"
    requiredObligations :=
      [ ProofObligationLabel.poSS1CoherentSupportExhaustion,
        ProofObligationLabel.poLR1ListedLayerRealizability,
        ProofObligationLabel.poGR1SupportActionGeneratorRealization,
        ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure ]
    conclusionKind := ConclusionKind.generatedClosureEntry
    certificate := structuralSupportCertificate }

def terminalNoEscapeProfile : TheoremDependencyProfile :=
  { theoremName := "terminal_no_escape_chain"
    requiredObligations :=
      [ ProofObligationLabel.poTR1GeneratedPreservesTerminal,
        ProofObligationLabel.poTR2PreservationExcludesInternalKill ]
    conclusionKind := ConclusionKind.terminalNoEscape
    certificate := terminalRigidityCertificate }

def terminalExtensionProfile : TheoremDependencyProfile :=
  { theoremName := "kill_attempt_forces_terminal_ideal_extension"
    requiredObligations :=
      [ ProofObligationLabel.poTR1GeneratedPreservesTerminal,
        ProofObligationLabel.poTR2PreservationExcludesInternalKill,
        ProofObligationLabel.poTR3KillAttemptClassification ]
    conclusionKind := ConclusionKind.terminalIdealExtension
    certificate := terminalRigidityCertificate }

def mainNoEscapeProfile : TheoremDependencyProfile :=
  { theoremName := "conditional_main_no_escape_from_all_obligations"
    requiredObligations :=
      [ ProofObligationLabel.poFA1QuotientIdentityToSameScale,
        ProofObligationLabel.poFA2SameObjectNoHiddenToClosure,
        ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel,
        ProofObligationLabel.poSS1CoherentSupportExhaustion,
        ProofObligationLabel.poLR1ListedLayerRealizability,
        ProofObligationLabel.poGR1SupportActionGeneratorRealization,
        ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure,
        ProofObligationLabel.poTR1GeneratedPreservesTerminal,
        ProofObligationLabel.poTR2PreservationExcludesInternalKill ]
    conclusionKind := ConclusionKind.assembledMainChain
    certificate := mainNoEscapeCertificate }

def mainTerminalExtensionProfile : TheoremDependencyProfile :=
  { theoremName := "conditional_kill_attempt_forces_terminal_extension"
    requiredObligations :=
      [ ProofObligationLabel.poFA1QuotientIdentityToSameScale,
        ProofObligationLabel.poFA2SameObjectNoHiddenToClosure,
        ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel,
        ProofObligationLabel.poSS1CoherentSupportExhaustion,
        ProofObligationLabel.poLR1ListedLayerRealizability,
        ProofObligationLabel.poGR1SupportActionGeneratorRealization,
        ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure,
        ProofObligationLabel.poTR1GeneratedPreservesTerminal,
        ProofObligationLabel.poTR2PreservationExcludesInternalKill,
        ProofObligationLabel.poTR3KillAttemptClassification ]
    conclusionKind := ConclusionKind.terminalIdealExtension
    certificate := mainNoEscapeCertificate }

theorem layer_realization_obligation_is_no_longer_trivial_true_definition :
    layerRealizationCertificate.usesLayerRealization = true := by
  rfl

theorem structural_profile_uses_layer_realization :
    structuralGeneratedClosureProfile.certificate.usesLayerRealization = true := by
  rfl

theorem main_profile_uses_all_hardened_packages :
    mainNoEscapeProfile.certificate.usesAbelIdentity = true ∧
    mainNoEscapeProfile.certificate.usesSameObjectPreservation = true ∧
    mainNoEscapeProfile.certificate.usesSupportExhaustion = true ∧
    mainNoEscapeProfile.certificate.usesLayerRealization = true ∧
    mainNoEscapeProfile.certificate.usesGeneratorRealization = true ∧
    mainNoEscapeProfile.certificate.usesTerminalExtension = true := by
  exact main_no_escape_certificate_shape

theorem main_terminal_extension_profile_includes_classification :
    mainTerminalExtensionProfile.requiredObligations =
      [ ProofObligationLabel.poFA1QuotientIdentityToSameScale,
        ProofObligationLabel.poFA2SameObjectNoHiddenToClosure,
        ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel,
        ProofObligationLabel.poSS1CoherentSupportExhaustion,
        ProofObligationLabel.poLR1ListedLayerRealizability,
        ProofObligationLabel.poGR1SupportActionGeneratorRealization,
        ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure,
        ProofObligationLabel.poTR1GeneratedPreservesTerminal,
        ProofObligationLabel.poTR2PreservationExcludesInternalKill,
        ProofObligationLabel.poTR3KillAttemptClassification ] := by
  rfl

end R1949DLean
