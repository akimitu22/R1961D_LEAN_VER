import R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary.EndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundaryDependencyAudit

namespace R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R1962DLeanAnalyticRealization

/-- Bridge from the R2055D proof skeleton boundary to its dependency audit. -/
def endpoint_first_concrete_obligation_local_discharge_proof_skeleton_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    (AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ) :
    EndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundaryDependencyAudit AK :=
  { auditItemCount := AK.proofSkeletonStageCount
    attachedToLocalDischargeDependencyBinder := AK.allSkeletonSlotsRemainOpen
    auditsEndpointEstimateSkeletonSlot := AK.recordsEndpointEstimateSkeletonSlot
    auditsExplicitFormulaSkeletonSlot := AK.recordsExplicitFormulaSkeletonSlot
    auditsTransferAssemblySkeletonSlot := AK.recordsTransferAssemblySkeletonSlot
    auditsFiniteAbelReductionSkeletonSlot := AK.recordsFiniteAbelReductionSkeletonSlot
    auditsProofKernelConnectionSkeletonSlot := AK.recordsProofKernelConnectionSkeletonSlot
    auditsAllSkeletonSlotsRemainOpen := AK.allSkeletonSlotsRemainOpen
    auditsNoSkeletonProofTerm := AK.suppliesNoSkeletonProofTerm
    auditsFutureSkeletonFillingPermission := AK.permitsFutureSkeletonFillingLayer
    actualLiTarget := AK.actualLiTarget }

/-- The R2055D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_proof_skeleton_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    (AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_proof_skeleton_boundary_to_dependency_audit AK).actualLiTarget

end R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
