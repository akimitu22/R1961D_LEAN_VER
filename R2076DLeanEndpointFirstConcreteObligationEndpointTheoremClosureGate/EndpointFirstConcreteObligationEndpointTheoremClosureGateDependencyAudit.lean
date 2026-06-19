import R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate.EndpointFirstConcreteObligationEndpointTheoremClosureGate

namespace R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
open R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
open R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff

/-- Dependency audit for R2076D endpoint theorem closure gate. -/
structure EndpointFirstConcreteObligationEndpointTheoremClosureGateDependencyAudit

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
    (BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE) where
  auditItemCount : Nat
  auditsClosureHandoffInherited : Prop
  auditsClosureGateInputAssembled : Prop
  auditsClosureGateExecuted : Prop
  auditsClosureGateResultRecorded : Prop
  auditsEndpointTheoremStillUnclosed : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- R2076D dependency audit preserves the analytic target. -/
def endpoint_first_concrete_obligation_endpoint_theorem_closure_gate_dependency_audit_to_actual_li_target

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
    (audit : EndpointFirstConcreteObligationEndpointTheoremClosureGateDependencyAudit BF) :
    A.actualLiTarget :=
  audit.actualLiTarget

end R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate
