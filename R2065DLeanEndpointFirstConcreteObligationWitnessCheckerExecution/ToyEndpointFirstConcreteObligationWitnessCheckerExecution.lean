import R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.EndpointFirstConcreteObligationWitnessCheckerExecutionBridge
import R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.ToyEndpointFirstConcreteObligationMinimalWitnessProofTermSupply

namespace R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution

open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
open R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
open R1962DLeanAnalyticRealization

private def toyExecutedWitnessCheckerPayload {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationExecutedWitnessCheckerPayload
      (R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply h) :=
  { checkerPayloadName := "toy-witness-checker-execution-payload"
    endpointEstimateInput := ()
    endpointEstimateInputProof := trivial
    explicitFormulaInput := ()
    explicitFormulaInputProof := trivial
    transferInput := ()
    transferInputProof := trivial
    localDischargeCertificate := ()
    localDischargeCertificateProof := trivial
    checkerKernelExecutionProof := trivial
    actualLiTarget := h }

/-- Toy constructor for R2065D witness checker execution. -/
def toy_endpoint_first_concrete_obligation_witness_checker_execution
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution
      (R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply h) :=
  { checkerExecutionStageCount := 5
    inheritedMinimalWitnessSupply := Unit
    checkerExecutionStage := EndpointFirstConcreteObligationWitnessCheckerExecutionStage.executeCheckerKernel
    executedCheckerPayload := toyExecutedWitnessCheckerPayload h
    suppliedEndpointEstimateInput := ()
    suppliedEndpointEstimateInputProof := trivial
    suppliedExplicitFormulaInput := ()
    suppliedExplicitFormulaInputProof := trivial
    suppliedTransferInput := ()
    suppliedTransferInputProof := trivial
    suppliedLocalDischargeCertificate := ()
    suppliedLocalDischargeCertificateProof := trivial
    checkerKernelExecutionProof := trivial
    attemptWitnessTermObligationDischarged := trivial
    attemptEndpointEstimateObligationDischarged := trivial
    attemptExplicitFormulaObligationDischarged := trivial
    attemptTransferObligationDischarged := trivial
    attemptLocalDischargeCertificateObligationDischarged := trivial
    attemptCheckerKernelObligationDischarged := trivial
    derivedLocalDischargeAttemptStatement := trivial
    checkerKernelRunsHere := true
    checkerKernelRunsHere_eq_true := rfl
    witnessProofTermSuppliedHere := true
    witnessProofTermSuppliedHere_eq_true := rfl
    localDischargeCompletedHere := false
    localDischargeCompletedHere_eq_false := rfl
    localDischargeCertificateExportedHere := false
    localDischargeCertificateExportedHere_eq_false := rfl
    provesEndpointEstimateHere := true
    provesExplicitFormulaHere := true
    provesTransferHere := true
    provesRHHere := false
    provesRHHere_eq_false := rfl
    claimsFullRHFormalization := false
    claimsFullRHFormalization_eq_false := rfl
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_witness_checker_execution_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_witness_checker_execution_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_witness_checker_execution h)

/-- Toy checker execution proof for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_witness_checker_execution_runs
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_witness_checker_execution_runs
    (toy_endpoint_first_concrete_obligation_witness_checker_execution h)

/-- Toy derivation of the R2063D attempt statement from the executed checker payload. -/
theorem toy_endpoint_first_concrete_obligation_witness_checker_execution_derives_attempt_statement
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_witness_checker_execution_derives_attempt_statement
    (toy_endpoint_first_concrete_obligation_witness_checker_execution h)

end R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
