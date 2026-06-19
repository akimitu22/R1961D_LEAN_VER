import R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.EndpointFirstConcreteObligationEndpointProofTermCheckGateBridge
import R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.ToyEndpointFirstConcreteObligationEndpointProofTermCandidate

namespace R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

private def toyEndpointProofTermCheckGatePayload {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationEndpointProofTermCheckGatePayload
      (R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate h) :=
  { inheritedCandidateStatement := True
    inheritedCandidateStatementProof := trivial
    checkGateStatement := True
    checkGateStatementProof := trivial
    checkedCandidate := ()
    localCheckGateResult := false
    localCheckGateResultRecorded := True
    candidateNotCertifiedAsEndpointTheorem := True
    remainingEndpointTheoremProofObligation := True
    remainingGlobalRHProofObligation := True
    actualLiTarget := h }

/-- Toy constructor for R2073D endpoint proof-term check gate. -/
def toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate
      (R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate h) :=
  { endpointProofTermCheckGateStageCount := 5
    inheritedEndpointProofTermCandidateCarrier := Unit
    checkGateStage := EndpointFirstConcreteObligationEndpointProofTermCheckGateStage.executeLocalCheckGate
    endpointProofTermCheckGatePayload := toyEndpointProofTermCheckGatePayload h
    inheritedCandidateStatement := True
    inheritedCandidateStatementProof := trivial
    checkGateStatement := True
    checkGateStatementProof := trivial
    checkedCandidate := ()
    localCheckGateResult := false
    endpointProofTermCheckGateExecutedHere := true
    endpointProofTermCheckGateExecutedHere_eq_true := rfl
    endpointProofTermCheckResultRecordedHere := true
    endpointProofTermCheckResultRecordedHere_eq_true := rfl
    endpointProofTermCandidateCertifiedHere := false
    endpointProofTermCandidateCertifiedHere_eq_false := rfl
    provesEndpointTheoremHere := false
    provesEndpointTheoremHere_eq_false := rfl
    provesRHHere := false
    provesRHHere_eq_false := rfl
    claimsFullRHFormalization := false
    claimsFullRHFormalization_eq_false := rfl
    remainingEndpointTheoremProofObligation := True
    remainingGlobalRHProofObligation := True
    actualLiTarget := h }

/-- Toy route to the analytic target. -/
theorem toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate h)

/-- Toy check-gate statement. -/
theorem toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_statement
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_statement
    (toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate h)

end R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
