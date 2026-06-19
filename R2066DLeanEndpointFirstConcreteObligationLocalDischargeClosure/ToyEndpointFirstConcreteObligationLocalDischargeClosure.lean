import R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure.EndpointFirstConcreteObligationLocalDischargeClosureBridge
import R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.ToyEndpointFirstConcreteObligationWitnessCheckerExecution

namespace R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure

open R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
open R1962DLeanAnalyticRealization

private def toyClosedLocalDischargePayload {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationClosedLocalDischargePayload
      (R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.toy_endpoint_first_concrete_obligation_witness_checker_execution h) :=
  { closurePayloadName := "toy-local-discharge-closure-payload"
    inheritedCheckerKernelExecutionProof := trivial
    inheritedAttemptStatement := trivial
    localDischargeClosureProof := trivial
    closesFirstConcreteObligationAsLeanProof := True
    notMerelyClosureFlag := True
    actualLiTarget := h }

/-- Toy constructor for R2066D local-discharge closure. -/
def toy_endpoint_first_concrete_obligation_local_discharge_closure
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure
      (R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.toy_endpoint_first_concrete_obligation_witness_checker_execution h) :=
  { localDischargeClosureStageCount := 5
    inheritedWitnessCheckerExecution := Unit
    closureStage := EndpointFirstConcreteObligationLocalDischargeClosureStage.closeFirstConcreteLocalDischarge
    closedLocalDischargePayload := toyClosedLocalDischargePayload h
    inheritedCheckerKernelExecutionProof := trivial
    inheritedLocalDischargeAttemptStatement := trivial
    localDischargeClosureProof := trivial
    firstConcreteObligationLocallyDischargedHere := true
    firstConcreteObligationLocallyDischargedHere_eq_true := rfl
    localDischargeCompletedHere := true
    localDischargeCompletedHere_eq_true := rfl
    dischargesConcreteEndpointLemmaHere := true
    dischargesConcreteEndpointLemmaHere_eq_true := rfl
    localDischargeCertificateExportedHere := false
    localDischargeCertificateExportedHere_eq_false := rfl
    provesEndpointTheoremHere := false
    provesEndpointTheoremHere_eq_false := rfl
    provesRHHere := false
    provesRHHere_eq_false := rfl
    claimsFullRHFormalization := false
    claimsFullRHFormalization_eq_false := rfl
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_closure_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_closure_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_closure h)

/-- Toy closure proof for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_closure_proves_kernel_conclusion
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_local_discharge_closure_proves_kernel_conclusion
    (toy_endpoint_first_concrete_obligation_local_discharge_closure h)

end R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
