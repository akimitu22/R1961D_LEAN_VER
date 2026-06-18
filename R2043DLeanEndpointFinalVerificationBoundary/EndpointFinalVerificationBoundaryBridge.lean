import R2043DLeanEndpointFinalVerificationBoundary.EndpointFinalVerificationDependencyAudit

namespace R2043DLeanEndpointFinalVerificationBoundary

open R2042DLeanEndpointFinalSubmissionCertificateSlots
open R2041DLeanEndpointFinalSubmissionBoundary
open R2040DLeanEndpointFinalArchiveExportCertificateSlots
open R2039DLeanEndpointFinalArchiveExportBoundary
open R2038DLeanEndpointFinalPackageClosureCertificateSlots
open R2037DLeanEndpointFinalPackageClosureBoundary
open R2036DLeanEndpointFinalRHClaimCertificateSlots
open R2035DLeanEndpointFinalRHClaimBoundary
open R2034DLeanEndpointFinalTheoremHandoffCertificateSlots
open R2033DLeanEndpointFinalTheoremHandoffBoundary
open R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots
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

/-- Bridge from R2043D final verification boundary to dependency audit. -/
def endpoint_final_verification_boundary_to_dependency_audit

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
    {K : MainAnchoredEndpointFirstRHTargetIntegrationCertificateSlots J}
    {L : MainAnchoredEndpointFinalTheoremHandoffBoundary K}
    {M : MainAnchoredEndpointFinalTheoremHandoffCertificateSlots L}
    {N : MainAnchoredEndpointFinalRHClaimBoundary M}
    {O : MainAnchoredEndpointFinalRHClaimCertificateSlots N}
    {P : MainAnchoredEndpointFinalPackageClosureBoundary O}
    {Q : MainAnchoredEndpointFinalPackageClosureCertificateSlots P}
    {R : MainAnchoredEndpointFinalArchiveExportBoundary Q}
    {U : MainAnchoredEndpointFinalArchiveExportCertificateSlots R}
    {V : MainAnchoredEndpointFinalSubmissionBoundary U}
    {W : MainAnchoredEndpointFinalSubmissionCertificateSlots V}
    (X : MainAnchoredEndpointFinalVerificationBoundary W) :
    EndpointFinalVerificationDependencyAudit X :=
  { auditItemCount := X.finalVerificationBoundaryStageCount
    attachedToFinalVerificationBoundary := X.recordsOnlyFinalVerificationBoundary
    recordsNoRHProof := True
    recordsNoFullRHFormalization := True
    actualLiTarget := X.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_final_verification_boundary_bridge_to_actual_li_target

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
    {K : MainAnchoredEndpointFirstRHTargetIntegrationCertificateSlots J}
    {L : MainAnchoredEndpointFinalTheoremHandoffBoundary K}
    {M : MainAnchoredEndpointFinalTheoremHandoffCertificateSlots L}
    {N : MainAnchoredEndpointFinalRHClaimBoundary M}
    {O : MainAnchoredEndpointFinalRHClaimCertificateSlots N}
    {P : MainAnchoredEndpointFinalPackageClosureBoundary O}
    {Q : MainAnchoredEndpointFinalPackageClosureCertificateSlots P}
    {R : MainAnchoredEndpointFinalArchiveExportBoundary Q}
    {U : MainAnchoredEndpointFinalArchiveExportCertificateSlots R}
    {V : MainAnchoredEndpointFinalSubmissionBoundary U}
    {W : MainAnchoredEndpointFinalSubmissionCertificateSlots V}
    (X : MainAnchoredEndpointFinalVerificationBoundary W) : A.actualLiTarget :=
  (endpoint_final_verification_boundary_to_dependency_audit X).actualLiTarget

end R2043DLeanEndpointFinalVerificationBoundary
