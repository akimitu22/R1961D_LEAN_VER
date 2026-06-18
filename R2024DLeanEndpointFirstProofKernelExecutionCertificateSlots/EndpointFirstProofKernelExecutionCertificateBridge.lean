import R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots.EndpointFirstProofKernelExecutionCertificateDependencyAudit

namespace R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots

open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2024D execution-certificate slots to their dependency audit. -/
def endpoint_first_proof_kernel_execution_certificate_slots_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    (C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B) :
    EndpointFirstProofKernelExecutionCertificateDependencyAudit C :=
  { auditItemCount := C.executionCertificateStageCount
    attachedToExecutionCertificateSlots := C.recordsOnlyProofKernelExecutionCertificateSlots
    recordsNoEndpointProofKernelExecution := True
    recordsNoConcreteEndpointLemmaDischarge := True
    recordsNoEndpointEstimateProof := True
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := C.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_proof_kernel_execution_certificate_slots_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    (C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B) : A.actualLiTarget :=
  (endpoint_first_proof_kernel_execution_certificate_slots_to_dependency_audit C).actualLiTarget

end R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
