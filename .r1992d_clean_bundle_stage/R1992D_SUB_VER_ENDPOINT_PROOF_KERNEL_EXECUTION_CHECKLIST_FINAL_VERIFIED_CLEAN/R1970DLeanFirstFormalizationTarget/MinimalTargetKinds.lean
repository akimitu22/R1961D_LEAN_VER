import R1969DLeanFormalizationPriority

namespace R1970DLeanFirstFormalizationTarget

open R1969DLeanFormalizationPriority
open R1968DLeanAnchorClassification
open R1967DLeanSourceEvidence
open R1966DLeanSourceCategories

/--
R1970D minimal first-formalization target kinds.  These are deliberately smaller
than the full analytic program.  They choose a first object/identity to begin
formalizing, without claiming that the analytic number theory has already been
completed.
-/
inductive FirstFormalizationTargetKind where
  | abelBoundaryDefinition
  | abelBoundaryLimitIdentity
  | actualLiKernelDefinition
  | liKernelNormalization
  | explicitFormulaIdentityBridge
  | primePacketEstimate
  | zeroPacketEstimate
  | residualExclusionBridge
  deriving DecidableEq, Repr

/-- Evidence slot attached to a candidate first formalization target. -/
def evidenceSlotOfFirstTarget : FirstFormalizationTargetKind → SourceEvidenceSlotKind
  | FirstFormalizationTargetKind.abelBoundaryDefinition =>
      SourceEvidenceSlotKind.abelBoundaryDefinitionEvidence
  | FirstFormalizationTargetKind.abelBoundaryLimitIdentity =>
      SourceEvidenceSlotKind.abelBoundaryLimitEvidence
  | FirstFormalizationTargetKind.actualLiKernelDefinition =>
      SourceEvidenceSlotKind.liKernelDefinitionEvidence
  | FirstFormalizationTargetKind.liKernelNormalization =>
      SourceEvidenceSlotKind.liKernelNormalizationEvidence
  | FirstFormalizationTargetKind.explicitFormulaIdentityBridge =>
      SourceEvidenceSlotKind.explicitFormulaIdentityEvidence
  | FirstFormalizationTargetKind.primePacketEstimate =>
      SourceEvidenceSlotKind.primePacketEstimateEvidence
  | FirstFormalizationTargetKind.zeroPacketEstimate =>
      SourceEvidenceSlotKind.zeroPacketEstimateEvidence
  | FirstFormalizationTargetKind.residualExclusionBridge =>
      SourceEvidenceSlotKind.residualExclusionEvidence

/-- Source category attached to a candidate first formalization target. -/
def sourceKindOfFirstTarget (t : FirstFormalizationTargetKind) : ConcreteAnalyticSourceKind :=
  sourceKindOfEvidenceSlot (evidenceSlotOfFirstTarget t)

/-- Anchor kind attached to a candidate first formalization target. -/
def anchorKindOfFirstTarget (t : FirstFormalizationTargetKind) : EvidenceAnchorKind :=
  anchorKindOfEvidenceSlot (evidenceSlotOfFirstTarget t)

/-- Priority attached to a candidate first formalization target. -/
def priorityOfFirstTarget (t : FirstFormalizationTargetKind) : FormalizationPriority :=
  priorityOfEvidenceSlot (evidenceSlotOfFirstTarget t)

/-- Dependency severity attached to a candidate first formalization target. -/
def severityOfFirstTarget (t : FirstFormalizationTargetKind) : DependencySeverity :=
  severityOfEvidenceSlot (evidenceSlotOfFirstTarget t)

/-- Remaining burden attached to a candidate first formalization target. -/
def burdenOfFirstTarget (t : FirstFormalizationTargetKind) : RemainingProofBurden :=
  burdenOfEvidenceSlot (evidenceSlotOfFirstTarget t)

/--
The first target selected by R1970D.  We select the Abel-boundary definition
rather than the full zeta/explicit-formula layer: it is a smaller single-object
entry point that still feeds the actual Li boundary chain.
-/
def recommendedFirstFormalizationTarget : FirstFormalizationTargetKind :=
  FirstFormalizationTargetKind.abelBoundaryDefinition

/-- Profile for a minimal first target. -/
structure FirstFormalizationTargetProfile where
  targetKind : FirstFormalizationTargetKind
  evidenceSlot : SourceEvidenceSlotKind
  sourceKind : ConcreteAnalyticSourceKind
  anchorKind : EvidenceAnchorKind
  priority : FormalizationPriority
  severity : DependencySeverity
  burden : RemainingProofBurden
  isSingleObjectOrIdentityTarget : Prop
  isChosenBeforeGlobalZetaTheory : Prop
  feedsPriorityPlan : Prop
  nonClaimBoundary : Prop

/-- Default profile for a first formalization target. -/
def profileOfFirstTargetKind (t : FirstFormalizationTargetKind) : FirstFormalizationTargetProfile :=
  { targetKind := t
    evidenceSlot := evidenceSlotOfFirstTarget t
    sourceKind := sourceKindOfFirstTarget t
    anchorKind := anchorKindOfFirstTarget t
    priority := priorityOfFirstTarget t
    severity := severityOfFirstTarget t
    burden := burdenOfFirstTarget t
    isSingleObjectOrIdentityTarget := True
    isChosenBeforeGlobalZetaTheory := True
    feedsPriorityPlan := True
    nonClaimBoundary := True }

/-- The default first-target profile records its target. -/
theorem first_target_profile_records_target (t : FirstFormalizationTargetKind) :
    (profileOfFirstTargetKind t).targetKind = t := by
  rfl

/-- The default first-target profile records the associated evidence slot. -/
theorem first_target_profile_records_evidence_slot (t : FirstFormalizationTargetKind) :
    (profileOfFirstTargetKind t).evidenceSlot = evidenceSlotOfFirstTarget t := by
  rfl

/-- The default first-target profile records the associated source category. -/
theorem first_target_profile_records_source_kind (t : FirstFormalizationTargetKind) :
    (profileOfFirstTargetKind t).sourceKind = sourceKindOfFirstTarget t := by
  rfl

/-- The default first-target profile preserves the non-claim boundary. -/
theorem first_target_profile_non_claim_boundary (t : FirstFormalizationTargetKind) :
    (profileOfFirstTargetKind t).nonClaimBoundary := by
  trivial

/-- The recommended R1970D first target is the Abel-boundary definition target. -/
theorem recommended_first_target_is_abel_boundary_definition :
    recommendedFirstFormalizationTarget =
      FirstFormalizationTargetKind.abelBoundaryDefinition := by
  rfl

/-- The recommended first target uses the Abel-boundary-definition evidence slot. -/
theorem recommended_first_target_evidence_slot :
    evidenceSlotOfFirstTarget recommendedFirstFormalizationTarget =
      SourceEvidenceSlotKind.abelBoundaryDefinitionEvidence := by
  rfl

/-- The recommended first target is a new analytic formalization anchor. -/
theorem recommended_first_target_anchor_kind :
    anchorKindOfFirstTarget recommendedFirstFormalizationTarget =
      EvidenceAnchorKind.newAnalyticFormalizationAnchor := by
  rfl

/-- The recommended first target is an immediate-core priority. -/
theorem recommended_first_target_priority :
    priorityOfFirstTarget recommendedFirstFormalizationTarget =
      FormalizationPriority.immediateCore := by
  rfl

end R1970DLeanFirstFormalizationTarget
