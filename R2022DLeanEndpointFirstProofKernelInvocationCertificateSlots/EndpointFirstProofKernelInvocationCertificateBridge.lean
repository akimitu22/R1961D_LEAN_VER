import R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots.EndpointFirstProofKernelInvocationCertificateDependencyAudit

namespace R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots

open R1962DLeanAnalyticRealization

/-- Bridge from R2022D certificate slots to their dependency audit. -/
def endpoint_first_proof_kernel_invocation_certificate_slots_to_dependency_audit
    {A : AnalyticRealizationObligations}
    (S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A) :
    EndpointFirstProofKernelInvocationCertificateDependencyAudit S :=
  { auditItemCount := S.invocationCertificateStageCount
    attachedToInvocationCertificateSlots := S.recordsOnlyInvocationCertificateSlots
    recordsNoKernelExecution := True.intro
    recordsNoConcreteEndpointLemmaDischarge := True.intro
    recordsNoEndpointEstimateProof := True.intro
    recordsNoExplicitFormulaProof := True.intro
    recordsNoRHProof := True.intro
    actualLiTarget := S.actualLiTarget }

/-- The bridge preserves the analytic target. -/
theorem endpoint_first_proof_kernel_invocation_certificate_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A) : A.actualLiTarget :=
  (endpoint_first_proof_kernel_invocation_certificate_slots_to_dependency_audit S).actualLiTarget

end R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
