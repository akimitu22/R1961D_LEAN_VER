import R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply

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

/-- Stages for R2065D checker execution. -/
inductive EndpointFirstConcreteObligationWitnessCheckerExecutionStage where
  | inheritSuppliedWitnessTerm
  | supplyCheckerInputs
  | executeCheckerKernel
  | exportCheckerResult
  | keepLocalDischargeExportForNextLayer
  deriving DecidableEq, Repr

/-- The R2065D checker execution payload.

This structure is inhabited only when the endpoint-estimate input, explicit
formula input, transfer input, local-discharge certificate, and checker-kernel
predicate have all been supplied for the witness term supplied in R2064D. -/
structure EndpointFirstConcreteObligationExecutedWitnessCheckerPayload
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
    (AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS) where
  checkerPayloadName : String
  endpointEstimateInput : AR.requiredEndpointEstimateInput
  endpointEstimateInputProof : AR.endpointEstimateInputObligation endpointEstimateInput
  explicitFormulaInput : AR.requiredExplicitFormulaInput
  explicitFormulaInputProof : AR.explicitFormulaInputObligation explicitFormulaInput
  transferInput : AR.requiredTransferInput
  transferInputProof : AR.transferInputObligation transferInput
  localDischargeCertificate : AR.requiredLocalDischargeCertificate
  localDischargeCertificateProof : AR.localDischargeCertificateObligation localDischargeCertificate
  checkerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      endpointEstimateInput
      explicitFormulaInput
      transferInput
      localDischargeCertificate
  actualLiTarget : A.actualLiTarget

/-- R2065D executes the witness checker for the supplied witness term.

It records the checker-kernel proof.  It does not yet claim that the endpoint
branch has exported the local-discharge certificate or that RH is proved. -/
structure MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution
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
    (AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS) where
  checkerExecutionStageCount : Nat
  inheritedMinimalWitnessSupply : Type
  checkerExecutionStage : EndpointFirstConcreteObligationWitnessCheckerExecutionStage
  executedCheckerPayload : EndpointFirstConcreteObligationExecutedWitnessCheckerPayload AT
  suppliedEndpointEstimateInput : AR.requiredEndpointEstimateInput
  suppliedEndpointEstimateInputProof : AR.endpointEstimateInputObligation suppliedEndpointEstimateInput
  suppliedExplicitFormulaInput : AR.requiredExplicitFormulaInput
  suppliedExplicitFormulaInputProof : AR.explicitFormulaInputObligation suppliedExplicitFormulaInput
  suppliedTransferInput : AR.requiredTransferInput
  suppliedTransferInputProof : AR.transferInputObligation suppliedTransferInput
  suppliedLocalDischargeCertificate : AR.requiredLocalDischargeCertificate
  suppliedLocalDischargeCertificateProof : AR.localDischargeCertificateObligation suppliedLocalDischargeCertificate
  checkerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      suppliedEndpointEstimateInput
      suppliedExplicitFormulaInput
      suppliedTransferInput
      suppliedLocalDischargeCertificate
  attemptWitnessTermObligationDischarged : AS.witnessTermObligationDischarged
  attemptEndpointEstimateObligationDischarged : AS.endpointEstimateObligationDischarged
  attemptExplicitFormulaObligationDischarged : AS.explicitFormulaObligationDischarged
  attemptTransferObligationDischarged : AS.transferObligationDischarged
  attemptLocalDischargeCertificateObligationDischarged : AS.localDischargeCertificateObligationDischarged
  attemptCheckerKernelObligationDischarged : AS.checkerKernelObligationDischarged
  derivedLocalDischargeAttemptStatement : AS.localDischargeAttemptStatement
  checkerKernelRunsHere : Bool
  checkerKernelRunsHere_eq_true : checkerKernelRunsHere = true
  witnessProofTermSuppliedHere : Bool
  witnessProofTermSuppliedHere_eq_true : witnessProofTermSuppliedHere = true
  localDischargeCompletedHere : Bool
  localDischargeCompletedHere_eq_false : localDischargeCompletedHere = false
  localDischargeCertificateExportedHere : Bool
  localDischargeCertificateExportedHere_eq_false : localDischargeCertificateExportedHere = false
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesTransferHere : Bool
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  actualLiTarget : A.actualLiTarget

/-- R2065D preserves the analytic target after checker execution. -/
theorem endpoint_first_concrete_obligation_witness_checker_execution_to_actual_li_target
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
  AU.actualLiTarget

/-- Extract the checker-kernel execution proof. -/
theorem endpoint_first_concrete_obligation_witness_checker_execution_runs
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
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate :=
  AU.checkerKernelExecutionProof

/-- The R2065D checker execution derives the R2063D local-discharge attempt statement. -/
theorem endpoint_first_concrete_obligation_witness_checker_execution_derives_attempt_statement
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
    AS.localDischargeAttemptStatement :=
  endpoint_first_concrete_obligation_local_discharge_attempt_if_all_required_obligations_supplied
    AS
    AU.attemptWitnessTermObligationDischarged
    AU.attemptEndpointEstimateObligationDischarged
    AU.attemptExplicitFormulaObligationDischarged
    AU.attemptTransferObligationDischarged
    AU.attemptLocalDischargeCertificateObligationDischarged
    AU.attemptCheckerKernelObligationDischarged

/-- R2065D is the checker-execution layer. -/
theorem r2065_one_hundred_fourth_step_executes_witness_checker : True :=
  trivial

/-- R2065D does not claim exported local discharge, RH, or full RH formalization. -/
theorem r2065_one_hundred_fourth_step_does_not_claim_rh_formalization : True :=
  trivial

end R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
