import R2023DLeanEndpointFirstProofKernelExecutionBoundary.EndpointFirstProofKernelExecutionDependencyAudit

namespace R2023DLeanEndpointFirstProofKernelExecutionBoundary

open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2023D execution boundary to its dependency audit. -/
def endpoint_first_proof_kernel_execution_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    (B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S) :
    EndpointFirstProofKernelExecutionDependencyAudit B :=
  { auditItemCount := B.executionBoundaryStageCount
    attachedToExecutionBoundary := B.recordsOnlyProofKernelExecutionBoundary
    recordsNoEndpointProofKernelExecution := True
    recordsNoConcreteEndpointLemmaDischarge := True
    recordsNoEndpointEstimateProof := True
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := B.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_proof_kernel_execution_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    (B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S) : A.actualLiTarget :=
  (endpoint_first_proof_kernel_execution_boundary_to_dependency_audit B).actualLiTarget

end R2023DLeanEndpointFirstProofKernelExecutionBoundary
