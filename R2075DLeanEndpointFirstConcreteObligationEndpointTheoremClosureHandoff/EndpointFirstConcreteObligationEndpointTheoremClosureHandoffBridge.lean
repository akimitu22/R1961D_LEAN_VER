import R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff.EndpointFirstConcreteObligationEndpointTheoremClosureHandoffDependencyAudit

namespace R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
open R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate

/-- Bridge exported by R2075D endpoint theorem closure handoff. -/
structure EndpointFirstConcreteObligationEndpointTheoremClosureHandoffBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    (BE : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff BD) where
  bridgeItemCount : Nat
  exportsClosureHandoffStatement : Prop
  exportsClosureHandoffStatementProof : exportsClosureHandoffStatement
  exportsHandoffCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsHandoffCheckCertificateResult : Bool
  exportsClosureHandoffCompletedHere : Bool
  exportsClosureHandoffCompletedHere_eq_true : exportsClosureHandoffCompletedHere = true
  exportsEndpointProofTermCertifiedHere : Bool
  exportsEndpointProofTermCertifiedHere_eq_false : exportsEndpointProofTermCertifiedHere = false
  exportsEndpointTheoremClosedHere : Bool
  exportsEndpointTheoremClosedHere_eq_false : exportsEndpointTheoremClosedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2075D endpoint theorem closure handoff to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_closure_handoff_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    (BE : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff BD) :
    EndpointFirstConcreteObligationEndpointTheoremClosureHandoffDependencyAudit BE :=
  { auditItemCount := 7
    auditsCheckCertificateInherited := True
    auditsClosureInputPackaged := True
    auditsClosureHandoffPrepared := True
    auditsClosureHandoffCompleted := True
    auditsEndpointProofTermStillUncertified := True
    auditsEndpointTheoremStillUnclosed := True
    auditsRHStillUnproved := True
    actualLiTarget := BE.actualLiTarget }

/-- Build the R2075D closure-handoff bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_closure_handoff_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    (BE : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff BD) :
    EndpointFirstConcreteObligationEndpointTheoremClosureHandoffBridge BE :=
  { bridgeItemCount := 10
    exportsClosureHandoffStatement := BE.closureHandoffStatement
    exportsClosureHandoffStatementProof := BE.closureHandoffStatementProof
    exportsHandoffCheckedCandidate := BE.handoffCheckedCandidate
    exportsHandoffCheckCertificateResult := BE.handoffCheckCertificateResult
    exportsClosureHandoffCompletedHere := BE.endpointTheoremClosureHandoffCompletedHere
    exportsClosureHandoffCompletedHere_eq_true := BE.endpointTheoremClosureHandoffCompletedHere_eq_true
    exportsEndpointProofTermCertifiedHere := BE.endpointProofTermCertifiedHere
    exportsEndpointProofTermCertifiedHere_eq_false := BE.endpointProofTermCertifiedHere_eq_false
    exportsEndpointTheoremClosedHere := BE.endpointTheoremClosedHere
    exportsEndpointTheoremClosedHere_eq_false := BE.endpointTheoremClosedHere_eq_false
    exportsRHProvedHere := BE.provesRHHere
    exportsRHProvedHere_eq_false := BE.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BE.actualLiTarget }

/-- The R2075D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_closure_handoff_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    {BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC}
    (BE : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff BD) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_closure_handoff_to_bridge BE).actualLiTarget

end R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff
