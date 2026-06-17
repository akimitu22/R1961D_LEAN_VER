import R1970DLeanFirstFormalizationTarget.MinimalTargetKinds
import R1969DLeanFormalizationPriority.PriorityBridge

namespace R1970DLeanFirstFormalizationTarget

open R1969DLeanFormalizationPriority
open R1968DLeanAnchorClassification
open R1967DLeanSourceEvidence
open R1962DLeanAnalyticRealization

/--
R1970D minimal-first-target plan.  It chooses the first small analytic target to
formalize and records that this choice sits on top of the R1969D priority plan.
This is still an ordering/selection layer, not a proof of the analytic target.
-/
structure MinimalFirstFormalizationPlan (A : AnalyticRealizationObligations) where
  priorityPlan : FormalizationPriorityPlan A
  selectedTarget : FirstFormalizationTargetKind
  selectedProfile : FirstFormalizationTargetProfile
  selectedProfileMatchesTarget : selectedProfile.targetKind = selectedTarget
  selectedTargetMatchesRecommendation : selectedTarget = recommendedFirstFormalizationTarget
  evidenceSlotRegistered : Prop
  anchorPriorityInherited : Prop
  priorityPlanPreserved : Prop
  nonClaimBoundary : Prop

/-- Forget the R1970D first-target choice and retain the R1969D priority plan. -/
def minimalFirstTargetPlanToPriorityPlan
    {A : AnalyticRealizationObligations}
    (P : MinimalFirstFormalizationPlan A) :
    FormalizationPriorityPlan A :=
  P.priorityPlan

/-- The first-target plan still yields the R1968D anchored checklist. -/
def minimal_first_target_plan_to_anchored_checklist
    {A : AnalyticRealizationObligations}
    (P : MinimalFirstFormalizationPlan A) :
    R1968DLeanAnchorClassification.AnchoredSourceEvidenceChecklist A :=
  priorityPlanToAnchoredChecklist P.priorityPlan

/-- The first-target plan still yields the R1967D source-evidence checklist. -/
def minimal_first_target_plan_to_source_evidence_checklist
    {A : AnalyticRealizationObligations}
    (P : MinimalFirstFormalizationPlan A) :
    SourceEvidenceChecklist A :=
  priorityPlanToSourceEvidenceChecklist P.priorityPlan

/-- The first-target plan still yields realization interfaces. -/
def minimal_first_target_plan_to_realization_interfaces
    {A : AnalyticRealizationObligations}
    (P : MinimalFirstFormalizationPlan A) :
    R1965DLeanRealizationInterfaces.ActualAnalyticRealizationInterfaces A :=
  priority_plan_to_realization_interfaces P.priorityPlan

/-- The first-target plan still yields the R1963D pre-target slot package. -/
theorem minimal_first_target_plan_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (P : MinimalFirstFormalizationPlan A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A := by
  exact priority_plan_to_pre_target_slots P.priorityPlan

/--
Main R1970D bridge: selecting a minimal first target preserves the actual-Li-target
bridge inherited from the R1969D priority plan.
-/
theorem minimal_first_target_plan_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (P : MinimalFirstFormalizationPlan A) :
    A.actualLiTarget := by
  exact priority_plan_to_actual_li_target P.priorityPlan

/-- R1970D non-claim certificate. -/
structure FirstFormalizationTargetCertificate where
  selectsMinimalFirstTarget : Bool
  recordsAbelBoundaryAsFirstTarget : Bool
  preservesPriorityPlanBridge : Bool
  preservesActualLiTargetBridge : Bool
  provesAbelBoundaryIdentityHere : Bool
  provesConcreteLiKernelHere : Bool
  provesConcreteExplicitFormulaHere : Bool
  provesConcretePacketEstimatesHere : Bool
  claimsFullAnalyticFormalization : Bool
  claimsFullRHFormalization : Bool

def r1970FirstFormalizationTargetCertificate : FirstFormalizationTargetCertificate :=
  { selectsMinimalFirstTarget := true
    recordsAbelBoundaryAsFirstTarget := true
    preservesPriorityPlanBridge := true
    preservesActualLiTargetBridge := true
    provesAbelBoundaryIdentityHere := false
    provesConcreteLiKernelHere := false
    provesConcreteExplicitFormulaHere := false
    provesConcretePacketEstimatesHere := false
    claimsFullAnalyticFormalization := false
    claimsFullRHFormalization := false }

/-- R1970D is a first-target selection layer, not a proof of the analytic target. -/
theorem r1970_ninth_step_is_first_target_selection_not_full_analytic_proof :
    r1970FirstFormalizationTargetCertificate.selectsMinimalFirstTarget = true ∧
    r1970FirstFormalizationTargetCertificate.recordsAbelBoundaryAsFirstTarget = true ∧
    r1970FirstFormalizationTargetCertificate.preservesPriorityPlanBridge = true ∧
    r1970FirstFormalizationTargetCertificate.preservesActualLiTargetBridge = true ∧
    r1970FirstFormalizationTargetCertificate.provesAbelBoundaryIdentityHere = false ∧
    r1970FirstFormalizationTargetCertificate.provesConcreteLiKernelHere = false ∧
    r1970FirstFormalizationTargetCertificate.provesConcreteExplicitFormulaHere = false ∧
    r1970FirstFormalizationTargetCertificate.provesConcretePacketEstimatesHere = false ∧
    r1970FirstFormalizationTargetCertificate.claimsFullAnalyticFormalization = false ∧
    r1970FirstFormalizationTargetCertificate.claimsFullRHFormalization = false := by
  simp [r1970FirstFormalizationTargetCertificate]

end R1970DLeanFirstFormalizationTarget
