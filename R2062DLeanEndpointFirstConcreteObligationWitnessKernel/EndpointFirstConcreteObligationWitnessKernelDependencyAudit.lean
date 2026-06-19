import R2062DLeanEndpointFirstConcreteObligationWitnessKernel.EndpointFirstConcreteObligationWitnessKernel

namespace R2062DLeanEndpointFirstConcreteObligationWitnessKernel

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2062D typed witness kernel. -/
structure EndpointFirstConcreteObligationWitnessKernelDependencyAudit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP)
    (AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ) where
  auditItemCount : Nat
  attachedToWitnessInterface : Prop
  auditsRequiredWitnessTermType : Prop
  auditsRequiredEndpointEstimateInput : Prop
  auditsRequiredExplicitFormulaInput : Prop
  auditsRequiredTransferInput : Prop
  auditsRequiredLocalDischargeCertificate : Prop
  auditsCheckerKernelPredicate : Prop
  auditsDischargeDeferredToAttemptLayer : Prop
  auditsNoEndpointEstimateClaimHere : Prop
  auditsNoExplicitFormulaClaimHere : Prop
  auditsNoTransferClaimHere : Prop
  auditsNoLocalDischargeClaimHere : Prop
  auditsNoRHClaimHere : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2062D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_witness_kernel_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    {AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP}
    {AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ}
    (audit : EndpointFirstConcreteObligationWitnessKernelDependencyAudit AQ AR) : A.actualLiTarget :=
  audit.actualLiTarget

end R2062DLeanEndpointFirstConcreteObligationWitnessKernel
