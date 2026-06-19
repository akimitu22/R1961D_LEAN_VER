import R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure.EndpointFirstConcreteObligationLocalDischargeClosure

namespace R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
open R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
open R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
open R1962DLeanAnalyticRealization

/-- Dependency audit for R2066D local-discharge closure. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureDependencyAudit
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
    {AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS}
    {AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT}
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) where
  auditItemCount : Nat
  auditsCheckerExecutionInherited : Prop
  auditsAttemptStatementInherited : Prop
  auditsKernelConclusionClosed : Prop
  auditsFirstConcreteLocalDischargeFlag : Prop
  auditsCertificateNotExportedYet : Prop
  auditsEndpointTheoremNotClaimedHere : Prop
  auditsNoRHClaimHere : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2066D audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_dependency_audit_to_actual_li_target
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
    {AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS}
    {AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT}
    {AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU}
    (audit : EndpointFirstConcreteObligationLocalDischargeClosureDependencyAudit AV) : A.actualLiTarget :=
  audit.actualLiTarget

end R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
