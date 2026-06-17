import R1956DLeanInterface.MathlibAnchors
import R1955DLeanScaffold.RefinedBridgeObligations

namespace R1956DLeanInterface

open R1955DLeanScaffold

inductive InterfaceObligationLabel where
  | ioStd1ZetaObjectAnchor
  | ioStd2LiCriterionAnchor
  | ioLi1CoefficientFamilyInput
  | ioLi2KernelIdentitySlot
  | ioLi3FiniteLiCompatibilitySlot
  | ioAbel1RegularizationInput
  | ioAbel2BoundaryPassageEstimate
  | ioEF1PrimePacketEstimate
  | ioEF2ZeroPacketEstimate
  | ioEF3EndpointBoundaryEstimate
  | ioScale1AdmissibleTopologyInput
  | ioScale2UniformLittleOhEstimate
  | ioTerm1TerminalPacketClassifier
  | ioTerm2TerminalNoAbsorptionInterface
  | ioOQ1ObstructionLedgerInput
  | ioOQ2NonInternalCancellationInterface
  | ioConclusion1LiTargetTransfer
  deriving Repr, DecidableEq

def interfaceObligationLabels : List InterfaceObligationLabel :=
  [InterfaceObligationLabel.ioStd1ZetaObjectAnchor,
   InterfaceObligationLabel.ioStd2LiCriterionAnchor,
   InterfaceObligationLabel.ioLi1CoefficientFamilyInput,
   InterfaceObligationLabel.ioLi2KernelIdentitySlot,
   InterfaceObligationLabel.ioLi3FiniteLiCompatibilitySlot,
   InterfaceObligationLabel.ioAbel1RegularizationInput,
   InterfaceObligationLabel.ioAbel2BoundaryPassageEstimate,
   InterfaceObligationLabel.ioEF1PrimePacketEstimate,
   InterfaceObligationLabel.ioEF2ZeroPacketEstimate,
   InterfaceObligationLabel.ioEF3EndpointBoundaryEstimate,
   InterfaceObligationLabel.ioScale1AdmissibleTopologyInput,
   InterfaceObligationLabel.ioScale2UniformLittleOhEstimate,
   InterfaceObligationLabel.ioTerm1TerminalPacketClassifier,
   InterfaceObligationLabel.ioTerm2TerminalNoAbsorptionInterface,
   InterfaceObligationLabel.ioOQ1ObstructionLedgerInput,
   InterfaceObligationLabel.ioOQ2NonInternalCancellationInterface,
   InterfaceObligationLabel.ioConclusion1LiTargetTransfer]

def interfaceProjectionToRefinedLabels : List RefinedBridgeObligationLabel :=
  [RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget,
   RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget,
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
   RefinedBridgeObligationLabel.rbConclusion1LiTargetToStandardConclusion]

theorem interface_obligation_table_has_all_labels :
    interfaceObligationLabels =
      [InterfaceObligationLabel.ioStd1ZetaObjectAnchor,
       InterfaceObligationLabel.ioStd2LiCriterionAnchor,
       InterfaceObligationLabel.ioLi1CoefficientFamilyInput,
       InterfaceObligationLabel.ioLi2KernelIdentitySlot,
       InterfaceObligationLabel.ioLi3FiniteLiCompatibilitySlot,
       InterfaceObligationLabel.ioAbel1RegularizationInput,
       InterfaceObligationLabel.ioAbel2BoundaryPassageEstimate,
       InterfaceObligationLabel.ioEF1PrimePacketEstimate,
       InterfaceObligationLabel.ioEF2ZeroPacketEstimate,
       InterfaceObligationLabel.ioEF3EndpointBoundaryEstimate,
       InterfaceObligationLabel.ioScale1AdmissibleTopologyInput,
       InterfaceObligationLabel.ioScale2UniformLittleOhEstimate,
       InterfaceObligationLabel.ioTerm1TerminalPacketClassifier,
       InterfaceObligationLabel.ioTerm2TerminalNoAbsorptionInterface,
       InterfaceObligationLabel.ioOQ1ObstructionLedgerInput,
       InterfaceObligationLabel.ioOQ2NonInternalCancellationInterface,
       InterfaceObligationLabel.ioConclusion1LiTargetTransfer] := by
  rfl

theorem interface_projection_records_refined_targets :
    interfaceProjectionToRefinedLabels =
      [RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget,
       RefinedBridgeObligationLabel.rbStd1StandardRHAndLiTarget,
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
       RefinedBridgeObligationLabel.rbConclusion1LiTargetToStandardConclusion] := by
  rfl

end R1956DLeanInterface
