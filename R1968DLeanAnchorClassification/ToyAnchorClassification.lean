import R1968DLeanAnchorClassification.AnchorBridge
import R1967DLeanSourceEvidence.ToySourceEvidence

namespace R1968DLeanAnchorClassification

open R1967DLeanSourceEvidence
open R1962DLeanAnalyticRealization

/-- Toy anchored source-evidence checklist: every anchor-registry entry is `True`. -/
def toyAnchoredSourceEvidenceChecklist :
    AnchoredSourceEvidenceChecklist toyAnalyticRealizationObligations :=
  { checklist := toySourceEvidenceChecklist
    anchorKindForSlot := anchorKindOfEvidenceSlot
    anchorRegistry := fun _ => True
    anchorRegistryComplete := by
      intro _
      trivial
    registryProducesSlotWitnesses := by
      intro _
      exact toySourceEvidenceSlotWitnesses
    anchorKindsMatchDefault := by
      intro _
      rfl
    nonClaimBoundary := True }

/-- Toy anchor classification forgets to the R1967D checklist. -/
def toy_anchor_classification_to_source_evidence_checklist_runs :
    SourceEvidenceChecklist toyAnalyticRealizationObligations :=
  anchoredChecklistToSourceEvidenceChecklist toyAnchoredSourceEvidenceChecklist

/-- Toy anchor classification produces R1966D concrete source evidence. -/
def toy_anchor_classification_to_concrete_source_evidence_runs :
    R1966DLeanSourceCategories.ConcreteAnalyticSourceEvidence
      toySourceEvidenceChecklist.sourceSystem :=
  anchor_classification_to_concrete_source_evidence toyAnchoredSourceEvidenceChecklist

/-- Toy anchor classification produces R1965D realization interfaces. -/
def toy_anchor_classification_to_realization_interfaces_runs :
    R1965DLeanRealizationInterfaces.ActualAnalyticRealizationInterfaces
      toyAnalyticRealizationObligations :=
  anchor_classification_to_realization_interfaces toyAnchoredSourceEvidenceChecklist

/-- Toy anchor classification closes the toy actual Li target through the full chain. -/
theorem toy_anchor_classification_to_actual_li_target_runs :
    toyAnalyticRealizationObligations.actualLiTarget := by
  exact anchor_classification_to_actual_li_target toyAnchoredSourceEvidenceChecklist

/-- Toy anchor classification also yields the R1963D pre-target slot package. -/
theorem toy_anchor_classification_to_pre_target_slots_runs :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots
      toyAnalyticRealizationObligations := by
  exact anchor_classification_to_pre_target_slots toyAnchoredSourceEvidenceChecklist

end R1968DLeanAnchorClassification
