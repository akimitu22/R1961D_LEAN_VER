import R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure.EndpointFirstConcreteObligationLocalDischargeClosureDependencyAudit

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

/-- Bridge object for R2066D local-discharge closure. -/
structure EndpointFirstConcreteObligationLocalDischargeClosureBridge
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
  bridgeItemCount : Nat
  exportsLocalDischargeConclusion : AR.localDischargeConclusion
  exportsAttemptStatement : AS.localDischargeAttemptStatement
  exportsCheckerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate
  exportsFirstConcreteObligationLocallyDischargedHere : Bool
  exportsFirstConcreteObligationLocallyDischargedHere_eq_true :
    exportsFirstConcreteObligationLocallyDischargedHere = true
  exportsCertificateExportedHere : Bool
  exportsCertificateExportedHere_eq_false : exportsCertificateExportedHere = false
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2066D closure into its audit. -/
def endpoint_first_concrete_obligation_local_discharge_closure_to_dependency_audit
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) :
    EndpointFirstConcreteObligationLocalDischargeClosureDependencyAudit AV :=
  { auditItemCount := 8
    auditsCheckerExecutionInherited := True
    auditsAttemptStatementInherited := True
    auditsKernelConclusionClosed := True
    auditsFirstConcreteLocalDischargeFlag := True
    auditsCertificateNotExportedYet := True
    auditsEndpointTheoremNotClaimedHere := True
    auditsNoRHClaimHere := True
    actualLiTarget := AV.actualLiTarget }

/-- Build the R2066D bridge. -/
def endpoint_first_concrete_obligation_local_discharge_closure_to_bridge
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) :
    EndpointFirstConcreteObligationLocalDischargeClosureBridge AV :=
  { bridgeItemCount := 8
    exportsLocalDischargeConclusion := AV.localDischargeClosureProof
    exportsAttemptStatement := AV.inheritedLocalDischargeAttemptStatement
    exportsCheckerKernelExecutionProof := AV.inheritedCheckerKernelExecutionProof
    exportsFirstConcreteObligationLocallyDischargedHere := AV.firstConcreteObligationLocallyDischargedHere
    exportsFirstConcreteObligationLocallyDischargedHere_eq_true := AV.firstConcreteObligationLocallyDischargedHere_eq_true
    exportsCertificateExportedHere := AV.localDischargeCertificateExportedHere
    exportsCertificateExportedHere_eq_false := AV.localDischargeCertificateExportedHere_eq_false
    bridgeDoesNotClaimRH := True
    actualLiTarget := AV.actualLiTarget }

/-- The R2066D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_bridge_to_actual_li_target
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_closure_to_bridge AV).actualLiTarget

end R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
