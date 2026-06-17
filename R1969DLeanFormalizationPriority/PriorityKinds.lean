import R1968DLeanAnchorClassification

namespace R1969DLeanFormalizationPriority

open R1968DLeanAnchorClassification
open R1967DLeanSourceEvidence

/--
R1969D formalization-priority classes.  This is not a proof of any analytic
source; it is a machine-checkable ordering layer for the remaining source
anchors identified in R1968D.
-/
inductive FormalizationPriority where
  | immediateCore
  | high
  | medium
  | low
  | ledgerOnly
  deriving DecidableEq, Repr

/-- Dependency-severity classes for the remaining analytic proof burden. -/
inductive DependencySeverity where
  | blockingCore
  | critical
  | major
  | moderate
  | auditOnly
  deriving DecidableEq, Repr

/-- Remaining-proof-burden classes for anchored evidence slots. -/
inductive RemainingProofBurden where
  | newAnalyticCoreFormalization
  | externalClassicalTheoremIntegration
  | manuscriptBridgeFormalization
  | existingLibraryOrRoutineFormalization
  | auditOrLedgerCheck
  deriving DecidableEq, Repr

/-- Priority induced by an R1968D anchor kind. -/
def priorityOfAnchorKind : EvidenceAnchorKind → FormalizationPriority
  | EvidenceAnchorKind.newAnalyticFormalizationAnchor => FormalizationPriority.immediateCore
  | EvidenceAnchorKind.externalClassicalTheoremAnchor => FormalizationPriority.high
  | EvidenceAnchorKind.manuscriptTheoremAnchor => FormalizationPriority.high
  | EvidenceAnchorKind.mathlibAnchor => FormalizationPriority.medium
  | EvidenceAnchorKind.auditOrLedgerAnchor => FormalizationPriority.ledgerOnly

/-- Dependency severity induced by an R1968D anchor kind. -/
def severityOfAnchorKind : EvidenceAnchorKind → DependencySeverity
  | EvidenceAnchorKind.newAnalyticFormalizationAnchor => DependencySeverity.blockingCore
  | EvidenceAnchorKind.externalClassicalTheoremAnchor => DependencySeverity.critical
  | EvidenceAnchorKind.manuscriptTheoremAnchor => DependencySeverity.major
  | EvidenceAnchorKind.mathlibAnchor => DependencySeverity.moderate
  | EvidenceAnchorKind.auditOrLedgerAnchor => DependencySeverity.auditOnly

/-- Remaining proof burden induced by an R1968D anchor kind. -/
def burdenOfAnchorKind : EvidenceAnchorKind → RemainingProofBurden
  | EvidenceAnchorKind.newAnalyticFormalizationAnchor =>
      RemainingProofBurden.newAnalyticCoreFormalization
  | EvidenceAnchorKind.externalClassicalTheoremAnchor =>
      RemainingProofBurden.externalClassicalTheoremIntegration
  | EvidenceAnchorKind.manuscriptTheoremAnchor =>
      RemainingProofBurden.manuscriptBridgeFormalization
  | EvidenceAnchorKind.mathlibAnchor =>
      RemainingProofBurden.existingLibraryOrRoutineFormalization
  | EvidenceAnchorKind.auditOrLedgerAnchor =>
      RemainingProofBurden.auditOrLedgerCheck

/-- Priority induced directly by a source-evidence slot. -/
def priorityOfEvidenceSlot (s : SourceEvidenceSlotKind) : FormalizationPriority :=
  priorityOfAnchorKind (anchorKindOfEvidenceSlot s)

/-- Dependency severity induced directly by a source-evidence slot. -/
def severityOfEvidenceSlot (s : SourceEvidenceSlotKind) : DependencySeverity :=
  severityOfAnchorKind (anchorKindOfEvidenceSlot s)

/-- Remaining proof burden induced directly by a source-evidence slot. -/
def burdenOfEvidenceSlot (s : SourceEvidenceSlotKind) : RemainingProofBurden :=
  burdenOfAnchorKind (anchorKindOfEvidenceSlot s)

/-- Profile extending an R1968D anchored-evidence slot with priority metadata. -/
structure PrioritizedAnchorProfile where
  slot : SourceEvidenceSlotKind
  anchorKind : EvidenceAnchorKind
  priority : FormalizationPriority
  severity : DependencySeverity
  burden : RemainingProofBurden
  anchorProfile : AnchoredEvidenceSlotProfile
  priorityJustificationRegistered : Prop
  dependencySeverityRegistered : Prop
  remainingBurdenRegistered : Prop
  nonClaimBoundary : Prop

/-- Default R1969D profile for an evidence slot. -/
def prioritizedProfileOfEvidenceSlot (s : SourceEvidenceSlotKind) : PrioritizedAnchorProfile :=
  { slot := s
    anchorKind := anchorKindOfEvidenceSlot s
    priority := priorityOfEvidenceSlot s
    severity := severityOfEvidenceSlot s
    burden := burdenOfEvidenceSlot s
    anchorProfile := profileOfAnchoredEvidenceSlot s
    priorityJustificationRegistered := True
    dependencySeverityRegistered := True
    remainingBurdenRegistered := True
    nonClaimBoundary := True }

/-- The default prioritized profile records its slot. -/
theorem prioritized_profile_records_slot (s : SourceEvidenceSlotKind) :
    (prioritizedProfileOfEvidenceSlot s).slot = s := by
  rfl

/-- The default prioritized profile records the R1968D anchor kind. -/
theorem prioritized_profile_records_anchor_kind (s : SourceEvidenceSlotKind) :
    (prioritizedProfileOfEvidenceSlot s).anchorKind = anchorKindOfEvidenceSlot s := by
  rfl

/-- The default prioritized profile records the priority assigned to its slot. -/
theorem prioritized_profile_records_priority (s : SourceEvidenceSlotKind) :
    (prioritizedProfileOfEvidenceSlot s).priority = priorityOfEvidenceSlot s := by
  rfl

/-- The default prioritized profile records dependency severity. -/
theorem prioritized_profile_records_severity (s : SourceEvidenceSlotKind) :
    (prioritizedProfileOfEvidenceSlot s).severity = severityOfEvidenceSlot s := by
  rfl

/-- The default prioritized profile preserves the non-claim boundary. -/
theorem prioritized_profile_non_claim_boundary (s : SourceEvidenceSlotKind) :
    (prioritizedProfileOfEvidenceSlot s).nonClaimBoundary := by
  trivial

/-- New analytic-formalization anchors are immediate-core priorities. -/
theorem new_analytic_anchor_is_immediate_core :
    priorityOfAnchorKind EvidenceAnchorKind.newAnalyticFormalizationAnchor =
      FormalizationPriority.immediateCore := by
  rfl

/-- External classical theorem anchors are high-priority integration tasks. -/
theorem external_classical_anchor_is_high_priority :
    priorityOfAnchorKind EvidenceAnchorKind.externalClassicalTheoremAnchor =
      FormalizationPriority.high := by
  rfl

/-- Audit anchors are ledger-only priorities. -/
theorem audit_anchor_is_ledger_only_priority :
    priorityOfAnchorKind EvidenceAnchorKind.auditOrLedgerAnchor =
      FormalizationPriority.ledgerOnly := by
  rfl

/-- Prime-packet estimate evidence is a blocking core analytic task. -/
theorem prime_packet_estimate_priority_is_immediate_core :
    priorityOfEvidenceSlot SourceEvidenceSlotKind.primePacketEstimateEvidence =
      FormalizationPriority.immediateCore := by
  rfl

/-- Explicit-formula identity evidence is a high-priority external integration task. -/
theorem explicit_formula_identity_priority_is_high :
    priorityOfEvidenceSlot SourceEvidenceSlotKind.explicitFormulaIdentityEvidence =
      FormalizationPriority.high := by
  rfl

end R1969DLeanFormalizationPriority
