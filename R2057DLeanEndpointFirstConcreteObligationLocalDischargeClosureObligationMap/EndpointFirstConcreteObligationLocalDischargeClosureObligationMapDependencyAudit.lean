import R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap.EndpointFirstConcreteObligationLocalDischargeClosureObligationMap

namespace R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2057D local discharge closure obligation map. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureObligationMapDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    (AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL) where
  auditItemCount : Nat
  attachedToSkeletonFillingPlan : Prop
  auditsEndpointEstimateClosureObligation : Prop
  auditsExplicitFormulaClosureObligation : Prop
  auditsTransferAssemblyClosureObligation : Prop
  auditsFiniteAbelReductionClosureObligation : Prop
  auditsProofKernelConnectionClosureObligation : Prop
  auditsAllClosureObligationsRemainOpen : Prop
  auditsNoClosureProofTerm : Prop
  auditsFillingPlanOpenStatus : Prop
  auditsFutureClosureCertificateBoundaryPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2057D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_obligation_map_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    (AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL)
    (audit : EndpointFirstConcreteObligationLocalDischargeClosureObligationMapDependencyAudit AM) : A.actualLiTarget :=
  audit.actualLiTarget

end R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
