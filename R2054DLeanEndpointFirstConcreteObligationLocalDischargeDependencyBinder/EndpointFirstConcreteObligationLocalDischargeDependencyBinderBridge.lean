import R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder.EndpointFirstConcreteObligationLocalDischargeDependencyBinderDependencyAudit

namespace R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder

open R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry
open R1962DLeanAnalyticRealization

/-- Bridge from the R2054D dependency binder to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_dependency_binder_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    (AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI) :
    EndpointFirstConcreteObligationLocalDischargeDependencyBinderDependencyAudit AJ :=
  { auditItemCount := AJ.binderStageCount
    attachedToLocalCandidateRegistry := AJ.allBindingsRemainOpen
    auditsEndpointEstimateBinding := AJ.bindsEndpointEstimateCandidate
    auditsExplicitFormulaBinding := AJ.bindsExplicitFormulaCandidate
    auditsTransferAssemblyBinding := AJ.bindsTransferAssemblyCandidate
    auditsFiniteAbelReductionBinding := AJ.bindsFiniteAbelReductionCandidate
    auditsProofKernelConnectionBinding := AJ.bindsProofKernelConnectionCandidate
    auditsAllBindingsRemainOpen := AJ.allBindingsRemainOpen
    auditsNoDischargeProofTerm := AJ.suppliesNoDischargeProofTerm
    auditsFutureProofSkeletonPermission := AJ.permitsFutureProofSkeletonBoundary
    actualLiTarget := AJ.actualLiTarget }

/-- The R2054D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_dependency_binder_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    (AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_dependency_binder_to_dependency_audit AJ).actualLiTarget

end R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
