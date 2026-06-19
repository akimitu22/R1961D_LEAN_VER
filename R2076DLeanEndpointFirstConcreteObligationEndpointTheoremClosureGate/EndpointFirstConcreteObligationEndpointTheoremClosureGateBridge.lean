import R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate.EndpointFirstConcreteObligationEndpointTheoremClosureGateDependencyAudit

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

/-- Bridge exported by R2076D endpoint theorem closure gate. -/
structure EndpointFirstConcreteObligationEndpointTheoremClosureGateBridge

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
  bridgeItemCount : Nat
  exportsClosureGateStatement : Prop
  exportsClosureGateStatementProof : exportsClosureGateStatement
  exportsCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsCheckCertificateResult : Bool
  exportsClosureGateExecutedHere : Bool
  exportsClosureGateExecutedHere_eq_true : exportsClosureGateExecutedHere = true
  exportsClosureGatePassedHere : Bool
  exportsClosureGatePassedHere_eq_false : exportsClosureGatePassedHere = false
  exportsEndpointTheoremClosedHere : Bool
  exportsEndpointTheoremClosedHere_eq_false : exportsEndpointTheoremClosedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2076D closure gate to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_closure_gate_to_dependency_audit

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
    (BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE) :
    EndpointFirstConcreteObligationEndpointTheoremClosureGateDependencyAudit BF :=
  { auditItemCount := 6
    auditsClosureHandoffInherited := True
    auditsClosureGateInputAssembled := True
    auditsClosureGateExecuted := True
    auditsClosureGateResultRecorded := True
    auditsEndpointTheoremStillUnclosed := True
    auditsRHStillUnproved := True
    actualLiTarget := BF.actualLiTarget }

/-- Build the R2076D closure-gate bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_closure_gate_to_bridge

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
    (BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE) :
    EndpointFirstConcreteObligationEndpointTheoremClosureGateBridge BF :=
  { bridgeItemCount := 10
    exportsClosureGateStatement := BF.closureGateStatement
    exportsClosureGateStatementProof := BF.closureGateStatementProof
    exportsCheckedCandidate := BF.closureGateCheckedCandidate
    exportsCheckCertificateResult := BF.closureGateCheckCertificateResult
    exportsClosureGateExecutedHere := BF.endpointTheoremClosureGateExecutedHere
    exportsClosureGateExecutedHere_eq_true := BF.endpointTheoremClosureGateExecutedHere_eq_true
    exportsClosureGatePassedHere := BF.endpointTheoremClosureGatePassedHere
    exportsClosureGatePassedHere_eq_false := BF.endpointTheoremClosureGatePassedHere_eq_false
    exportsEndpointTheoremClosedHere := BF.endpointTheoremClosedHere
    exportsEndpointTheoremClosedHere_eq_false := BF.endpointTheoremClosedHere_eq_false
    exportsRHProvedHere := BF.provesRHHere
    exportsRHProvedHere_eq_false := BF.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BF.actualLiTarget }

/-- The R2076D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_closure_gate_bridge_to_actual_li_target

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
    (BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_closure_gate_to_bridge BF).actualLiTarget

end R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate
