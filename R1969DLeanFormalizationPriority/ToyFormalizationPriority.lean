import R1969DLeanFormalizationPriority.PriorityBridge
import R1968DLeanAnchorClassification.ToyAnchorClassification

namespace R1969DLeanFormalizationPriority

open R1968DLeanAnchorClassification
open R1967DLeanSourceEvidence
open R1962DLeanAnalyticRealization

/-- Toy R1969D priority plan: every registry entry is `True`. -/
def toyFormalizationPriorityPlan :
    FormalizationPriorityPlan toyAnalyticRealizationObligations :=
  { anchoredChecklist := toyAnchoredSourceEvidenceChecklist
    priorityForSlot := priorityOfEvidenceSlot
    severityForSlot := severityOfEvidenceSlot
    burdenForSlot := burdenOfEvidenceSlot
    priorityRegistry := fun _ => True
    priorityRegistryComplete := by
      intro _
      trivial
    priorityMatchesDefault := by
      intro _
      rfl
    severityMatchesDefault := by
      intro _
      rfl
    burdenMatchesDefault := by
      intro _
      rfl
    preservesAnchorClassification := True
    nonClaimBoundary := True }

/-- Toy priority plan forgets to the R1968D anchored checklist. -/
def toy_priority_plan_to_anchored_checklist_runs :
    AnchoredSourceEvidenceChecklist toyAnalyticRealizationObligations :=
  priorityPlanToAnchoredChecklist toyFormalizationPriorityPlan

/-- Toy priority plan yields realization interfaces. -/
def toy_priority_plan_to_realization_interfaces_runs :
    R1965DLeanRealizationInterfaces.ActualAnalyticRealizationInterfaces
      toyAnalyticRealizationObligations :=
  priority_plan_to_realization_interfaces toyFormalizationPriorityPlan

/-- Toy priority plan yields pre-target slots. -/
theorem toy_priority_plan_to_pre_target_slots_runs :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots
      toyAnalyticRealizationObligations := by
  exact priority_plan_to_pre_target_slots toyFormalizationPriorityPlan

/-- Toy priority plan closes the toy actual Li target through the inherited bridge. -/
theorem toy_priority_plan_to_actual_li_target_runs :
    toyAnalyticRealizationObligations.actualLiTarget := by
  exact priority_plan_to_actual_li_target toyFormalizationPriorityPlan

/-- Toy profile for the prime-packet estimate slot is immediate-core priority. -/
theorem toy_prime_packet_estimate_is_immediate_core :
    (prioritizedProfileOfEvidenceSlot SourceEvidenceSlotKind.primePacketEstimateEvidence).priority =
      FormalizationPriority.immediateCore := by
  rfl

end R1969DLeanFormalizationPriority
