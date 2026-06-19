import R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate.EndpointFirstConcreteObligationEndpointProofTermCheckCertificate

namespace R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

/-- Dependency audit for R2074D endpoint proof-term check certificate. -/
structure EndpointFirstConcreteObligationEndpointProofTermCheckCertificateDependencyAudit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    (BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC) where
  auditItemCount : Nat
  auditsCheckGateInherited : Prop
  auditsCheckedCandidatePackaged : Prop
  auditsCheckGateRecordCertified : Prop
  auditsCertificateReadyForClosureHandoff : Prop
  auditsCandidateStillUncertified : Prop
  auditsEndpointTheoremStillUnproved : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2074D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    (audit : EndpointFirstConcreteObligationEndpointProofTermCheckCertificateDependencyAudit BD) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
