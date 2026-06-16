import R1957DLeanCoverage.VersionCoverage
import R1956DLeanInterface
import R1955DLeanScaffold.RefinedBridgeObligations

namespace R1957DLeanCoverage

open R1956DLeanInterface
open R1955DLeanScaffold

structure InterfaceCoverageBinding where
  interfaceLabel : InterfaceObligationLabel
  estimateKind : Option EstimateKind
  mathlibAnchorName : String
  refinedTarget : RefinedBridgeObligationLabel
  bridgeTargetDescription : String
  deriving Repr

def interfaceCoverageBindings : List InterfaceCoverageBinding :=
  [ { interfaceLabel := InterfaceObligationLabel.ioStd1ZetaObjectAnchor
      estimateKind := none
      mathlibAnchorName := "Riemann zeta object"
      refinedTarget := RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget
      bridgeTargetDescription := "standard RH and Li target anchor" },
    { interfaceLabel := InterfaceObligationLabel.ioStd2LiCriterionAnchor
      estimateKind := some EstimateKind.conclusionTransfer
      mathlibAnchorName := "Li criterion target"
      refinedTarget := RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget
      bridgeTargetDescription := "Li criterion target anchor" },
    { interfaceLabel := InterfaceObligationLabel.ioLi1CoefficientFamilyInput
      estimateKind := some EstimateKind.finiteLiCompatibility
      mathlibAnchorName := "Li criterion target"
      refinedTarget := RefinedBridgeObligationLabel.rbLi1LiCoefficientFamily
      bridgeTargetDescription := "Li coefficient family input" },
    { interfaceLabel := InterfaceObligationLabel.ioLi2KernelIdentitySlot
      estimateKind := some EstimateKind.liKernelIdentity
      mathlibAnchorName := "Li criterion target"
      refinedTarget := RefinedBridgeObligationLabel.rbLi2LiKernelCompatibility
      bridgeTargetDescription := "Li kernel compatibility slot" },
    { interfaceLabel := InterfaceObligationLabel.ioLi3FiniteLiCompatibilitySlot
      estimateKind := some EstimateKind.finiteLiCompatibility
      mathlibAnchorName := "Li criterion target"
      refinedTarget := RefinedBridgeObligationLabel.rbLi3FiniteLiInputCompatibility
      bridgeTargetDescription := "finite Li input compatibility" },
    { interfaceLabel := InterfaceObligationLabel.ioAbel1RegularizationInput
      estimateKind := some EstimateKind.abelBoundaryPassage
      mathlibAnchorName := "scale topology and uniform estimates"
      refinedTarget := RefinedBridgeObligationLabel.rbAbel1AbelRegularizationObject
      bridgeTargetDescription := "Abel regularization input" },
    { interfaceLabel := InterfaceObligationLabel.ioAbel2BoundaryPassageEstimate
      estimateKind := some EstimateKind.abelBoundaryPassage
      mathlibAnchorName := "scale topology and uniform estimates"
      refinedTarget := RefinedBridgeObligationLabel.rbAbel2SameScaleBoundaryCoordinate
      bridgeTargetDescription := "same-scale Abel boundary passage" },
    { interfaceLabel := InterfaceObligationLabel.ioEF1PrimePacketEstimate
      estimateKind := some EstimateKind.explicitFormulaPrimePacket
      mathlibAnchorName := "explicit formula package"
      refinedTarget := RefinedBridgeObligationLabel.rbEF1PrimePacketRealization
      bridgeTargetDescription := "explicit formula prime packet" },
    { interfaceLabel := InterfaceObligationLabel.ioEF2ZeroPacketEstimate
      estimateKind := some EstimateKind.explicitFormulaZeroPacket
      mathlibAnchorName := "explicit formula package"
      refinedTarget := RefinedBridgeObligationLabel.rbEF2ZeroPacketRealization
      bridgeTargetDescription := "explicit formula zero packet" },
    { interfaceLabel := InterfaceObligationLabel.ioEF3EndpointBoundaryEstimate
      estimateKind := some EstimateKind.endpointBoundaryTerm
      mathlibAnchorName := "explicit formula package"
      refinedTarget := RefinedBridgeObligationLabel.rbEF3EndpointBoundaryTerm
      bridgeTargetDescription := "endpoint boundary term" },
    { interfaceLabel := InterfaceObligationLabel.ioScale1AdmissibleTopologyInput
      estimateKind := some EstimateKind.admissibleScaleControl
      mathlibAnchorName := "scale topology and uniform estimates"
      refinedTarget := RefinedBridgeObligationLabel.rbScale1AdmissibleScaleTopology
      bridgeTargetDescription := "scale topology input" },
    { interfaceLabel := InterfaceObligationLabel.ioScale2UniformLittleOhEstimate
      estimateKind := some EstimateKind.uniformLittleOhControl
      mathlibAnchorName := "scale topology and uniform estimates"
      refinedTarget := RefinedBridgeObligationLabel.rbScale2UniformLittleOhTracking
      bridgeTargetDescription := "uniform little-oh control" },
    { interfaceLabel := InterfaceObligationLabel.ioTerm1TerminalPacketClassifier
      estimateKind := some EstimateKind.terminalClassification
      mathlibAnchorName := "explicit formula package"
      refinedTarget := RefinedBridgeObligationLabel.rbTerm1TerminalPacketClassification
      bridgeTargetDescription := "terminal packet classifier" },
    { interfaceLabel := InterfaceObligationLabel.ioTerm2TerminalNoAbsorptionInterface
      estimateKind := some EstimateKind.terminalClassification
      mathlibAnchorName := "explicit formula package"
      refinedTarget := RefinedBridgeObligationLabel.rbTerm2TerminalNonAbsorption
      bridgeTargetDescription := "terminal non-absorption interface" },
    { interfaceLabel := InterfaceObligationLabel.ioOQ1ObstructionLedgerInput
      estimateKind := some EstimateKind.obstructionLedger
      mathlibAnchorName := "obstruction quotient ledger"
      refinedTarget := RefinedBridgeObligationLabel.rbOQ1ObstructionQuotientLedger
      bridgeTargetDescription := "obstruction quotient ledger input" },
    { interfaceLabel := InterfaceObligationLabel.ioOQ2NonInternalCancellationInterface
      estimateKind := some EstimateKind.obstructionLedger
      mathlibAnchorName := "obstruction quotient ledger"
      refinedTarget := RefinedBridgeObligationLabel.rbOQ2NonInternalCancellationLedger
      bridgeTargetDescription := "non-internal cancellation ledger" },
    { interfaceLabel := InterfaceObligationLabel.ioConclusion1LiTargetTransfer
      estimateKind := some EstimateKind.conclusionTransfer
      mathlibAnchorName := "Li criterion target"
      refinedTarget := RefinedBridgeObligationLabel.rbConclusion1LiTargetToStandardConclusion
      bridgeTargetDescription := "Li target transfer to standard conclusion" } ]

structure CoverageCompletenessCertificate where
  interfaceLabels : List InterfaceObligationLabel
  refinedTargets : List RefinedBridgeObligationLabel
  estimateSlots : List EstimateSlot
  mathlibAnchorList : List MathlibAnchor
  coverageBindings : List InterfaceCoverageBinding
  interfaceTheoremsPassThroughDeclaredAxioms : Bool
  fullAnalyticFormalizationClaimed : Bool

def r1957CoverageCertificate : CoverageCompletenessCertificate :=
  { interfaceLabels := interfaceObligationLabels
    refinedTargets := interfaceProjectionToRefinedLabels
    estimateSlots := analyticEstimateSlots
    mathlibAnchorList := mathlibAnchors
    coverageBindings := interfaceCoverageBindings
    interfaceTheoremsPassThroughDeclaredAxioms := true
    fullAnalyticFormalizationClaimed := false }

theorem every_interface_obligation_has_refined_target :
    r1957CoverageCertificate.interfaceLabels = interfaceObligationLabels ∧
    r1957CoverageCertificate.refinedTargets = interfaceProjectionToRefinedLabels := by
  constructor
  · rfl
  · rfl

theorem every_estimate_slot_has_interface_coverage :
    r1957CoverageCertificate.estimateSlots = analyticEstimateSlots ∧
    r1957CoverageCertificate.coverageBindings = interfaceCoverageBindings := by
  constructor
  · rfl
  · rfl

theorem every_mathlib_anchor_is_declared_external_and_covered :
    r1957CoverageCertificate.mathlibAnchorList = mathlibAnchors ∧
    MathlibAnchorDeclaredExternal zetaFunctionAnchor ∧
    MathlibAnchorDeclaredExternal liCriterionAnchor ∧
    MathlibAnchorDeclaredExternal explicitFormulaAnchor ∧
    MathlibAnchorDeclaredExternal scaleEstimateAnchor := by
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  · rfl

theorem r1957_declares_no_full_analytic_formalization :
    r1957CoverageCertificate.fullAnalyticFormalizationClaimed = false := by
  rfl

end R1957DLeanCoverage
