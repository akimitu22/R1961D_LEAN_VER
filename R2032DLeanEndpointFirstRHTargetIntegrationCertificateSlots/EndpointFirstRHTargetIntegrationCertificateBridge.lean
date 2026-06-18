import R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots.EndpointFirstRHTargetIntegrationCertificateDependencyAudit

namespace R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots


open R2031DLeanEndpointFirstRHTargetIntegrationBoundary
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


/-- Bridge from R2032D RH-target integration certificate slots to dependency audit. -/
def endpoint_first_rh_target_integration_certificate_slots_to_dependency_audit


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
    {J : MainAnchoredEndpointFirstRHTargetIntegrationBoundary I}
    (K : MainAnchoredEndpointFirstRHTargetIntegrationCertificateSlots J) :
    EndpointFirstRHTargetIntegrationCertificateDependencyAudit K :=
  { auditItemCount := K.rhTargetIntegrationCertificateStageCount
    attachedToRHTargetIntegrationCertificateSlots := K.recordsOnlyRHTargetIntegrationCertificateSlots
    recordsNoRHProof := True
    recordsNoFullRHFormalization := True
    actualLiTarget := K.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_rh_target_integration_certificate_slots_bridge_to_actual_li_target


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
    {J : MainAnchoredEndpointFirstRHTargetIntegrationBoundary I}
    (K : MainAnchoredEndpointFirstRHTargetIntegrationCertificateSlots J) : A.actualLiTarget :=
  (endpoint_first_rh_target_integration_certificate_slots_to_dependency_audit K).actualLiTarget

end R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots
