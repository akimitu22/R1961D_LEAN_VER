import R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.EndpointFirstConcreteObligationLocalDischargeAttemptBridge
import R2062DLeanEndpointFirstConcreteObligationWitnessKernel.ToyEndpointFirstConcreteObligationWitnessKernel

namespace R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt

open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R1962DLeanAnalyticRealization

private def toyUnresolvedObligation {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget)
    (name : String)
    (obstruction : EndpointFirstConcreteObligationLocalDischargeObstruction) :
    EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A :=
  { unresolvedObligationName := name
    obstruction := obstruction
    unresolvedObligationStatement := True
    requiredObjectType := Unit
    actualLiTarget := h }

/-- Toy constructor for R2063D local-discharge attempt. -/
def toy_endpoint_first_concrete_obligation_local_discharge_attempt
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt
      (R2062DLeanEndpointFirstConcreteObligationWitnessKernel.toy_endpoint_first_concrete_obligation_witness_kernel h) :=
  { attemptStageCount := 7
    inheritedWitnessKernel := Unit
    attemptStatus := EndpointFirstConcreteObligationLocalDischargeAttemptStatus.blockedByExposedObligations
    attemptedWitnessTermType := Unit
    attemptedEndpointEstimateInputType := Unit
    attemptedExplicitFormulaInputType := Unit
    attemptedTransferInputType := Unit
    attemptedLocalDischargeCertificateType := Unit
    attemptedWitnessTermMatchesRequired := True
    attemptedEndpointEstimateInputMatchesRequired := True
    attemptedExplicitFormulaInputMatchesRequired := True
    attemptedTransferInputMatchesRequired := True
    attemptedLocalDischargeCertificateMatchesRequired := True
    witnessTermObligationDischarged := True
    endpointEstimateObligationDischarged := True
    explicitFormulaObligationDischarged := True
    transferObligationDischarged := True
    localDischargeCertificateObligationDischarged := True
    checkerKernelObligationDischarged := True
    localDischargeAttemptStatement := True
    localDischargeAttemptDerivesFromSuppliedObligations := fun _ _ _ _ _ _ => trivial
    missingWitnessProofTermObligation := toyUnresolvedObligation h "missing-witness-proof-term" EndpointFirstConcreteObligationLocalDischargeObstruction.missingWitnessProofTerm
    missingEndpointEstimateObligation := toyUnresolvedObligation h "missing-endpoint-estimate" EndpointFirstConcreteObligationLocalDischargeObstruction.missingEndpointEstimate
    missingExplicitFormulaObligation := toyUnresolvedObligation h "missing-explicit-formula" EndpointFirstConcreteObligationLocalDischargeObstruction.missingExplicitFormula
    missingTransferObligation := toyUnresolvedObligation h "missing-transfer-assembly" EndpointFirstConcreteObligationLocalDischargeObstruction.missingTransferAssembly
    missingLocalDischargeCertificateObligation := toyUnresolvedObligation h "missing-local-discharge-certificate" EndpointFirstConcreteObligationLocalDischargeObstruction.missingLocalDischargeCertificate
    missingCheckerKernelExecutionObligation := toyUnresolvedObligation h "missing-checker-kernel-execution" EndpointFirstConcreteObligationLocalDischargeObstruction.checkerKernelNotExecuted
    unresolvedObligationCount := 6
    exposesMissingWitnessProofTerm := True
    exposesMissingEndpointEstimate := True
    exposesMissingExplicitFormula := True
    exposesMissingTransferAssembly := True
    exposesMissingLocalDischargeCertificate := True
    exposesMissingCheckerKernelExecution := True
    checkerKernelRunsHere := false
    localDischargeCompletedHere := false
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_attempt_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_attempt_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_attempt h)

end R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
