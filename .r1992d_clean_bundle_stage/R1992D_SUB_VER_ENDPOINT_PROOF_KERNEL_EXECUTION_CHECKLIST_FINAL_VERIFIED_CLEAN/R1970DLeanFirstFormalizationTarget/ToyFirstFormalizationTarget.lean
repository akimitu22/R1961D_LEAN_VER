import R1970DLeanFirstFormalizationTarget.FirstTargetBridge
import R1969DLeanFormalizationPriority.ToyFormalizationPriority

namespace R1970DLeanFirstFormalizationTarget

open R1969DLeanFormalizationPriority
open R1962DLeanAnalyticRealization

/-- Toy R1970D plan: select the recommended Abel-boundary first target. -/
def toyMinimalFirstFormalizationPlan :
    MinimalFirstFormalizationPlan toyAnalyticRealizationObligations :=
  { priorityPlan := toyFormalizationPriorityPlan
    selectedTarget := recommendedFirstFormalizationTarget
    selectedProfile := profileOfFirstTargetKind recommendedFirstFormalizationTarget
    selectedProfileMatchesTarget := by
      rfl
    selectedTargetMatchesRecommendation := by
      rfl
    evidenceSlotRegistered := True
    anchorPriorityInherited := True
    priorityPlanPreserved := True
    nonClaimBoundary := True }

/-- Toy first-target plan forgets to the R1969D priority plan. -/
def toy_minimal_first_target_to_priority_plan_runs :
    FormalizationPriorityPlan toyAnalyticRealizationObligations :=
  minimalFirstTargetPlanToPriorityPlan toyMinimalFirstFormalizationPlan

/-- Toy first-target plan yields the R1968D anchored checklist. -/
def toy_minimal_first_target_to_anchored_checklist_runs :
    R1968DLeanAnchorClassification.AnchoredSourceEvidenceChecklist
      toyAnalyticRealizationObligations :=
  minimal_first_target_plan_to_anchored_checklist toyMinimalFirstFormalizationPlan

/-- Toy first-target plan yields the R1967D source-evidence checklist. -/
def toy_minimal_first_target_to_source_evidence_checklist_runs :
    R1967DLeanSourceEvidence.SourceEvidenceChecklist toyAnalyticRealizationObligations :=
  minimal_first_target_plan_to_source_evidence_checklist toyMinimalFirstFormalizationPlan

/-- Toy first-target plan yields realization interfaces. -/
def toy_minimal_first_target_to_realization_interfaces_runs :
    R1965DLeanRealizationInterfaces.ActualAnalyticRealizationInterfaces
      toyAnalyticRealizationObligations :=
  minimal_first_target_plan_to_realization_interfaces toyMinimalFirstFormalizationPlan

/-- Toy first-target plan yields pre-target slots. -/
theorem toy_minimal_first_target_to_pre_target_slots_runs :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots
      toyAnalyticRealizationObligations := by
  exact minimal_first_target_plan_to_pre_target_slots toyMinimalFirstFormalizationPlan

/-- Toy first-target plan closes the toy actual Li target through the inherited bridge. -/
theorem toy_minimal_first_target_to_actual_li_target_runs :
    toyAnalyticRealizationObligations.actualLiTarget := by
  exact minimal_first_target_plan_to_actual_li_target toyMinimalFirstFormalizationPlan

/-- Toy check: the selected first target is the recommended Abel-boundary target. -/
theorem toy_selected_first_target_is_recommended :
    toyMinimalFirstFormalizationPlan.selectedTarget = recommendedFirstFormalizationTarget := by
  rfl

end R1970DLeanFirstFormalizationTarget
