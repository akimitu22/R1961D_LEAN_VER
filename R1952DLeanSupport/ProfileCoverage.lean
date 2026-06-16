import R1949DLean
import R1952DLeanSupport.SupportTheorems

namespace R1952DLeanSupport

open R1949DLean


def ProfileContains (p : TheoremDependencyProfile) (l : ProofObligationLabel) : Prop :=
  l ∈ p.requiredObligations


theorem main_profile_contains_finite_to_abel_labels :
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poFA1QuotientIdentityToSameScale ∧
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poFA2SameObjectNoHiddenToClosure ∧
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel := by
  unfold ProfileContains mainNoEscapeProfile
  simp


theorem main_profile_contains_structural_labels :
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poSS1CoherentSupportExhaustion ∧
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poLR1ListedLayerRealizability ∧
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poGR1SupportActionGeneratorRealization ∧
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure := by
  unfold ProfileContains mainNoEscapeProfile
  simp


theorem main_profile_contains_terminal_no_escape_labels :
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poTR1GeneratedPreservesTerminal ∧
    ProfileContains mainNoEscapeProfile ProofObligationLabel.poTR2PreservationExcludesInternalKill := by
  unfold ProfileContains mainNoEscapeProfile
  simp


theorem terminal_extension_profile_contains_classification_label :
    ProfileContains mainTerminalExtensionProfile ProofObligationLabel.poTR3KillAttemptClassification := by
  unfold ProfileContains mainTerminalExtensionProfile
  simp


theorem support_wrapper_keeps_main_profile_certificate :
    mainNoEscapeProfile.certificate = mainNoEscapeCertificate := by
  rfl

end R1952DLeanSupport
