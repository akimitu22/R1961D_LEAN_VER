import R2027DLeanEndpointFirstEstimateHandoffBoundary.EndpointFirstEstimateHandoffDependencyAudit

namespace R2027DLeanEndpointFirstEstimateHandoffBoundary

open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2027D estimate-handoff boundary to its dependency audit. -/
def endpoint_first_estimate_handoff_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    (F : MainAnchoredEndpointFirstEstimateHandoffBoundary E) :
    EndpointFirstEstimateHandoffDependencyAudit F :=
  { auditItemCount := F.estimateHandoffStageCount
    attachedToEndpointEstimateHandoffBoundary := F.recordsOnlyEndpointEstimateHandoffBoundary
    recordsNoEndpointEstimateProof := True
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := F.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_estimate_handoff_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    (F : MainAnchoredEndpointFirstEstimateHandoffBoundary E) : A.actualLiTarget :=
  (endpoint_first_estimate_handoff_boundary_to_dependency_audit F).actualLiTarget

end R2027DLeanEndpointFirstEstimateHandoffBoundary
