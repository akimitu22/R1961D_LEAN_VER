import R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.EndpointFirstConcreteObligationEndpointProofTermCandidateBridge
import R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.ToyEndpointFirstConcreteObligationEndpointTheoremProofBoundary

namespace R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

private def toyEndpointProofTermCandidatePayload {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationEndpointProofTermCandidatePayload
      (R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.toy_endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary h) :=
  { inheritedEndpointProofBoundaryStatement := True
    inheritedEndpointProofBoundaryProof := trivial
    candidateProofTermStatement := True
    candidateProofTermStatementProof := trivial
    candidateProofTerm := ()
    candidateProofTermCarrier := Unit
    candidateRequiresCheckGate := True
    candidateNotCertifiedYet := True
    remainingEndpointTheoremProofObligation := True
    remainingGlobalRHProofObligation := True
    actualLiTarget := h }

/-- Toy constructor for R2072D endpoint proof-term candidate supply. -/
def toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate
      (R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.toy_endpoint_first_concrete_obligation_endpoint_theorem_proof_boundary h) :=
  { endpointProofTermCandidateStageCount := 5
    inheritedEndpointProofBoundaryCarrier := Unit
    candidateStage := EndpointFirstConcreteObligationEndpointProofTermCandidateStage.supplyCandidateTerm
    endpointProofTermCandidatePayload := toyEndpointProofTermCandidatePayload h
    inheritedEndpointProofBoundaryStatement := True
    inheritedEndpointProofBoundaryProof := trivial
    candidateProofTermStatement := True
    candidateProofTermStatementProof := trivial
    candidateProofTerm := ()
    candidateProofTermCarrier := Unit
    endpointProofTermCandidateSuppliedHere := true
    endpointProofTermCandidateSuppliedHere_eq_true := rfl
    endpointProofTermCandidateReadyForCheckGateHere := true
    endpointProofTermCandidateReadyForCheckGateHere_eq_true := rfl
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
theorem toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_endpoint_proof_term_candidate_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate h)

/-- Toy candidate proof-term statement. -/
theorem toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate_statement
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_endpoint_proof_term_candidate_statement
    (toy_endpoint_first_concrete_obligation_endpoint_proof_term_candidate h)

end R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
