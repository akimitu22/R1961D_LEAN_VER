import R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots.EndpointFirstProofKernelInvocationCertificateBridge

namespace R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots

open R1962DLeanAnalyticRealization

/-- Toy constructor used only to exercise the R2022D interface shape. -/
def toy_endpoint_first_proof_kernel_invocation_certificate_slots
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A :=
  { invocationCertificateStageCount := 6
    invocationCertificateItem :=
      { kind := EndpointFirstProofKernelInvocationCertificateKind.nonClaimInvocationCertificateCarrier
        itemIndex := 0
        invocationBoundaryCarrier := Unit
        invocationCertificateCarrier := Unit
        invocationReadinessWitnessCarrier := Unit
        invocationNonExecutionBoundaryCarrier := Unit
        laterKernelExecutionBoundaryCarrier := Unit
        attachedToProofKernelInvocationBoundary := True
        recordsInvocationCertificateOnly := True
        invokesProofKernelHere := false
        executesEndpointProofKernelHere := false
        dischargesConcreteEndpointLemmaHere := false
        provesEndpointEstimateHere := false
        provesExplicitFormulaHere := false
        provesRHHere := false
        actualLiTarget := h }
    inheritedProofKernelInvocationBoundary := Unit
    invocationCertificateSlotsCarrier := Unit
    recordsOnlyInvocationCertificateSlots := True
    invokesProofKernelHere := false
    executesEndpointProofKernelHere := false
    dischargesConcreteEndpointLemmaHere := false
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_proof_kernel_invocation_certificate_slots_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_proof_kernel_invocation_certificate_slots_to_actual_li_target
    (toy_endpoint_first_proof_kernel_invocation_certificate_slots h)

end R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
