import R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.EndpointFirstConcreteObligationLocalDischargeAttempt

namespace R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R1962DLeanAnalyticRealization

/-- Dependency audit for the R2063D first local-discharge attempt. -/
structure EndpointFirstConcreteObligationLocalDischargeAttemptDependencyAudit
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR) where
  auditItemCount : Nat
  attachedToWitnessKernel : Prop
  auditsAttemptStatus : Prop
  auditsTypedWitnessTermMatch : Prop
  auditsEndpointEstimateInputMatch : Prop
  auditsExplicitFormulaInputMatch : Prop
  auditsTransferInputMatch : Prop
  auditsLocalDischargeCertificateMatch : Prop
  auditsConditionalDischargeRoute : Prop
  auditsMissingWitnessProofTerm : Prop
  auditsMissingEndpointEstimate : Prop
  auditsMissingExplicitFormula : Prop
  auditsMissingTransferAssembly : Prop
  auditsMissingLocalDischargeCertificate : Prop
  auditsMissingCheckerKernelExecution : Prop
  auditsNoUnconditionalDischargeClaim : Prop
  auditsNoRHClaimHere : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2063D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_attempt_dependency_audit_to_actual_li_target
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
    {AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR}
    (audit : EndpointFirstConcreteObligationLocalDischargeAttemptDependencyAudit AS) : A.actualLiTarget :=
  audit.actualLiTarget

end R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
