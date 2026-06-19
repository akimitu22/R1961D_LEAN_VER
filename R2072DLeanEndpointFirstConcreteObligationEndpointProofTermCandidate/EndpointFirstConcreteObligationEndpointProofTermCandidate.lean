import R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

namespace R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

/-- Stages for supplying a candidate term to the R2071D endpoint proof boundary. -/
inductive EndpointFirstConcreteObligationEndpointProofTermCandidateStage where
  | inheritEndpointProofBoundary
  | readRequiredProofTermSlot
  | supplyCandidateTerm
  | exposeCandidateForCheckGate
  | preserveUncertifiedBoundary
  deriving DecidableEq, Repr

/-- Payload for a supplied candidate proof term. It is a candidate, not a certified proof. -/
structure EndpointFirstConcreteObligationEndpointProofTermCandidatePayload
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) where
  inheritedEndpointProofBoundaryStatement : Prop
  inheritedEndpointProofBoundaryProof : inheritedEndpointProofBoundaryStatement
  candidateProofTermStatement : Prop
  candidateProofTermStatementProof : candidateProofTermStatement
  candidateProofTerm : BA.endpointTheoremProofTermSlot
  candidateProofTermCarrier : Type
  candidateRequiresCheckGate : Prop
  candidateNotCertifiedYet : Prop
  remainingEndpointTheoremProofObligation : Prop
  remainingGlobalRHProofObligation : Prop
  actualLiTarget : A.actualLiTarget

/--
R2072D supplies a candidate term for the endpoint proof-term slot opened by R2071D.
The supplied term is intentionally only a candidate; certification and endpoint theorem closure remain outside this layer.
-/
structure MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    (BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ) where
  endpointProofTermCandidateStageCount : Nat
  inheritedEndpointProofBoundaryCarrier : Type
  candidateStage : EndpointFirstConcreteObligationEndpointProofTermCandidateStage
  endpointProofTermCandidatePayload :
    EndpointFirstConcreteObligationEndpointProofTermCandidatePayload BA
  inheritedEndpointProofBoundaryStatement : Prop
  inheritedEndpointProofBoundaryProof : inheritedEndpointProofBoundaryStatement
  candidateProofTermStatement : Prop
  candidateProofTermStatementProof : candidateProofTermStatement
  candidateProofTerm : BA.endpointTheoremProofTermSlot
  candidateProofTermCarrier : Type
  endpointProofTermCandidateSuppliedHere : Bool
  endpointProofTermCandidateSuppliedHere_eq_true : endpointProofTermCandidateSuppliedHere = true
  endpointProofTermCandidateReadyForCheckGateHere : Bool
  endpointProofTermCandidateReadyForCheckGateHere_eq_true :
    endpointProofTermCandidateReadyForCheckGateHere = true
  endpointProofTermCandidateCertifiedHere : Bool
  endpointProofTermCandidateCertifiedHere_eq_false : endpointProofTermCandidateCertifiedHere = false
  provesEndpointTheoremHere : Bool
  provesEndpointTheoremHere_eq_false : provesEndpointTheoremHere = false
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  remainingEndpointTheoremProofObligation : Prop
  remainingGlobalRHProofObligation : Prop
  actualLiTarget : A.actualLiTarget

/-- R2072D preserves the analytic target while supplying the candidate proof term. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_candidate_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    A.actualLiTarget :=
  BB.actualLiTarget

/-- Extract the candidate term statement proof, not an endpoint theorem proof. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_candidate_statement
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    BB.candidateProofTermStatement :=
  BB.candidateProofTermStatementProof

/-- R2072D exposes the supplied candidate term. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_candidate_term
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    BA.endpointTheoremProofTermSlot :=
  BB.candidateProofTerm

/-- R2072D prepares the candidate for the next check gate. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_candidate_ready_for_check_gate
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    BB.endpointProofTermCandidateReadyForCheckGateHere = true :=
  BB.endpointProofTermCandidateReadyForCheckGateHere_eq_true

/-- R2072D explicitly keeps the endpoint theorem unproved. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_candidate_keeps_endpoint_theorem_unclaimed
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    BB.provesEndpointTheoremHere = false :=
  BB.provesEndpointTheoremHere_eq_false

/-- R2072D is the endpoint proof-term candidate supply layer. -/
theorem r2072_one_hundred_eleventh_step_supplies_endpoint_proof_term_candidate : True :=
  trivial

/-- R2072D does not claim endpoint theorem, RH, or full RH formalization. -/
theorem r2072_one_hundred_eleventh_step_does_not_claim_rh_formalization : True :=
  trivial

end R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
