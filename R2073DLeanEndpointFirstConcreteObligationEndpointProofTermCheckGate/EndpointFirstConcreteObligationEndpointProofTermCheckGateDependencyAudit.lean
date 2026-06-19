import R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.EndpointFirstConcreteObligationEndpointProofTermCheckGate

namespace R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

/-- Dependency audit for R2073D endpoint proof-term check gate. -/
structure EndpointFirstConcreteObligationEndpointProofTermCheckGateDependencyAudit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) where
  auditItemCount : Nat
  auditsCandidateInherited : Prop
  auditsCandidateExposedToChecker : Prop
  auditsCheckGateExecuted : Prop
  auditsCheckResultRecorded : Prop
  auditsCandidateStillUncertified : Prop
  auditsEndpointTheoremStillUnproved : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- The R2073D dependency audit preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_dependency_audit_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    (audit : EndpointFirstConcreteObligationEndpointProofTermCheckGateDependencyAudit BC) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
