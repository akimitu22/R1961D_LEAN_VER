import R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan.EndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlanDependencyAudit

namespace R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R1962DLeanAnalyticRealization

/-- Bridge from the R2056D skeleton filling plan to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    (AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK) :
    EndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlanDependencyAudit AL :=
  { auditItemCount := AL.fillingPlanStageCount
    attachedToProofSkeletonBoundary := AL.respectsSkeletonBoundaryOpenStatus
    auditsEndpointEstimateFillingPlan := AL.recordsEndpointEstimateFillingPlan
    auditsExplicitFormulaFillingPlan := AL.recordsExplicitFormulaFillingPlan
    auditsTransferAssemblyFillingPlan := AL.recordsTransferAssemblyFillingPlan
    auditsFiniteAbelReductionFillingPlan := AL.recordsFiniteAbelReductionFillingPlan
    auditsProofKernelConnectionFillingPlan := AL.recordsProofKernelConnectionFillingPlan
    auditsAllFillingPlansRemainOpen := AL.allFillingPlansRemainOpen
    auditsNoConcreteProofTerm := AL.suppliesNoConcreteProofTerm
    auditsSkeletonBoundaryOpenStatus := AL.respectsSkeletonBoundaryOpenStatus
    auditsFutureClosureObligationMapPermission := AL.permitsFutureClosureObligationMap
    actualLiTarget := AL.actualLiTarget }

/-- The R2056D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    (AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan_to_dependency_audit AL).actualLiTarget

end R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
