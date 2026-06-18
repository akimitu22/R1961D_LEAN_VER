import R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary.EndpointFirstConcreteLemmaDischargeDependencyAudit

namespace R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary

open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2025D discharge boundary to its dependency audit. -/
def endpoint_first_concrete_lemma_discharge_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    (D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C) :
    EndpointFirstConcreteLemmaDischargeDependencyAudit D :=
  { auditItemCount := D.dischargeBoundaryStageCount
    attachedToConcreteLemmaDischargeBoundary := D.recordsOnlyConcreteLemmaDischargeBoundary
    recordsNoConcreteEndpointLemmaDischarge := True
    recordsNoEndpointEstimateProof := True
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := D.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_concrete_lemma_discharge_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    (D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C) : A.actualLiTarget :=
  (endpoint_first_concrete_lemma_discharge_boundary_to_dependency_audit D).actualLiTarget

end R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
