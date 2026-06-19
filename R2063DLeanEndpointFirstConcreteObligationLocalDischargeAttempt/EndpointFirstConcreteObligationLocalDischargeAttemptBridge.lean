import R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.EndpointFirstConcreteObligationLocalDischargeAttemptDependencyAudit

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

/-- Bridge record for exporting the R2063D attempt state. -/
structure EndpointFirstConcreteObligationLocalDischargeAttemptBridge
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
  bridgeItemCount : Nat
  importsWitnessKernel : Prop
  exportsAttemptStatus : EndpointFirstConcreteObligationLocalDischargeAttemptStatus
  exportsUnresolvedObligationCount : Nat
  exportsConditionalDischargeStatement : Prop
  exportsMissingWitnessProofTerm : Prop
  exportsMissingEndpointEstimate : Prop
  exportsMissingExplicitFormula : Prop
  exportsMissingTransferAssembly : Prop
  exportsMissingLocalDischargeCertificate : Prop
  exportsMissingCheckerKernelExecution : Prop
  bridgeDoesNotClaimUnconditionalDischarge : Prop
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert the R2063D attempt to an audit object. -/
def endpoint_first_concrete_obligation_local_discharge_attempt_to_dependency_audit
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR) :
    EndpointFirstConcreteObligationLocalDischargeAttemptDependencyAudit AS :=
  { auditItemCount := 17
    attachedToWitnessKernel := True
    auditsAttemptStatus := True
    auditsTypedWitnessTermMatch := AS.attemptedWitnessTermMatchesRequired
    auditsEndpointEstimateInputMatch := AS.attemptedEndpointEstimateInputMatchesRequired
    auditsExplicitFormulaInputMatch := AS.attemptedExplicitFormulaInputMatchesRequired
    auditsTransferInputMatch := AS.attemptedTransferInputMatchesRequired
    auditsLocalDischargeCertificateMatch := AS.attemptedLocalDischargeCertificateMatchesRequired
    auditsConditionalDischargeRoute := True
    auditsMissingWitnessProofTerm := AS.exposesMissingWitnessProofTerm
    auditsMissingEndpointEstimate := AS.exposesMissingEndpointEstimate
    auditsMissingExplicitFormula := AS.exposesMissingExplicitFormula
    auditsMissingTransferAssembly := AS.exposesMissingTransferAssembly
    auditsMissingLocalDischargeCertificate := AS.exposesMissingLocalDischargeCertificate
    auditsMissingCheckerKernelExecution := AS.exposesMissingCheckerKernelExecution
    auditsNoUnconditionalDischargeClaim := True
    auditsNoRHClaimHere := True
    actualLiTarget := AS.actualLiTarget }

/-- Build the R2063D attempt bridge. -/
def endpoint_first_concrete_obligation_local_discharge_attempt_to_bridge
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR) :
    EndpointFirstConcreteObligationLocalDischargeAttemptBridge AS :=
  { bridgeItemCount := 14
    importsWitnessKernel := True
    exportsAttemptStatus := AS.attemptStatus
    exportsUnresolvedObligationCount := AS.unresolvedObligationCount
    exportsConditionalDischargeStatement := AS.localDischargeAttemptStatement
    exportsMissingWitnessProofTerm := AS.exposesMissingWitnessProofTerm
    exportsMissingEndpointEstimate := AS.exposesMissingEndpointEstimate
    exportsMissingExplicitFormula := AS.exposesMissingExplicitFormula
    exportsMissingTransferAssembly := AS.exposesMissingTransferAssembly
    exportsMissingLocalDischargeCertificate := AS.exposesMissingLocalDischargeCertificate
    exportsMissingCheckerKernelExecution := AS.exposesMissingCheckerKernelExecution
    bridgeDoesNotClaimUnconditionalDischarge := True
    bridgeDoesNotClaimRH := True
    actualLiTarget := AS.actualLiTarget }

/-- The R2063D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_local_discharge_attempt_bridge_to_actual_li_target
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_local_discharge_attempt_to_bridge AS).actualLiTarget

end R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
