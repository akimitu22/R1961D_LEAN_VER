import R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration.EndpointFirstConcreteObligationEndpointBranchIntegrationDependencyAudit

namespace R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration

open R1962DLeanAnalyticRealization

/-- Bridge object for the R2068D endpoint-branch integration. -/
structure EndpointFirstConcreteObligationEndpointBranchIntegrationBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    (AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export) where
  bridgeItemCount : Nat
  exportsEndpointBranchIntegrationStatement : Prop
  exportsEndpointBranchIntegrationProof : exportsEndpointBranchIntegrationStatement
  exportsCertificateIntegratedHere : Bool
  exportsCertificateIntegratedHere_eq_true : exportsCertificateIntegratedHere = true
  exportsFinalTheoremHandoffReadiness : Bool
  exportsFinalTheoremHandoffReadiness_eq_true : exportsFinalTheoremHandoffReadiness = true
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2068D integration to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_branch_integration_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    (AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export) :
    EndpointFirstConcreteObligationEndpointBranchIntegrationDependencyAudit AX :=
  { auditItemCount := 6
    auditsR2067ExportInherited := True
    auditsEndpointBranchIntegrationProof := True
    auditsCertificateLinkToEndpointBranch := AX.certificateExportLinkedToEndpointBranch
    auditsFinalTheoremHandoffReadiness := AX.endpointBranchReadyForFinalHandoff
    auditsEndpointTheoremNotClaimedHere := True
    auditsNoRHClaimHere := True
    actualLiTarget := AX.actualLiTarget }

/-- Build the R2068D endpoint-branch integration bridge. -/
def endpoint_first_concrete_obligation_endpoint_branch_integration_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    (AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export) :
    EndpointFirstConcreteObligationEndpointBranchIntegrationBridge AX :=
  { bridgeItemCount := 8
    exportsEndpointBranchIntegrationStatement := AX.endpointBranchIntegrationStatement
    exportsEndpointBranchIntegrationProof := AX.endpointBranchIntegrationProof
    exportsCertificateIntegratedHere := AX.firstConcreteObligationCertificateIntegratedHere
    exportsCertificateIntegratedHere_eq_true := AX.firstConcreteObligationCertificateIntegratedHere_eq_true
    exportsFinalTheoremHandoffReadiness := AX.finalTheoremHandoffPreparedHere
    exportsFinalTheoremHandoffReadiness_eq_true := AX.finalTheoremHandoffPreparedHere_eq_true
    exportsEndpointTheoremProvedHere := AX.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := AX.provesEndpointTheoremHere_eq_false
    bridgeDoesNotClaimRH := True
    actualLiTarget := AX.actualLiTarget }

/-- The R2068D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_branch_integration_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    (AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_branch_integration_to_bridge AX).actualLiTarget

end R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
