import R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary.EndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary

namespace R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2055D local discharge proof skeleton boundary. -/
structure EndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundaryDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    (AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ) where
  auditItemCount : Nat
  attachedToLocalDischargeDependencyBinder : Prop
  auditsEndpointEstimateSkeletonSlot : Prop
  auditsExplicitFormulaSkeletonSlot : Prop
  auditsTransferAssemblySkeletonSlot : Prop
  auditsFiniteAbelReductionSkeletonSlot : Prop
  auditsProofKernelConnectionSkeletonSlot : Prop
  auditsAllSkeletonSlotsRemainOpen : Prop
  auditsNoSkeletonProofTerm : Prop
  auditsFutureSkeletonFillingPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2055D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_proof_skeleton_boundary_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    (AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ)
    (audit : EndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundaryDependencyAudit AK) : A.actualLiTarget :=
  audit.actualLiTarget

end R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
