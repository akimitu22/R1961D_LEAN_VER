import R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary.EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary

namespace R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary


open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R1962DLeanAnalyticRealization


/-- Dependency audit for the R2060D slot-population boundary. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundaryDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    (AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN)
    (AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO) where
  auditItemCount : Nat
  attachedToClosureCertificateSlots : Prop
  auditsEndpointEstimatePopulationCandidate : Prop
  auditsExplicitFormulaPopulationCandidate : Prop
  auditsTransferAssemblyPopulationCandidate : Prop
  auditsFiniteAbelReductionPopulationCandidate : Prop
  auditsProofKernelConnectionPopulationCandidate : Prop
  auditsEveryPopulationCandidateRegistered : Prop
  auditsCandidateSlotInterfaceMatching : Prop
  auditsNoPopulationProofTermHere : Prop
  auditsNoPopulationCandidateCheckedHere : Prop
  auditsFutureWitnessInterfacePermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2060D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_slot_population_boundary_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    (AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN)
    (AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO)
    (audit : EndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundaryDependencyAudit AO AP) : A.actualLiTarget :=
  audit.actualLiTarget

end R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
