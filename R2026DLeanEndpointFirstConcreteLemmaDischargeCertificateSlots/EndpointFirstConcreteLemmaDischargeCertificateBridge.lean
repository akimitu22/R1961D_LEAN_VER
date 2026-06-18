import R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots.EndpointFirstConcreteLemmaDischargeCertificateDependencyAudit

namespace R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots

open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2026D discharge-certificate slots to their dependency audit. -/
def endpoint_first_concrete_lemma_discharge_certificate_slots_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    (E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D) :
    EndpointFirstConcreteLemmaDischargeCertificateDependencyAudit E :=
  { auditItemCount := E.dischargeCertificateStageCount
    attachedToConcreteLemmaDischargeCertificateSlots := E.recordsOnlyConcreteLemmaDischargeCertificateSlots
    recordsNoConcreteEndpointLemmaDischarge := True
    recordsNoEndpointEstimateProof := True
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := E.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_concrete_lemma_discharge_certificate_slots_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    (E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D) : A.actualLiTarget :=
  (endpoint_first_concrete_lemma_discharge_certificate_slots_to_dependency_audit E).actualLiTarget

end R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
