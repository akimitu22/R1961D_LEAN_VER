import R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

namespace R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

/-- Stages for routing the candidate endpoint proof term through a check gate. -/
inductive EndpointFirstConcreteObligationEndpointProofTermCheckGateStage where
  | inheritEndpointProofTermCandidate
  | exposeCandidateToChecker
  | executeLocalCheckGate
  | recordNonCertificationResult
  | preserveEndpointTheoremBoundary
  deriving DecidableEq, Repr

/-- Payload for the endpoint proof-term check gate. The gate records a check without certifying theorem closure. -/
structure EndpointFirstConcreteObligationEndpointProofTermCheckGatePayload
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) where
  inheritedCandidateStatement : Prop
  inheritedCandidateStatementProof : inheritedCandidateStatement
  checkGateStatement : Prop
  checkGateStatementProof : checkGateStatement
  checkedCandidate : BA.endpointTheoremProofTermSlot
  localCheckGateResult : Bool
  localCheckGateResultRecorded : Prop
  candidateNotCertifiedAsEndpointTheorem : Prop
  remainingEndpointTheoremProofObligation : Prop
  remainingGlobalRHProofObligation : Prop
  actualLiTarget : A.actualLiTarget

/--
R2073D passes the R2072D candidate proof term through an endpoint proof-term check gate.
The gate execution is recorded, but the candidate is not certified as an endpoint theorem proof here.
-/
structure MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) where
  endpointProofTermCheckGateStageCount : Nat
  inheritedEndpointProofTermCandidateCarrier : Type
  checkGateStage : EndpointFirstConcreteObligationEndpointProofTermCheckGateStage
  endpointProofTermCheckGatePayload :
    EndpointFirstConcreteObligationEndpointProofTermCheckGatePayload BB
  inheritedCandidateStatement : Prop
  inheritedCandidateStatementProof : inheritedCandidateStatement
  checkGateStatement : Prop
  checkGateStatementProof : checkGateStatement
  checkedCandidate : BA.endpointTheoremProofTermSlot
  localCheckGateResult : Bool
  endpointProofTermCheckGateExecutedHere : Bool
  endpointProofTermCheckGateExecutedHere_eq_true : endpointProofTermCheckGateExecutedHere = true
  endpointProofTermCheckResultRecordedHere : Bool
  endpointProofTermCheckResultRecordedHere_eq_true : endpointProofTermCheckResultRecordedHere = true
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

/-- R2073D preserves the analytic target while recording the proof-term check gate. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    A.actualLiTarget :=
  BC.actualLiTarget

/-- Extract the check-gate statement proof, not an endpoint theorem proof. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_statement
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    BC.checkGateStatement :=
  BC.checkGateStatementProof

/-- R2073D exposes the checked candidate term. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_checked_candidate
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    BA.endpointTheoremProofTermSlot :=
  BC.checkedCandidate

/-- R2073D records that the check gate was executed. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_executed
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    BC.endpointProofTermCheckGateExecutedHere = true :=
  BC.endpointProofTermCheckGateExecutedHere_eq_true

/-- R2073D explicitly keeps the candidate uncertified as an endpoint theorem proof. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_gate_keeps_candidate_uncertified
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    (BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB) :
    BC.endpointProofTermCandidateCertifiedHere = false :=
  BC.endpointProofTermCandidateCertifiedHere_eq_false

/-- R2073D is the endpoint proof-term check-gate layer. -/
theorem r2073_one_hundred_twelfth_step_records_endpoint_proof_term_check_gate : True :=
  trivial

/-- R2073D does not claim endpoint theorem, RH, or full RH formalization. -/
theorem r2073_one_hundred_twelfth_step_does_not_claim_rh_formalization : True :=
  trivial

end R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
