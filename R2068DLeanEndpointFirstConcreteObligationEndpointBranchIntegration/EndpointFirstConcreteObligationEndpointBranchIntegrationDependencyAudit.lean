import R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration.EndpointFirstConcreteObligationEndpointBranchIntegration

namespace R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration

open R1962DLeanAnalyticRealization

/-- Dependency audit for R2068D endpoint-branch integration. -/
structure EndpointFirstConcreteObligationEndpointBranchIntegrationDependencyAudit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    (AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export) where
  auditItemCount : Nat
  auditsR2067ExportInherited : Prop
  auditsEndpointBranchIntegrationProof : Prop
  auditsCertificateLinkToEndpointBranch : Prop
  auditsFinalTheoremHandoffReadiness : Prop
  auditsEndpointTheoremNotClaimedHere : Prop
  auditsNoRHClaimHere : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2068D audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_branch_integration_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    (audit : EndpointFirstConcreteObligationEndpointBranchIntegrationDependencyAudit AX) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
