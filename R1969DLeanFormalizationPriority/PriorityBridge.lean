import R1969DLeanFormalizationPriority.PriorityKinds
import R1968DLeanAnchorClassification.AnchorBridge

namespace R1969DLeanFormalizationPriority

open R1968DLeanAnchorClassification
open R1967DLeanSourceEvidence
open R1962DLeanAnalyticRealization

/--
A priority plan sits on top of the R1968D anchored checklist.  It records a
review-facing order and severity for the remaining formalization work without
claiming that the analytic sources have already been proved.
-/
structure FormalizationPriorityPlan (A : AnalyticRealizationObligations) where
  anchoredChecklist : AnchoredSourceEvidenceChecklist A
  priorityForSlot : SourceEvidenceSlotKind → FormalizationPriority
  severityForSlot : SourceEvidenceSlotKind → DependencySeverity
  burdenForSlot : SourceEvidenceSlotKind → RemainingProofBurden
  priorityRegistry : SourceEvidenceSlotKind → Prop
  priorityRegistryComplete : ∀ s : SourceEvidenceSlotKind, priorityRegistry s
  priorityMatchesDefault : ∀ s : SourceEvidenceSlotKind, priorityForSlot s = priorityOfEvidenceSlot s
  severityMatchesDefault : ∀ s : SourceEvidenceSlotKind, severityForSlot s = severityOfEvidenceSlot s
  burdenMatchesDefault : ∀ s : SourceEvidenceSlotKind, burdenForSlot s = burdenOfEvidenceSlot s
  preservesAnchorClassification : Prop
  nonClaimBoundary : Prop

/-- Forget R1969D priorities and retain the R1968D anchored checklist. -/
def priorityPlanToAnchoredChecklist
    {A : AnalyticRealizationObligations}
    (P : FormalizationPriorityPlan A) :
    AnchoredSourceEvidenceChecklist A :=
  P.anchoredChecklist

/-- A priority plan still yields the R1967D source-evidence checklist. -/
def priorityPlanToSourceEvidenceChecklist
    {A : AnalyticRealizationObligations}
    (P : FormalizationPriorityPlan A) :
    SourceEvidenceChecklist A :=
  anchoredChecklistToSourceEvidenceChecklist P.anchoredChecklist

/-- A priority plan still yields realization interfaces through R1968D. -/
def priority_plan_to_realization_interfaces
    {A : AnalyticRealizationObligations}
    (P : FormalizationPriorityPlan A) :
    R1965DLeanRealizationInterfaces.ActualAnalyticRealizationInterfaces A :=
  anchor_classification_to_realization_interfaces P.anchoredChecklist

/-- A priority plan still yields the R1963D pre-target slot package. -/
theorem priority_plan_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (P : FormalizationPriorityPlan A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A := by
  exact anchor_classification_to_pre_target_slots P.anchoredChecklist

/-- Main R1969D bridge: prioritizing anchor burdens preserves the actual-Li-target bridge. -/
theorem priority_plan_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (P : FormalizationPriorityPlan A) :
    A.actualLiTarget := by
  exact anchor_classification_to_actual_li_target P.anchoredChecklist

/-- R1969D non-claim certificate. -/
structure FormalizationPriorityCertificate where
  classifiesAnchorPriorities : Bool
  recordsDependencySeverity : Bool
  recordsRemainingProofBurden : Bool
  connectsPrioritiesToAnchorClassification : Bool
  preservesActualLiTargetBridge : Bool
  provesConcreteLiKernelHere : Bool
  provesConcreteExplicitFormulaHere : Bool
  provesConcretePacketEstimatesHere : Bool
  provesLiCriterionHere : Bool
  claimsFullRHFormalization : Bool

def r1969FormalizationPriorityCertificate : FormalizationPriorityCertificate :=
  { classifiesAnchorPriorities := true
    recordsDependencySeverity := true
    recordsRemainingProofBurden := true
    connectsPrioritiesToAnchorClassification := true
    preservesActualLiTargetBridge := true
    provesConcreteLiKernelHere := false
    provesConcreteExplicitFormulaHere := false
    provesConcretePacketEstimatesHere := false
    provesLiCriterionHere := false
    claimsFullRHFormalization := false }

/-- R1969D is a prioritization layer, not a full analytic formalization. -/
theorem r1969_eighth_step_is_priority_ordering_not_full_analytic_proof :
    r1969FormalizationPriorityCertificate.classifiesAnchorPriorities = true ∧
    r1969FormalizationPriorityCertificate.recordsDependencySeverity = true ∧
    r1969FormalizationPriorityCertificate.recordsRemainingProofBurden = true ∧
    r1969FormalizationPriorityCertificate.connectsPrioritiesToAnchorClassification = true ∧
    r1969FormalizationPriorityCertificate.preservesActualLiTargetBridge = true ∧
    r1969FormalizationPriorityCertificate.provesConcreteLiKernelHere = false ∧
    r1969FormalizationPriorityCertificate.provesConcreteExplicitFormulaHere = false ∧
    r1969FormalizationPriorityCertificate.provesConcretePacketEstimatesHere = false ∧
    r1969FormalizationPriorityCertificate.provesLiCriterionHere = false ∧
    r1969FormalizationPriorityCertificate.claimsFullRHFormalization = false := by
  simp [r1969FormalizationPriorityCertificate]

end R1969DLeanFormalizationPriority
