import R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder.EndpointFirstConcreteObligationLocalDischargeDependencyBinder

namespace R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder

open R2053DLeanEndpointFirstConcreteObligationLocalDischargeCandidateRegistry
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2054D local discharge dependency binder. -/
structure EndpointFirstConcreteObligationLocalDischargeDependencyBinderDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    (AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI) where
  auditItemCount : Nat
  attachedToLocalCandidateRegistry : Prop
  auditsEndpointEstimateBinding : Prop
  auditsExplicitFormulaBinding : Prop
  auditsTransferAssemblyBinding : Prop
  auditsFiniteAbelReductionBinding : Prop
  auditsProofKernelConnectionBinding : Prop
  auditsAllBindingsRemainOpen : Prop
  auditsNoDischargeProofTerm : Prop
  auditsFutureProofSkeletonPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2054D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_dependency_binder_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    (AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI)
    (audit : EndpointFirstConcreteObligationLocalDischargeDependencyBinderDependencyAudit AJ) : A.actualLiTarget :=
  audit.actualLiTarget

end R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
