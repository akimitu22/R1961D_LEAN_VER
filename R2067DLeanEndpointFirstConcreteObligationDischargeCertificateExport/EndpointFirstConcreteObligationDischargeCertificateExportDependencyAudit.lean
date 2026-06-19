import R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport.EndpointFirstConcreteObligationDischargeCertificateExport

namespace R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport

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
open R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
open R1962DLeanAnalyticRealization

/-- Dependency audit for R2067D certificate export. -/
structure EndpointFirstConcreteObligationDischargeCertificateExportDependencyAudit
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
    (AW : MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport AV) where
  auditItemCount : Nat
  auditsLocalDischargeClosureInherited : Prop
  auditsCertificateObjectExported : Prop
  auditsCertificateObligationProof : Prop
  auditsEndpointBranchLink : Prop
  auditsEndpointTheoremNotClaimedHere : Prop
  auditsNoRHClaimHere : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2067D audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_discharge_certificate_export_dependency_audit_to_actual_li_target
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
    {AW : MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport AV}
    (audit : EndpointFirstConcreteObligationDischargeCertificateExportDependencyAudit AW) : A.actualLiTarget :=
  audit.actualLiTarget

end R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport
