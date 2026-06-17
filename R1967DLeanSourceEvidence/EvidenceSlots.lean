import R1966DLeanSourceCategories

namespace R1967DLeanSourceEvidence

open R1962DLeanAnalyticRealization
open R1965DLeanRealizationInterfaces
open R1966DLeanSourceCategories

/--
R1967D source-evidence slots.  These are the concrete checklist items that a
future analytic formalization must fill in order to populate the R1966D source
categories.  They are still target slots, not claims that the corresponding
analytic number theory has already been formalized.
-/
inductive SourceEvidenceSlotKind where
  | liKernelDefinitionEvidence
  | liKernelWellPosednessEvidence
  | liKernelNormalizationEvidence
  | abelBoundaryDefinitionEvidence
  | abelBoundaryLimitEvidence
  | abelBoundarySameScaleEvidence
  | explicitFormulaObjectEvidence
  | explicitFormulaIdentityEvidence
  | explicitFormulaBoundaryEvidence
  | primePacketObjectEvidence
  | primePacketEstimateEvidence
  | primePacketFormulaEvidence
  | zeroPacketObjectEvidence
  | zeroPacketEstimateEvidence
  | zeroPacketFormulaEvidence
  | endpointObjectEvidence
  | endpointEstimateEvidence
  | endpointScaleEvidence
  | scaleObjectEvidence
  | scaleLittleOhEvidence
  | scaleNoDriftEvidence
  | obstructionLedgerEvidence
  | obstructionEntryEvidence
  | obstructionCompatibilityEvidence
  | residualObjectEvidence
  | residualExclusionEvidence
  | residualTerminalEvidence
  deriving DecidableEq, Repr

/-- Map each evidence slot to the concrete analytic source category that must provide it. -/
def sourceKindOfEvidenceSlot : SourceEvidenceSlotKind → ConcreteAnalyticSourceKind
  | SourceEvidenceSlotKind.liKernelDefinitionEvidence => ConcreteAnalyticSourceKind.liKernelSource
  | SourceEvidenceSlotKind.liKernelWellPosednessEvidence => ConcreteAnalyticSourceKind.liKernelSource
  | SourceEvidenceSlotKind.liKernelNormalizationEvidence => ConcreteAnalyticSourceKind.liKernelSource
  | SourceEvidenceSlotKind.abelBoundaryDefinitionEvidence => ConcreteAnalyticSourceKind.abelBoundarySource
  | SourceEvidenceSlotKind.abelBoundaryLimitEvidence => ConcreteAnalyticSourceKind.abelBoundarySource
  | SourceEvidenceSlotKind.abelBoundarySameScaleEvidence => ConcreteAnalyticSourceKind.abelBoundarySource
  | SourceEvidenceSlotKind.explicitFormulaObjectEvidence => ConcreteAnalyticSourceKind.explicitFormulaSource
  | SourceEvidenceSlotKind.explicitFormulaIdentityEvidence => ConcreteAnalyticSourceKind.explicitFormulaSource
  | SourceEvidenceSlotKind.explicitFormulaBoundaryEvidence => ConcreteAnalyticSourceKind.explicitFormulaSource
  | SourceEvidenceSlotKind.primePacketObjectEvidence => ConcreteAnalyticSourceKind.primePacketSource
  | SourceEvidenceSlotKind.primePacketEstimateEvidence => ConcreteAnalyticSourceKind.primePacketSource
  | SourceEvidenceSlotKind.primePacketFormulaEvidence => ConcreteAnalyticSourceKind.primePacketSource
  | SourceEvidenceSlotKind.zeroPacketObjectEvidence => ConcreteAnalyticSourceKind.zeroPacketSource
  | SourceEvidenceSlotKind.zeroPacketEstimateEvidence => ConcreteAnalyticSourceKind.zeroPacketSource
  | SourceEvidenceSlotKind.zeroPacketFormulaEvidence => ConcreteAnalyticSourceKind.zeroPacketSource
  | SourceEvidenceSlotKind.endpointObjectEvidence => ConcreteAnalyticSourceKind.endpointResidualSource
  | SourceEvidenceSlotKind.endpointEstimateEvidence => ConcreteAnalyticSourceKind.endpointResidualSource
  | SourceEvidenceSlotKind.endpointScaleEvidence => ConcreteAnalyticSourceKind.endpointResidualSource
  | SourceEvidenceSlotKind.scaleObjectEvidence => ConcreteAnalyticSourceKind.scaleControlSource
  | SourceEvidenceSlotKind.scaleLittleOhEvidence => ConcreteAnalyticSourceKind.scaleControlSource
  | SourceEvidenceSlotKind.scaleNoDriftEvidence => ConcreteAnalyticSourceKind.scaleControlSource
  | SourceEvidenceSlotKind.obstructionLedgerEvidence => ConcreteAnalyticSourceKind.obstructionLedgerSource
  | SourceEvidenceSlotKind.obstructionEntryEvidence => ConcreteAnalyticSourceKind.obstructionLedgerSource
  | SourceEvidenceSlotKind.obstructionCompatibilityEvidence => ConcreteAnalyticSourceKind.obstructionLedgerSource
  | SourceEvidenceSlotKind.residualObjectEvidence => ConcreteAnalyticSourceKind.endpointResidualSource
  | SourceEvidenceSlotKind.residualExclusionEvidence => ConcreteAnalyticSourceKind.endpointResidualSource
  | SourceEvidenceSlotKind.residualTerminalEvidence => ConcreteAnalyticSourceKind.endpointResidualSource

/-- A lightweight profile for a source-evidence slot. -/
structure SourceEvidenceSlotProfile where
  slot : SourceEvidenceSlotKind
  requiredSourceKind : ConcreteAnalyticSourceKind
  namesConcreteObjectOrEstimate : Prop
  recordsScaleOrBoundaryCompatibility : Prop
  feedsR1966SourceEvidence : Prop
  nonClaimBoundary : Prop

/-- Default profile for each R1967D source-evidence slot. -/
def profileOfEvidenceSlot (s : SourceEvidenceSlotKind) : SourceEvidenceSlotProfile :=
  { slot := s
    requiredSourceKind := sourceKindOfEvidenceSlot s
    namesConcreteObjectOrEstimate := True
    recordsScaleOrBoundaryCompatibility := True
    feedsR1966SourceEvidence := True
    nonClaimBoundary := True }

/-- Every default evidence-slot profile records its slot. -/
theorem profileOfEvidenceSlot_records_slot (s : SourceEvidenceSlotKind) :
    (profileOfEvidenceSlot s).slot = s := by
  rfl

/-- Evidence slots preserve the non-claim boundary. -/
theorem evidence_slot_profile_non_claim_boundary (s : SourceEvidenceSlotKind) :
    (profileOfEvidenceSlot s).nonClaimBoundary := by
  trivial

/-- The Li-kernel definition evidence slot is assigned to the Li-kernel source. -/
theorem li_kernel_definition_slot_source_kind :
    sourceKindOfEvidenceSlot SourceEvidenceSlotKind.liKernelDefinitionEvidence =
      ConcreteAnalyticSourceKind.liKernelSource := by
  rfl

/-- The explicit-formula identity evidence slot is assigned to the explicit-formula source. -/
theorem explicit_formula_identity_slot_source_kind :
    sourceKindOfEvidenceSlot SourceEvidenceSlotKind.explicitFormulaIdentityEvidence =
      ConcreteAnalyticSourceKind.explicitFormulaSource := by
  rfl

/-- The prime-packet estimate evidence slot is assigned to the prime-packet source. -/
theorem prime_packet_estimate_slot_source_kind :
    sourceKindOfEvidenceSlot SourceEvidenceSlotKind.primePacketEstimateEvidence =
      ConcreteAnalyticSourceKind.primePacketSource := by
  rfl

/-- The zero-packet estimate evidence slot is assigned to the zero-packet source. -/
theorem zero_packet_estimate_slot_source_kind :
    sourceKindOfEvidenceSlot SourceEvidenceSlotKind.zeroPacketEstimateEvidence =
      ConcreteAnalyticSourceKind.zeroPacketSource := by
  rfl

end R1967DLeanSourceEvidence
