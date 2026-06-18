import R2031DLeanEndpointFirstRHTargetIntegrationBoundary.EndpointFirstRHTargetIntegrationDependencyAudit

namespace R2031DLeanEndpointFirstRHTargetIntegrationBoundary

open R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots
open R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary
open R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2031D RH-target integration boundary to its dependency audit. -/
def endpoint_first_rh_target_integration_boundary_to_dependency_audit

    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    {F : MainAnchoredEndpointFirstEstimateHandoffBoundary E}
    {G : MainAnchoredEndpointFirstEstimateHandoffCertificateSlots F}
    {H : MainAnchoredEndpointFirstExplicitFormulaHandoffBoundary G}
    {I : MainAnchoredEndpointFirstExplicitFormulaHandoffCertificateSlots H}
    (J : MainAnchoredEndpointFirstRHTargetIntegrationBoundary I) :
    EndpointFirstRHTargetIntegrationDependencyAudit J :=
  { auditItemCount := J.rhTargetIntegrationStageCount
    attachedToRHTargetIntegrationBoundary := J.recordsOnlyRHTargetIntegrationBoundary
    recordsNoRHProof := True
    recordsNoFullRHFormalization := True
    actualLiTarget := J.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_rh_target_integration_boundary_bridge_to_actual_li_target

    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    {F : MainAnchoredEndpointFirstEstimateHandoffBoundary E}
    {G : MainAnchoredEndpointFirstEstimateHandoffCertificateSlots F}
    {H : MainAnchoredEndpointFirstExplicitFormulaHandoffBoundary G}
    {I : MainAnchoredEndpointFirstExplicitFormulaHandoffCertificateSlots H}
    (J : MainAnchoredEndpointFirstRHTargetIntegrationBoundary I) : A.actualLiTarget :=
  (endpoint_first_rh_target_integration_boundary_to_dependency_audit J).actualLiTarget

end R2031DLeanEndpointFirstRHTargetIntegrationBoundary
