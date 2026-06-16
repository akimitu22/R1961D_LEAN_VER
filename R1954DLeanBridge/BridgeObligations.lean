import R1954DLeanBridge.ManuscriptObjects
import R1952DLeanSupport.ObligationFieldBindings

namespace R1954DLeanBridge

open R1949DLean
open R1952DLeanSupport

inductive BridgeObligationLabel where
  | boStd1RiemannZetaAndLiTarget
  | boStd2LiKernelFiniteObjectBridge
  | boStd3AbelBoundarySameScaleBridge
  | boStd4ExplicitFormulaClosureBridge
  | boStd5AdmissibleScaleTopologyBridge
  | boStd6TerminalPacketBridge
  | boStd7ObstructionQuotientLedgerBridge
  | boStd8LiTargetToStandardConclusion
  deriving Repr, DecidableEq

structure BridgeObligationBinding where
  label : BridgeObligationLabel
  analyticLayer : StandardAnalyticLayer
  manuscriptLocation : String
  bridgeStatus : String


def bridgeObligationBindings : List BridgeObligationBinding :=
  [ { label := BridgeObligationLabel.boStd1RiemannZetaAndLiTarget
      analyticLayer := StandardAnalyticLayer.riemannZeta
      manuscriptLocation := "standard RH statement / Li-criterion target declaration"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge
      analyticLayer := StandardAnalyticLayer.liKernel
      manuscriptLocation := "finite Li object and Li-kernel input bridge"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge
      analyticLayer := StandardAnalyticLayer.abelRegularization
      manuscriptLocation := "Abel-boundary same-scale coordinate bridge"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge
      analyticLayer := StandardAnalyticLayer.explicitFormula
      manuscriptLocation := "explicit-formula generated-closure bridge"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge
      analyticLayer := StandardAnalyticLayer.admissibleScaleTopology
      manuscriptLocation := "admissible scale topology / uniform little-oh bridge"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd6TerminalPacketBridge
      analyticLayer := StandardAnalyticLayer.zeroCounting
      manuscriptLocation := "prime, zero-phase, and endpoint terminal packet bridge"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge
      analyticLayer := StandardAnalyticLayer.obstructionQuotient
      manuscriptLocation := "obstruction quotient and non-internal cancellation ledger bridge"
      bridgeStatus := "bridge obligation, not analytic proof" },
    { label := BridgeObligationLabel.boStd8LiTargetToStandardConclusion
      analyticLayer := StandardAnalyticLayer.liCoefficients
      manuscriptLocation := "Li-target to standard analytic conclusion bridge"
      bridgeStatus := "bridge obligation, not analytic proof" } ]


def bridgeObligationLabels : List BridgeObligationLabel :=
  bridgeObligationBindings.map (fun b => b.label)


def finiteToAbelBridgeCoreLabels : List ProofObligationLabel :=
  [ ProofObligationLabel.poFA1QuotientIdentityToSameScale,
    ProofObligationLabel.poFA2SameObjectNoHiddenToClosure,
    ProofObligationLabel.poFA3CoordinateClosureToFiniteToAbel ]


def coherentClosureBridgeCoreLabels : List ProofObligationLabel :=
  [ ProofObligationLabel.poSS1CoherentSupportExhaustion,
    ProofObligationLabel.poLR1ListedLayerRealizability,
    ProofObligationLabel.poGR1SupportActionGeneratorRealization,
    ProofObligationLabel.poGR2GeneratorEntryIntoGeneratedClosure ]


def terminalBridgeCoreLabels : List ProofObligationLabel :=
  [ ProofObligationLabel.poTR1GeneratedPreservesTerminal,
    ProofObligationLabel.poTR2PreservationExcludesInternalKill,
    ProofObligationLabel.poTR3KillAttemptClassification ]


theorem bridge_obligation_table_has_all_labels :
    bridgeObligationLabels =
      [ BridgeObligationLabel.boStd1RiemannZetaAndLiTarget,
        BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge,
        BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge,
        BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge,
        BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge,
        BridgeObligationLabel.boStd6TerminalPacketBridge,
        BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge,
        BridgeObligationLabel.boStd8LiTargetToStandardConclusion ] := by
  rfl


theorem finite_to_abel_bridge_labels_match_core_profile :
    finiteToAbelBridgeCoreLabels = finiteToAbelProfile.requiredObligations := by
  rfl


theorem coherent_closure_bridge_labels_match_core_profile :
    coherentClosureBridgeCoreLabels = structuralGeneratedClosureProfile.requiredObligations := by
  rfl


theorem terminal_bridge_labels_extend_no_escape_profile :
    terminalBridgeCoreLabels = terminalExtensionProfile.requiredObligations := by
  rfl


theorem bridge_profiles_cover_main_terminal_extension_profile :
    finiteToAbelBridgeCoreLabels ++ coherentClosureBridgeCoreLabels ++ terminalBridgeCoreLabels =
      mainTerminalExtensionProfile.requiredObligations := by
  rfl

end R1954DLeanBridge
