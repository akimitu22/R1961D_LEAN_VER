import R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary.EndpointFirstExplicitFormulaHandoffDependencyAudit

namespace R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary

open R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Bridge from R2029D explicit-formula handoff boundary to its dependency audit. -/
def endpoint_first_explicit_formula_handoff_boundary_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    {F : MainAnchoredEndpointFirstEstimateHandoffBoundary E}
    {G : MainAnchoredEndpointFirstEstimateHandoffCertificateSlots F}
    (H : MainAnchoredEndpointFirstExplicitFormulaHandoffBoundary G) :
    EndpointFirstExplicitFormulaHandoffDependencyAudit H :=
  { auditItemCount := H.explicitFormulaHandoffStageCount
    attachedToExplicitFormulaHandoffBoundary := H.recordsOnlyExplicitFormulaHandoffBoundary
    recordsNoExplicitFormulaProof := True
    recordsNoRHProof := True
    actualLiTarget := H.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_explicit_formula_handoff_boundary_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    {B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S}
    {C : MainAnchoredEndpointFirstProofKernelExecutionCertificateSlots B}
    {D : MainAnchoredEndpointFirstConcreteLemmaDischargeBoundary C}
    {E : MainAnchoredEndpointFirstConcreteLemmaDischargeCertificateSlots D}
    {F : MainAnchoredEndpointFirstEstimateHandoffBoundary E}
    {G : MainAnchoredEndpointFirstEstimateHandoffCertificateSlots F}
    (H : MainAnchoredEndpointFirstExplicitFormulaHandoffBoundary G) : A.actualLiTarget :=
  (endpoint_first_explicit_formula_handoff_boundary_to_dependency_audit H).actualLiTarget

end R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary
