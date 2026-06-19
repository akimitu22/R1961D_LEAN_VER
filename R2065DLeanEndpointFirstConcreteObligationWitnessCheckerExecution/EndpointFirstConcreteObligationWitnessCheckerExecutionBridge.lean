import R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.EndpointFirstConcreteObligationWitnessCheckerExecutionDependencyAudit

namespace R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution

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
open R1962DLeanAnalyticRealization

/-- Bridge record for exporting the R2065D checker execution state. -/
structure EndpointFirstConcreteObligationWitnessCheckerExecutionBridge
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
    (AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT) where
  bridgeItemCount : Nat
  exportsCheckerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate
  exportsDerivedAttemptStatement : AS.localDischargeAttemptStatement
  exportsCheckerKernelRunsHere : Bool
  exportsCheckerKernelRunsHere_eq_true : exportsCheckerKernelRunsHere = true
  exportsLocalDischargeCompletedHere : Bool
  exportsLocalDischargeCompletedHere_eq_false : exportsLocalDischargeCompletedHere = false
  exportsLocalDischargeCertificateExportedHere : Bool
  exportsLocalDischargeCertificateExportedHere_eq_false : exportsLocalDischargeCertificateExportedHere = false
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert the R2065D checker execution layer to an audit object. -/
def endpoint_first_concrete_obligation_witness_checker_execution_to_dependency_audit
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
    (AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT) :
    EndpointFirstConcreteObligationWitnessCheckerExecutionDependencyAudit AU :=
  { auditItemCount := 11
    auditsInheritedWitnessTerm := True
    auditsEndpointEstimateInputProof := True
    auditsExplicitFormulaInputProof := True
    auditsTransferInputProof := True
    auditsLocalDischargeCertificateProof := True
    auditsCheckerKernelExecutionProof := True
    auditsAttemptStatementDerivation := True
    auditsCheckerRunsHere := True
    auditsNoExportedLocalDischargeClaimHere := True
    auditsNoRHClaimHere := True
    actualLiTarget := AU.actualLiTarget }

/-- Build the R2065D checker execution bridge. -/
def endpoint_first_concrete_obligation_witness_checker_execution_to_bridge
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
    (AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT) :
    EndpointFirstConcreteObligationWitnessCheckerExecutionBridge AU :=
  { bridgeItemCount := 10
    exportsCheckerKernelExecutionProof := AU.checkerKernelExecutionProof
    exportsDerivedAttemptStatement := AU.derivedLocalDischargeAttemptStatement
    exportsCheckerKernelRunsHere := AU.checkerKernelRunsHere
    exportsCheckerKernelRunsHere_eq_true := AU.checkerKernelRunsHere_eq_true
    exportsLocalDischargeCompletedHere := AU.localDischargeCompletedHere
    exportsLocalDischargeCompletedHere_eq_false := AU.localDischargeCompletedHere_eq_false
    exportsLocalDischargeCertificateExportedHere := AU.localDischargeCertificateExportedHere
    exportsLocalDischargeCertificateExportedHere_eq_false := AU.localDischargeCertificateExportedHere_eq_false
    bridgeDoesNotClaimRH := True
    actualLiTarget := AU.actualLiTarget }

/-- The R2065D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_witness_checker_execution_bridge_to_actual_li_target
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
    (AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_witness_checker_execution_to_bridge AU).actualLiTarget

end R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
