import R2062DLeanEndpointFirstConcreteObligationWitnessKernel.EndpointFirstConcreteObligationWitnessKernelBridge
import R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface.ToyEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface

namespace R2062DLeanEndpointFirstConcreteObligationWitnessKernel

open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R1962DLeanAnalyticRealization

private def toyTypedWitnessKernelSpec {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : EndpointFirstConcreteObligationTypedWitnessKernelSpec A :=
  { kernelSpecName := "toy-first-concrete-obligation-typed-witness-kernel"
    requiredWitnessTermType := Unit
    requiredEndpointEstimateInput := Unit
    requiredExplicitFormulaInput := Unit
    requiredTransferInput := Unit
    requiredLocalDischargeCertificate := Unit
    witnessTermObligation := fun _ => True
    endpointEstimateInputObligation := fun _ => True
    explicitFormulaInputObligation := fun _ => True
    transferInputObligation := fun _ => True
    localDischargeCertificateObligation := fun _ => True
    checkerKernelObligation := fun _ _ _ _ _ => True
    localDischargeConclusion := True
    actualLiTarget := h }

/-- Toy constructor for R2062D typed witness kernel. -/
def toy_endpoint_first_concrete_obligation_witness_kernel
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationWitnessKernel
      (R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface.toy_endpoint_first_concrete_obligation_local_discharge_closure_certificate_witness_interface h) :=
  { witnessKernelStageCount := 9
    inheritedWitnessInterface := Unit
    requiredWitnessTermType := Unit
    requiredEndpointEstimateInput := Unit
    requiredExplicitFormulaInput := Unit
    requiredTransferInput := Unit
    requiredLocalDischargeCertificate := Unit
    witnessTermObligation := fun _ => True
    endpointEstimateInputObligation := fun _ => True
    explicitFormulaInputObligation := fun _ => True
    transferInputObligation := fun _ => True
    localDischargeCertificateObligation := fun _ => True
    checkerKernelObligation := fun _ _ _ _ _ => True
    localDischargeConclusion := True
    typedKernelSpec := toyTypedWitnessKernelSpec h
    recordsWitnessTermAsLeanType := True
    recordsEndpointEstimateInputAsLeanType := True
    recordsExplicitFormulaInputAsLeanType := True
    recordsTransferInputAsLeanType := True
    recordsLocalDischargeCertificateAsLeanType := True
    recordsCheckerKernelAsLeanPredicate := True
    requiresWitnessTermForDischarge := True
    requiresEndpointEstimateForDischarge := True
    requiresExplicitFormulaForDischarge := True
    requiresTransferForDischarge := True
    requiresLocalDischargeCertificateForDischarge := True
    requiresCheckerKernelForDischarge := True
    leavesDischargeToAttemptLayer := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesLocalDischargeHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_witness_kernel_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_witness_kernel_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_witness_kernel h)

end R2062DLeanEndpointFirstConcreteObligationWitnessKernel
