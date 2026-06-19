import R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.EndpointFirstConcreteObligationEndpointProofTermCandidateDependencyAudit

namespace R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary

/-- Bridge exported by R2072D endpoint proof-term candidate supply. -/
structure EndpointFirstConcreteObligationEndpointProofTermCandidateBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) where
  bridgeItemCount : Nat
  exportsCandidateProofTermStatement : Prop
  exportsCandidateProofTermStatementProof : exportsCandidateProofTermStatement
  exportsCandidateProofTerm : BA.endpointTheoremProofTermSlot
  exportsCandidateReadyForCheckGateHere : Bool
  exportsCandidateReadyForCheckGateHere_eq_true : exportsCandidateReadyForCheckGateHere = true
  exportsCandidateCertifiedHere : Bool
  exportsCandidateCertifiedHere_eq_false : exportsCandidateCertifiedHere = false
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2072D endpoint proof-term candidate supply to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_candidate_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    EndpointFirstConcreteObligationEndpointProofTermCandidateDependencyAudit BB :=
  { auditItemCount := 7
    auditsEndpointProofBoundaryInherited := True
    auditsRequiredProofTermSlotRead := True
    auditsCandidateTermSupplied := True
    auditsCandidateReadyForCheckGate := True
    auditsCandidateStillUncertified := True
    auditsEndpointTheoremStillUnproved := True
    auditsRHStillUnproved := True
    actualLiTarget := BB.actualLiTarget }

/-- Build the R2072D candidate bridge. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_candidate_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    EndpointFirstConcreteObligationEndpointProofTermCandidateBridge BB :=
  { bridgeItemCount := 9
    exportsCandidateProofTermStatement := BB.candidateProofTermStatement
    exportsCandidateProofTermStatementProof := BB.candidateProofTermStatementProof
    exportsCandidateProofTerm := BB.candidateProofTerm
    exportsCandidateReadyForCheckGateHere := BB.endpointProofTermCandidateReadyForCheckGateHere
    exportsCandidateReadyForCheckGateHere_eq_true := BB.endpointProofTermCandidateReadyForCheckGateHere_eq_true
    exportsCandidateCertifiedHere := BB.endpointProofTermCandidateCertifiedHere
    exportsCandidateCertifiedHere_eq_false := BB.endpointProofTermCandidateCertifiedHere_eq_false
    exportsEndpointTheoremProvedHere := BB.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := BB.provesEndpointTheoremHere_eq_false
    exportsRHProvedHere := BB.provesRHHere
    exportsRHProvedHere_eq_false := BB.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BB.actualLiTarget }

/-- The R2072D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_candidate_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    (BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_proof_term_candidate_to_bridge BB).actualLiTarget

end R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
