import R1955DLeanScaffold.ManuscriptScaffolds
import R1954DLeanBridge.BridgeObligations

namespace R1955DLeanScaffold

open R1954DLeanBridge

inductive RefinedBridgeObligationLabel where
  | rbStd1StandardRHAndLiTarget
  | rbLi1LiCoefficientFamily
  | rbLi2LiKernelCompatibility
  | rbLi3FiniteLiInputCompatibility
  | rbAbel1AbelRegularizationObject
  | rbAbel2SameScaleBoundaryCoordinate
  | rbEF1PrimePacketRealization
  | rbEF2ZeroPacketRealization
  | rbEF3EndpointBoundaryTerm
  | rbScale1AdmissibleScaleTopology
  | rbScale2UniformLittleOhTracking
  | rbTerm1TerminalPacketClassification
  | rbTerm2TerminalNonAbsorption
  | rbOQ1ObstructionQuotientLedger
  | rbOQ2NonInternalCancellationLedger
  | rbConclusion1LiTargetToStandardConclusion
  deriving Repr, DecidableEq

structure RefinedBridgeObligationBinding where
  label : RefinedBridgeObligationLabel
  layer : RefinedAnalyticScaffoldLayer
  r1954BridgeLabel : BridgeObligationLabel
  analyticObjectName : String
  manuscriptLocation : String
  status : String


def refinedBridgeObligationBindings : List RefinedBridgeObligationBinding :=
  [ { label := RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget
      layer := RefinedAnalyticScaffoldLayer.standardRHStatement
      r1954BridgeLabel := BridgeObligationLabel.boStd1RiemannZetaAndLiTarget
      analyticObjectName := "standard RH statement and Li-criterion target"
      manuscriptLocation := "standard target declaration"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbLi1LiCoefficientFamily
      layer := RefinedAnalyticScaffoldLayer.liCoefficientFamily
      r1954BridgeLabel := BridgeObligationLabel.boStd1RiemannZetaAndLiTarget
      analyticObjectName := "Li coefficient family"
      manuscriptLocation := "Li-side target data"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbLi2LiKernelCompatibility
      layer := RefinedAnalyticScaffoldLayer.liKernelObject
      r1954BridgeLabel := BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge
      analyticObjectName := "Li kernel object"
      manuscriptLocation := "Li-kernel finite-object bridge"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbLi3FiniteLiInputCompatibility
      layer := RefinedAnalyticScaffoldLayer.finiteLiInput
      r1954BridgeLabel := BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge
      analyticObjectName := "finite Li input"
      manuscriptLocation := "finite-to-Abel entrance"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbAbel1AbelRegularizationObject
      layer := RefinedAnalyticScaffoldLayer.abelBoundaryPassage
      r1954BridgeLabel := BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge
      analyticObjectName := "Abel regularization object"
      manuscriptLocation := "Abel-boundary passage"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbAbel2SameScaleBoundaryCoordinate
      layer := RefinedAnalyticScaffoldLayer.abelBoundaryPassage
      r1954BridgeLabel := BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge
      analyticObjectName := "same-scale boundary coordinate"
      manuscriptLocation := "same-scale Abel-boundary coordinate"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbEF1PrimePacketRealization
      layer := RefinedAnalyticScaffoldLayer.explicitFormulaPrimePacket
      r1954BridgeLabel := BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge
      analyticObjectName := "prime packet"
      manuscriptLocation := "explicit-formula prime packet"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbEF2ZeroPacketRealization
      layer := RefinedAnalyticScaffoldLayer.explicitFormulaZeroPacket
      r1954BridgeLabel := BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge
      analyticObjectName := "zero-phase packet"
      manuscriptLocation := "explicit-formula zero packet"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbEF3EndpointBoundaryTerm
      layer := RefinedAnalyticScaffoldLayer.endpointBoundaryTerm
      r1954BridgeLabel := BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge
      analyticObjectName := "endpoint boundary term"
      manuscriptLocation := "explicit-formula endpoint boundary term"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbScale1AdmissibleScaleTopology
      layer := RefinedAnalyticScaffoldLayer.admissibleScaleTopology
      r1954BridgeLabel := BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge
      analyticObjectName := "admissible scale topology"
      manuscriptLocation := "scale topology"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbScale2UniformLittleOhTracking
      layer := RefinedAnalyticScaffoldLayer.admissibleScaleTopology
      r1954BridgeLabel := BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge
      analyticObjectName := "uniform little-oh tracking"
      manuscriptLocation := "uniform scale estimates"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbTerm1TerminalPacketClassification
      layer := RefinedAnalyticScaffoldLayer.terminalPacketClassification
      r1954BridgeLabel := BridgeObligationLabel.boStd6TerminalPacketBridge
      analyticObjectName := "terminal packet classification"
      manuscriptLocation := "prime-zero-endpoint terminal classes"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbTerm2TerminalNonAbsorption
      layer := RefinedAnalyticScaffoldLayer.terminalPacketClassification
      r1954BridgeLabel := BridgeObligationLabel.boStd6TerminalPacketBridge
      analyticObjectName := "terminal non-absorption"
      manuscriptLocation := "terminal no-escape branch"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbOQ1ObstructionQuotientLedger
      layer := RefinedAnalyticScaffoldLayer.obstructionQuotientLedger
      r1954BridgeLabel := BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge
      analyticObjectName := "obstruction quotient ledger"
      manuscriptLocation := "obstruction quotient ledger"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbOQ2NonInternalCancellationLedger
      layer := RefinedAnalyticScaffoldLayer.obstructionQuotientLedger
      r1954BridgeLabel := BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge
      analyticObjectName := "non-internal cancellation ledger"
      manuscriptLocation := "non-internal cancellation alternatives"
      status := "refined bridge obligation, not analytic proof" },
    { label := RefinedBridgeObligationLabel.rbConclusion1LiTargetToStandardConclusion
      layer := RefinedAnalyticScaffoldLayer.liTargetConclusion
      r1954BridgeLabel := BridgeObligationLabel.boStd8LiTargetToStandardConclusion
      analyticObjectName := "Li-target to standard conclusion"
      manuscriptLocation := "standard analytic conclusion"
      status := "refined bridge obligation, not analytic proof" } ]


def refinedBridgeObligationLabels : List RefinedBridgeObligationLabel :=
  refinedBridgeObligationBindings.map (fun b => b.label)

def refinedBridgeProjectionLabels : List BridgeObligationLabel :=
  refinedBridgeObligationBindings.map (fun b => b.r1954BridgeLabel)

def r1954BridgeLabelsCoveredByRefinedScaffold : List BridgeObligationLabel :=
  [ BridgeObligationLabel.boStd1RiemannZetaAndLiTarget,
    BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge,
    BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge,
    BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge,
    BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge,
    BridgeObligationLabel.boStd6TerminalPacketBridge,
    BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge,
    BridgeObligationLabel.boStd8LiTargetToStandardConclusion ]


theorem refined_bridge_obligation_table_has_all_labels :
    refinedBridgeObligationLabels =
      [ RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget,
        RefinedBridgeObligationLabel.rbLi1LiCoefficientFamily,
        RefinedBridgeObligationLabel.rbLi2LiKernelCompatibility,
        RefinedBridgeObligationLabel.rbLi3FiniteLiInputCompatibility,
        RefinedBridgeObligationLabel.rbAbel1AbelRegularizationObject,
        RefinedBridgeObligationLabel.rbAbel2SameScaleBoundaryCoordinate,
        RefinedBridgeObligationLabel.rbEF1PrimePacketRealization,
        RefinedBridgeObligationLabel.rbEF2ZeroPacketRealization,
        RefinedBridgeObligationLabel.rbEF3EndpointBoundaryTerm,
        RefinedBridgeObligationLabel.rbScale1AdmissibleScaleTopology,
        RefinedBridgeObligationLabel.rbScale2UniformLittleOhTracking,
        RefinedBridgeObligationLabel.rbTerm1TerminalPacketClassification,
        RefinedBridgeObligationLabel.rbTerm2TerminalNonAbsorption,
        RefinedBridgeObligationLabel.rbOQ1ObstructionQuotientLedger,
        RefinedBridgeObligationLabel.rbOQ2NonInternalCancellationLedger,
        RefinedBridgeObligationLabel.rbConclusion1LiTargetToStandardConclusion ] := by
  rfl


theorem refined_scaffold_covers_r1954_bridge_labels :
    r1954BridgeLabelsCoveredByRefinedScaffold = bridgeObligationLabels := by
  rfl


theorem refined_projection_records_expected_r1954_targets :
    refinedBridgeProjectionLabels =
      [ BridgeObligationLabel.boStd1RiemannZetaAndLiTarget,
        BridgeObligationLabel.boStd1RiemannZetaAndLiTarget,
        BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge,
        BridgeObligationLabel.boStd2LiKernelFiniteObjectBridge,
        BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge,
        BridgeObligationLabel.boStd3AbelBoundarySameScaleBridge,
        BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge,
        BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge,
        BridgeObligationLabel.boStd4ExplicitFormulaClosureBridge,
        BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge,
        BridgeObligationLabel.boStd5AdmissibleScaleTopologyBridge,
        BridgeObligationLabel.boStd6TerminalPacketBridge,
        BridgeObligationLabel.boStd6TerminalPacketBridge,
        BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge,
        BridgeObligationLabel.boStd7ObstructionQuotientLedgerBridge,
        BridgeObligationLabel.boStd8LiTargetToStandardConclusion ] := by
  rfl

end R1955DLeanScaffold
