import R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.EndpointFirstConcreteObligationEndpointProofTermCheckGateDependencyAudit

namespace R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

/-- Bridge exported by R2073D endpoint proof-term check gate. -/
structure EndpointFirstConcreteObligationEndpointProofTermCheckGateBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) where
  bridgeItemCount : Nat
  exportsCheckGateStatement : Prop
  exportsCheckGateStatementProof : exportsCheckGateStatement
  exportsCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsLocalCheckGateResult : Bool
  exportsCheckGateExecutedHere : Bool
  exportsCheckGateExecutedHere_eq_true : exportsCheckGateExecutedHere = true
  exportsCandidateCertifiedHere : Bool
  exportsCandidateCertifiedHere_eq_false : exportsCandidateCertifiedHere = false
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2073D endpoint proof-term check gate to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    EndpointFirstConcreteObligationEndpointProofTermCheckGateDependencyAudit BC :=
  { auditItemCount := 7
    auditsCandidateInherited := True
    auditsCandidateExposedToChecker := True
    auditsCheckGateExecuted := True
    auditsCheckResultRecorded := True
    auditsCandidateStillUncertified := True
    auditsEndpointTheoremStillUnproved := True
    auditsRHStillUnproved := True
    actualLiTarget := BC.actualLiTarget }

/-- Build the R2073D check-gate bridge. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    EndpointFirstConcreteObligationEndpointProofTermCheckGateBridge BC :=
  { bridgeItemCount := 10
    exportsCheckGateStatement := BC.checkGateStatement
    exportsCheckGateStatementProof := BC.checkGateStatementProof
    exportsCheckedCandidate := BC.checkedCandidate
    exportsLocalCheckGateResult := BC.localCheckGateResult
    exportsCheckGateExecutedHere := BC.endpointProofTermCheckGateExecutedHere
    exportsCheckGateExecutedHere_eq_true := BC.endpointProofTermCheckGateExecutedHere_eq_true
    exportsCandidateCertifiedHere := BC.endpointProofTermCandidateCertifiedHere
    exportsCandidateCertifiedHere_eq_false := BC.endpointProofTermCandidateCertifiedHere_eq_false
    exportsEndpointTheoremProvedHere := BC.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := BC.provesEndpointTheoremHere_eq_false
    exportsRHProvedHere := BC.provesRHHere
    exportsRHProvedHere_eq_false := BC.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BC.actualLiTarget }

/-- The R2073D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_to_bridge BC).actualLiTarget

end R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
