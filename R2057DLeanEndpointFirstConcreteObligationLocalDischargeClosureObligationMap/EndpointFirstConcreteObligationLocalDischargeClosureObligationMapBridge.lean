import R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap.EndpointFirstConcreteObligationLocalDischargeClosureObligationMapDependencyAudit

namespace R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R1962DLeanAnalyticRealization

/-- Bridge from the R2057D closure obligation map to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_closure_obligation_map_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    (AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL) :
    EndpointFirstConcreteObligationLocalDischargeClosureObligationMapDependencyAudit AM :=
  { auditItemCount := AM.closureObligationStageCount
    attachedToSkeletonFillingPlan := AM.respectsFillingPlanOpenStatus
    auditsEndpointEstimateClosureObligation := AM.recordsEndpointEstimateClosureObligation
    auditsExplicitFormulaClosureObligation := AM.recordsExplicitFormulaClosureObligation
    auditsTransferAssemblyClosureObligation := AM.recordsTransferAssemblyClosureObligation
    auditsFiniteAbelReductionClosureObligation := AM.recordsFiniteAbelReductionClosureObligation
    auditsProofKernelConnectionClosureObligation := AM.recordsProofKernelConnectionClosureObligation
    auditsAllClosureObligationsRemainOpen := AM.allClosureObligationsRemainOpen
    auditsNoClosureProofTerm := AM.suppliesNoClosureProofTerm
    auditsFillingPlanOpenStatus := AM.respectsFillingPlanOpenStatus
    auditsFutureClosureCertificateBoundaryPermission := AM.permitsFutureClosureCertificateBoundary
    actualLiTarget := AM.actualLiTarget }

/-- The R2057D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_obligation_map_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    (AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_closure_obligation_map_to_dependency_audit AM).actualLiTarget

end R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
