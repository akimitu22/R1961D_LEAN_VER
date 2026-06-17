import R1967DLeanSourceEvidence

namespace R1968DLeanAnchorClassification

open R1967DLeanSourceEvidence
open R1966DLeanSourceCategories

/--
R1968D anchor classes for source-evidence slots.  This layer separates evidence
slots by the kind of formal anchor expected later: existing library material,
external classical theorem material, manuscript theorem material, or genuinely
new analytic formalization work.  It is a classification layer only.
-/
inductive EvidenceAnchorKind where
  | mathlibAnchor
  | externalClassicalTheoremAnchor
  | manuscriptTheoremAnchor
  | newAnalyticFormalizationAnchor
  | auditOrLedgerAnchor
  deriving DecidableEq, Repr

/-- Whether an anchor class is expected to require new analytic formalization. -/
def anchorRequiresNewFormalization : EvidenceAnchorKind → Bool
  | EvidenceAnchorKind.newAnalyticFormalizationAnchor => true
  | _ => false

/-- Whether an anchor class is primarily a ledger/audit anchor. -/
def anchorIsLedgerOrAudit : EvidenceAnchorKind → Bool
  | EvidenceAnchorKind.auditOrLedgerAnchor => true
  | _ => false

/--
Default anchor assignment for every R1967D source-evidence slot.  This is a
review-facing dependency classification, not a proof that the corresponding
external or analytic theorem has already been formalized.
-/
def anchorKindOfEvidenceSlot : SourceEvidenceSlotKind → EvidenceAnchorKind
  | SourceEvidenceSlotKind.liKernelDefinitionEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.liKernelWellPosednessEvidence => EvidenceAnchorKind.mathlibAnchor
  | SourceEvidenceSlotKind.liKernelNormalizationEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.abelBoundaryDefinitionEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.abelBoundaryLimitEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.abelBoundarySameScaleEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.explicitFormulaObjectEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.explicitFormulaIdentityEvidence => EvidenceAnchorKind.externalClassicalTheoremAnchor
  | SourceEvidenceSlotKind.explicitFormulaBoundaryEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.primePacketObjectEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.primePacketEstimateEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.primePacketFormulaEvidence => EvidenceAnchorKind.externalClassicalTheoremAnchor
  | SourceEvidenceSlotKind.zeroPacketObjectEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.zeroPacketEstimateEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.zeroPacketFormulaEvidence => EvidenceAnchorKind.externalClassicalTheoremAnchor
  | SourceEvidenceSlotKind.endpointObjectEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.endpointEstimateEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.endpointScaleEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.scaleObjectEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.scaleLittleOhEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.scaleNoDriftEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.obstructionLedgerEvidence => EvidenceAnchorKind.auditOrLedgerAnchor
  | SourceEvidenceSlotKind.obstructionEntryEvidence => EvidenceAnchorKind.auditOrLedgerAnchor
  | SourceEvidenceSlotKind.obstructionCompatibilityEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.residualObjectEvidence => EvidenceAnchorKind.newAnalyticFormalizationAnchor
  | SourceEvidenceSlotKind.residualExclusionEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor
  | SourceEvidenceSlotKind.residualTerminalEvidence => EvidenceAnchorKind.manuscriptTheoremAnchor

/-- Profile combining the R1967D evidence slot with its R1968D anchor class. -/
structure AnchoredEvidenceSlotProfile where
  slot : SourceEvidenceSlotKind
  sourceKind : ConcreteAnalyticSourceKind
  anchorKind : EvidenceAnchorKind
  anchorNameRegistered : Prop
  sourceCategoryPreserved : Prop
  evidenceSlotPreserved : Prop
  nonClaimBoundary : Prop

/-- Default anchored profile for a source-evidence slot. -/
def profileOfAnchoredEvidenceSlot (s : SourceEvidenceSlotKind) : AnchoredEvidenceSlotProfile :=
  { slot := s
    sourceKind := sourceKindOfEvidenceSlot s
    anchorKind := anchorKindOfEvidenceSlot s
    anchorNameRegistered := True
    sourceCategoryPreserved := True
    evidenceSlotPreserved := True
    nonClaimBoundary := True }

/-- The default anchored profile records its evidence slot. -/
theorem anchored_profile_records_slot (s : SourceEvidenceSlotKind) :
    (profileOfAnchoredEvidenceSlot s).slot = s := by
  rfl

/-- The default anchored profile records the R1967D source category for its slot. -/
theorem anchored_profile_records_source_kind (s : SourceEvidenceSlotKind) :
    (profileOfAnchoredEvidenceSlot s).sourceKind = sourceKindOfEvidenceSlot s := by
  rfl

/-- The default anchored profile records the R1968D anchor kind for its slot. -/
theorem anchored_profile_records_anchor_kind (s : SourceEvidenceSlotKind) :
    (profileOfAnchoredEvidenceSlot s).anchorKind = anchorKindOfEvidenceSlot s := by
  rfl

/-- Anchored profiles preserve the non-claim boundary. -/
theorem anchored_profile_non_claim_boundary (s : SourceEvidenceSlotKind) :
    (profileOfAnchoredEvidenceSlot s).nonClaimBoundary := by
  trivial

/-- The explicit-formula identity slot is classified as an external classical theorem anchor. -/
theorem explicit_formula_identity_anchor_kind :
    anchorKindOfEvidenceSlot SourceEvidenceSlotKind.explicitFormulaIdentityEvidence =
      EvidenceAnchorKind.externalClassicalTheoremAnchor := by
  rfl

/-- The prime-packet estimate slot is classified as new analytic formalization work. -/
theorem prime_packet_estimate_anchor_kind :
    anchorKindOfEvidenceSlot SourceEvidenceSlotKind.primePacketEstimateEvidence =
      EvidenceAnchorKind.newAnalyticFormalizationAnchor := by
  rfl

/-- Obstruction ledger evidence is classified as an audit/ledger anchor. -/
theorem obstruction_ledger_anchor_kind :
    anchorKindOfEvidenceSlot SourceEvidenceSlotKind.obstructionLedgerEvidence =
      EvidenceAnchorKind.auditOrLedgerAnchor := by
  rfl

end R1968DLeanAnchorClassification
