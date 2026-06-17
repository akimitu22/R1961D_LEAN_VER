import R1949DLean
import R1952DLeanSupport.ProfileCoverage

namespace R1952DLeanSupport

open R1949DLean


structure ObligationFieldBinding where
  label : ProofObligationLabel
  packageName : String
  fieldName : String
  manuscriptLocation : String


def obligationFieldBindings : List ObligationFieldBinding :=
  [ { label := ProofObligationLabel.poFA1QuotientIdentityToSameScale
      packageName := "AbelIdentityAxioms B"
      fieldName := "quotientIdentityYieldsSameScaleCoordinate"
      manuscriptLocation := "Section 5 finite-to-Abel same-scale coordinate preservation" },
    { label := ProofObligationLabel.poFA2SameObjectNoHiddenToClosure
      packageName := "SameObjectPreservationAxioms B"
      fieldName := "sameObjectAndNoHiddenForceCoordinateClosure"
      manuscriptLocation := "Section 5 same-object and no-hidden-normalization preservation" },
    { label := ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel
      packageName := "SameObjectPreservationAxioms B"
      fieldName := "coordinateClosureForcesFiniteToAbelClosure"
      manuscriptLocation := "Section 5 finite-to-Abel closure necessity" },
    { label := ProofObligationLabel.poSS1CoherentSupportExhaustion
      packageName := "SupportExhaustionAxioms Th"
      fieldName := "coordinateSupportExhaustion"
      manuscriptLocation := "Section 9 coherent-closure support exhaustion" },
    { label := ProofObligationLabel.poLR1ListedLayerRealizability
      packageName := "LayerRealizationAxioms Th.layerCtx"
      fieldName := "listed layer realization fields"
      manuscriptLocation := "Section 9 listed structural-layer realizability" },
    { label := ProofObligationLabel.poGR1SupportActionGeneratorRealization
      packageName := "GeneratorRealizationAxioms Th"
      fieldName := "supportActionGeneratorRealization"
      manuscriptLocation := "Section 9 support action generator realization" },
    { label := ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure
      packageName := "GeneratorRealizationAxioms Th"
      fieldName := "generatorRealizationEntersGeneratedClosure"
      manuscriptLocation := "Section 9 generated closure entry" },
    { label := ProofObligationLabel.poTR1GeneratedPreservesTerminal
      packageName := "TerminalExtensionAxioms Th"
      fieldName := "generatedOperationsPreserveNonzeroTerminalClasses"
      manuscriptLocation := "terminal no-escape generated preservation" },
    { label := ProofObligationLabel.poTR2PreservationExcludesInternalKill
      packageName := "TerminalExtensionAxioms Th"
      fieldName := "preservingTerminalClassExcludesInternalKill"
      manuscriptLocation := "terminal no-escape internal-kill exclusion" },
    { label := ProofObligationLabel.poTR3KillAttemptClassification
      packageName := "TerminalExtensionAxioms Th"
      fieldName := "killAttemptClassification"
      manuscriptLocation := "terminal kill-attempt branch classification" } ]


def obligationBindingLabels : List ProofObligationLabel :=
  obligationFieldBindings.map (fun b => b.label)


theorem obligation_binding_table_has_all_labels :
    obligationBindingLabels =
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


theorem main_profile_and_binding_table_align_on_no_escape_labels :
    mainNoEscapeProfile.requiredObligations =
      [ ProofObligationLabel.poFA1QuotientIdentityToSameScale,
        ProofObligationLabel.poFA2SameObjectNoHiddenToClosure,
        ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel,
        ProofObligationLabel.poSS1CoherentSupportExhaustion,
        ProofObligationLabel.poLR1ListedLayerRealizability,
        ProofObligationLabel.poGR1SupportActionGeneratorRealization,
        ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure,
        ProofObligationLabel.poTR1GeneratedPreservesTerminal,
        ProofObligationLabel.poTR2PreservationExcludesInternalKill ] ∧
    obligationBindingLabels =
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
  exact And.intro rfl rfl

end R1952DLeanSupport
