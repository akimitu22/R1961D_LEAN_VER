import R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary.EndpointFirstConcreteObligationEndpointTheoremCertificateBoundary

namespace R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
open R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
open R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff
open R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate

/-- Dependency audit for R2077D endpoint theorem certificate boundary. -/
structure EndpointFirstConcreteObligationEndpointTheoremCertificateBoundaryDependencyAudit

    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    {BE : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff BD}
    {BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE}
    (BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF) where
  auditItemCount : Nat
  auditsClosureGateInherited : Prop
  auditsTheoremCertificateBoundaryExposed : Prop
  auditsCertificateInputSlotsExposed : Prop
  auditsCertificateStillIncomplete : Prop
  auditsEndpointTheoremStillUnclosed : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- R2077D dependency audit preserves the analytic target. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_boundary_dependency_audit_to_actual_li_target

    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    {BE : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff BD}
    {BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE}
    {BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF}
    (audit : EndpointFirstConcreteObligationEndpointTheoremCertificateBoundaryDependencyAudit BG) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary
