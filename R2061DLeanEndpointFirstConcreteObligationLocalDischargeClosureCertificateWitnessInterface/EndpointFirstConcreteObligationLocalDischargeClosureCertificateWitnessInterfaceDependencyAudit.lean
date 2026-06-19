import R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface.EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface

namespace R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2061D witness interface. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterfaceDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    (AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO)
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP) where
  auditItemCount : Nat
  attachedToSlotPopulationBoundary : Prop
  auditsEndpointEstimateWitnessInterface : Prop
  auditsExplicitFormulaWitnessInterface : Prop
  auditsTransferAssemblyWitnessInterface : Prop
  auditsFiniteAbelReductionWitnessInterface : Prop
  auditsProofKernelConnectionWitnessInterface : Prop
  auditsEveryWitnessInterfaceExposed : Prop
  auditsWitnessPopulationCandidateMatching : Prop
  auditsNoWitnessProofTermHere : Prop
  auditsNoWitnessCheckerRunHere : Prop
  auditsFutureCheckerKernelPermission : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2061D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    (AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO)
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP)
    (audit : EndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterfaceDependencyAudit AP AQ) : A.actualLiTarget :=
  audit.actualLiTarget

end R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
