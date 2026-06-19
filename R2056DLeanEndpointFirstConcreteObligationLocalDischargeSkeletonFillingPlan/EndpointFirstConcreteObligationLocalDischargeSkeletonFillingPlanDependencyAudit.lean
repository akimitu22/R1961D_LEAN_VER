import R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan.EndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan

namespace R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2056D local discharge skeleton filling plan. -/
structure EndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlanDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    (AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK) where
  auditItemCount : Nat
  attachedToProofSkeletonBoundary : Prop
  auditsEndpointEstimateFillingPlan : Prop
  auditsExplicitFormulaFillingPlan : Prop
  auditsTransferAssemblyFillingPlan : Prop
  auditsFiniteAbelReductionFillingPlan : Prop
  auditsProofKernelConnectionFillingPlan : Prop
  auditsAllFillingPlansRemainOpen : Prop
  auditsNoConcreteProofTerm : Prop
  auditsSkeletonBoundaryOpenStatus : Prop
  auditsFutureClosureObligationMapPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2056D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    (AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK)
    (audit : EndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlanDependencyAudit AL) : A.actualLiTarget :=
  audit.actualLiTarget

end R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
