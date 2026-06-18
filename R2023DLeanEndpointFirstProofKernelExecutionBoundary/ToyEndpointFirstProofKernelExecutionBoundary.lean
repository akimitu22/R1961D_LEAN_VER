import R2023DLeanEndpointFirstProofKernelExecutionBoundary.EndpointFirstProofKernelExecutionBoundaryBridge

namespace R2023DLeanEndpointFirstProofKernelExecutionBoundary

open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Toy constructor for the R2023D execution-boundary layer. -/
def toy_endpoint_first_proof_kernel_execution_boundary
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstProofKernelExecutionBoundary
      (toy_endpoint_first_proof_kernel_invocation_certificate_slots h) :=
  { executionBoundaryStageCount := 6
    executionBoundaryItem :=
      { kind := EndpointFirstProofKernelExecutionBoundaryKind.nonClaimExecutionBoundaryCarrier
        itemIndex := 0
        invocationCertificateCarrier := Unit
        executionBoundaryCarrier := Unit
        kernelInputReadinessCarrier := Unit
        kernelRunNotYetExecutedCarrier := Unit
        laterDischargeBoundaryCarrier := Unit
        attachedToInvocationCertificateSlots := True
        recordsExecutionBoundaryOnly := True
        invokesProofKernelHere := false
        executesEndpointProofKernelHere := false
        dischargesConcreteEndpointLemmaHere := false
        provesEndpointEstimateHere := false
        provesExplicitFormulaHere := false
        provesRHHere := false
        actualLiTarget := h }
    inheritedInvocationCertificateSlots := Unit
    proofKernelExecutionBoundaryCarrier := Unit
    recordsOnlyProofKernelExecutionBoundary := True
    invokesProofKernelHere := false
    executesEndpointProofKernelHere := false
    dischargesConcreteEndpointLemmaHere := false
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_proof_kernel_execution_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_proof_kernel_execution_boundary_to_actual_li_target
    (toy_endpoint_first_proof_kernel_execution_boundary h)

end R2023DLeanEndpointFirstProofKernelExecutionBoundary
