import R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.EndpointFirstEstimateHandoffCertificateDependencyAudit

namespace R2028DLeanEndpointFirstEstimateHandoffCertificateSlots

open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2028D estimate-handoff certificate slots to its dependency audit. -/
def endpoint_first_estimate_handoff_certificate_slots_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    {F : MainAnchoredEndpointFirstEstimateHandoffBoundary E}
    (G : MainAnchoredEndpointFirstEstimateHandoffCertificateSlots F) :
    EndpointFirstEstimateHandoffCertificateDependencyAudit G :=
  { auditItemCount := G.estimateHandoffCertificateStageCount
    attachedToEndpointEstimateHandoffCertificateSlots := G.recordsOnlyEndpointEstimateHandoffCertificateSlots
    recordsNoEndpointEstimateProof := True
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := G.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_estimate_handoff_certificate_slots_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    {F : MainAnchoredEndpointFirstEstimateHandoffBoundary E}
    (G : MainAnchoredEndpointFirstEstimateHandoffCertificateSlots F) : A.actualLiTarget :=
  (endpoint_first_estimate_handoff_certificate_slots_to_dependency_audit G).actualLiTarget

end R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
