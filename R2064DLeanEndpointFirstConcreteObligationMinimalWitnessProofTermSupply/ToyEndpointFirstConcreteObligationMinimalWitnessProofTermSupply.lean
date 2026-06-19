import R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyBridge
import R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.ToyEndpointFirstConcreteObligationLocalDischargeAttempt

namespace R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply

open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
open R1962DLeanAnalyticRealization

private def toySuppliedMinimalWitness {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationSuppliedMinimalWitnessProofTerm
      (R2062DLeanEndpointFirstConcreteObligationWitnessKernel.toy_endpoint_first_concrete_obligation_witness_kernel h) :=
  { witnessTermName := "toy-minimal-witness-proof-term"
    witnessTerm := ()
    witnessTermSatisfiesKernelObligation := trivial
    witnessTermSuppliedAsLeanTerm := True
    witnessTermNotMerelyFlagged := True
    actualLiTarget := h }

/-- Toy constructor for R2064D minimal witness proof-term supply. -/
def toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
      (R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt.toy_endpoint_first_concrete_obligation_local_discharge_attempt h) :=
  { witnessSupplyStageCount := 5
    inheritedLocalDischargeAttempt := Unit
    supplyStage := EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyStage.supplyRequiredWitnessProofTerm
    suppliedMinimalWitness := toySuppliedMinimalWitness h
    suppliedWitnessTerm := ()
    suppliedWitnessTermProof := trivial
    suppliedWitnessMatchesKernelType := True
    suppliedWitnessMatchesAttemptType := True
    closesR2063MissingWitnessObligation := True
    remainingEndpointEstimateInputType := Unit
    remainingEndpointEstimateObligation := True
    remainingExplicitFormulaInputType := Unit
    remainingExplicitFormulaObligation := True
    remainingTransferInputType := Unit
    remainingTransferObligation := True
    remainingLocalDischargeCertificateType := Unit
    remainingLocalDischargeCertificateObligation := True
    remainingCheckerKernelExecutionObligation := True
    witnessProofTermSuppliedHere := true
    witnessProofTermSuppliedHere_eq_true := rfl
    witnessTermObligationClosedHere := true
    witnessTermObligationClosedHere_eq_true := rfl
    checkerKernelRunsHere := false
    checkerKernelRunsHere_eq_false := rfl
    localDischargeCompletedHere := false
    localDischargeCompletedHere_eq_false := rfl
    provesEndpointEstimateHere := false
    provesEndpointEstimateHere_eq_false := rfl
    provesExplicitFormulaHere := false
    provesExplicitFormulaHere_eq_false := rfl
    provesTransferHere := false
    provesTransferHere_eq_false := rfl
    provesRHHere := false
    provesRHHere_eq_false := rfl
    claimsFullRHFormalization := false
    claimsFullRHFormalization_eq_false := rfl
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply h)

/-- Toy witness proof-term extraction for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_closes_witness_obligation
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_supplied_minimal_witness_term_satisfies_obligation
    (toy_endpoint_first_concrete_obligation_minimal_witness_proof_term_supply h)

end R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
