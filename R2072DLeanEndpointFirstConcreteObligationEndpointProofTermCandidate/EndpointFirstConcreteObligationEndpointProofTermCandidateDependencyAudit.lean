import R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.EndpointFirstConcreteObligationEndpointProofTermCandidate

namespace R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

/-- Dependency audit for R2072D endpoint proof-term candidate supply. -/
structure EndpointFirstConcreteObligationEndpointProofTermCandidateDependencyAudit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) where
  auditItemCount : Nat
  auditsEndpointProofBoundaryInherited : Prop
  auditsRequiredProofTermSlotRead : Prop
  auditsCandidateTermSupplied : Prop
  auditsCandidateReadyForCheckGate : Prop
  auditsCandidateStillUncertified : Prop
  auditsEndpointTheoremStillUnproved : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2072D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_candidate_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (audit : EndpointFirstConcreteObligationEndpointProofTermCandidateDependencyAudit BB) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
