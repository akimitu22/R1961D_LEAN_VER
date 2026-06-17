import R1971DLeanAbelBoundarySkeleton.DefinitionSkeleton
import R1970DLeanFirstFormalizationTarget.FirstTargetBridge

namespace R1971DLeanAbelBoundarySkeleton

open R1970DLeanFirstFormalizationTarget
open R1969DLeanFormalizationPriority
open R1968DLeanAnchorClassification
open R1967DLeanSourceEvidence
open R1962DLeanAnalyticRealization

/--
R1971D Abel-boundary skeleton plan.  It refines the R1970D minimal first target
by attaching a definition skeleton, parameter list, admissibility hypotheses,
and target-statement shell.
-/
structure AbelBoundaryDefinitionSkeletonPlan (A : AnalyticRealizationObligations) where
  minimalPlan : MinimalFirstFormalizationPlan A
  parameterList : AbelBoundaryParameterList
  admissibility : AbelBoundaryAdmissibilityHypotheses parameterList
  definitionSkeleton : AbelBoundaryDefinitionSkeleton parameterList admissibility
  targetStatementShell : AbelBoundaryTargetStatementShell parameterList admissibility definitionSkeleton
  selectedTargetIsAbelBoundaryDefinition :
    minimalPlan.selectedTarget = FirstFormalizationTargetKind.abelBoundaryDefinition
  selectedTargetMatchesSkeleton : definitionSkeleton.selectedTarget = minimalPlan.selectedTarget
  parameterListRegistered : Prop
  admissibilityRegistered : Prop
  targetStatementShellRegistered : Prop
  preservesMinimalFirstTargetBridge : Prop
  nonClaimBoundary : Prop

/-- Forget the skeleton and retain the R1970D minimal first-target plan. -/
def abelBoundarySkeletonPlanToMinimalFirstTargetPlan
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    MinimalFirstFormalizationPlan A :=
  P.minimalPlan

/-- The skeleton plan still yields the R1969D priority plan. -/
def abel_boundary_skeleton_to_priority_plan
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    FormalizationPriorityPlan A :=
  minimalFirstTargetPlanToPriorityPlan P.minimalPlan

/-- The skeleton plan still yields the R1968D anchored checklist. -/
def abel_boundary_skeleton_to_anchored_checklist
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    AnchoredSourceEvidenceChecklist A :=
  minimal_first_target_plan_to_anchored_checklist P.minimalPlan

/-- The skeleton plan still yields the R1967D source-evidence checklist. -/
def abel_boundary_skeleton_to_source_evidence_checklist
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    SourceEvidenceChecklist A :=
  minimal_first_target_plan_to_source_evidence_checklist P.minimalPlan

/-- The skeleton plan still yields realization interfaces. -/
def abel_boundary_skeleton_to_realization_interfaces
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    R1965DLeanRealizationInterfaces.ActualAnalyticRealizationInterfaces A :=
  minimal_first_target_plan_to_realization_interfaces P.minimalPlan

/-- The skeleton plan still yields the R1963D pre-target slots. -/
def abel_boundary_skeleton_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A :=
  minimal_first_target_plan_to_pre_target_slots P.minimalPlan

/--
Main R1971D bridge: adding the Abel-boundary definition skeleton preserves the
actual-Li-target bridge inherited from the R1970D minimal-first-target layer.
-/
theorem abel_boundary_skeleton_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (P : AbelBoundaryDefinitionSkeletonPlan A) :
    A.actualLiTarget := by
  exact minimal_first_target_plan_to_actual_li_target P.minimalPlan

/-- R1971D non-claim certificate. -/
structure AbelBoundarySkeletonCertificate where
  recordsParameterList : Bool
  recordsAdmissibilityHypotheses : Bool
  recordsDefinitionSkeleton : Bool
  recordsTargetStatementShell : Bool
  preservesMinimalFirstTargetBridge : Bool
  preservesActualLiTargetBridge : Bool
  provesAbelBoundaryIdentityHere : Bool
  provesConcreteLimitTheoremHere : Bool
  provesFullExplicitFormulaHere : Bool
  claimsFullAnalyticFormalization : Bool
  claimsFullRHFormalization : Bool

def r1971AbelBoundarySkeletonCertificate : AbelBoundarySkeletonCertificate :=
  { recordsParameterList := true
    recordsAdmissibilityHypotheses := true
    recordsDefinitionSkeleton := true
    recordsTargetStatementShell := true
    preservesMinimalFirstTargetBridge := true
    preservesActualLiTargetBridge := true
    provesAbelBoundaryIdentityHere := false
    provesConcreteLimitTheoremHere := false
    provesFullExplicitFormulaHere := false
    claimsFullAnalyticFormalization := false
    claimsFullRHFormalization := false }

/-- R1971D is a definition-skeleton layer, not an Abel-boundary proof. -/
theorem r1971_tenth_step_is_definition_skeleton_not_abel_boundary_proof :
    r1971AbelBoundarySkeletonCertificate.recordsParameterList = true ∧
    r1971AbelBoundarySkeletonCertificate.recordsAdmissibilityHypotheses = true ∧
    r1971AbelBoundarySkeletonCertificate.recordsDefinitionSkeleton = true ∧
    r1971AbelBoundarySkeletonCertificate.recordsTargetStatementShell = true ∧
    r1971AbelBoundarySkeletonCertificate.preservesMinimalFirstTargetBridge = true ∧
    r1971AbelBoundarySkeletonCertificate.preservesActualLiTargetBridge = true ∧
    r1971AbelBoundarySkeletonCertificate.provesAbelBoundaryIdentityHere = false ∧
    r1971AbelBoundarySkeletonCertificate.provesConcreteLimitTheoremHere = false ∧
    r1971AbelBoundarySkeletonCertificate.provesFullExplicitFormulaHere = false ∧
    r1971AbelBoundarySkeletonCertificate.claimsFullAnalyticFormalization = false ∧
    r1971AbelBoundarySkeletonCertificate.claimsFullRHFormalization = false := by
  simp [r1971AbelBoundarySkeletonCertificate]

end R1971DLeanAbelBoundarySkeleton
