import R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate.EndpointFirstConcreteObligationEndpointProofTermCheckCertificateDependencyAudit

namespace R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

/-- Bridge exported by R2074D endpoint proof-term check certificate. -/
structure EndpointFirstConcreteObligationEndpointProofTermCheckCertificateBridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    (BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC) where
  bridgeItemCount : Nat
  exportsCheckCertificateStatement : Prop
  exportsCheckCertificateStatementProof : exportsCheckCertificateStatement
  exportsCertificatedCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsCertificatedCheckGateResult : Bool
  exportsReadyForClosureHandoffHere : Bool
  exportsReadyForClosureHandoffHere_eq_true : exportsReadyForClosureHandoffHere = true
  exportsCandidateCertifiedHere : Bool
  exportsCandidateCertifiedHere_eq_false : exportsCandidateCertifiedHere = false
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2074D endpoint proof-term check certificate to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    (BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC) :
    EndpointFirstConcreteObligationEndpointProofTermCheckCertificateDependencyAudit BD :=
  { auditItemCount := 7
    auditsCheckGateInherited := True
    auditsCheckedCandidatePackaged := True
    auditsCheckGateRecordCertified := True
    auditsCertificateReadyForClosureHandoff := True
    auditsCandidateStillUncertified := True
    auditsEndpointTheoremStillUnproved := True
    auditsRHStillUnproved := True
    actualLiTarget := BD.actualLiTarget }

/-- Build the R2074D check-certificate bridge. -/
def endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_to_bridge
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    (BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC) :
    EndpointFirstConcreteObligationEndpointProofTermCheckCertificateBridge BD :=
  { bridgeItemCount := 10
    exportsCheckCertificateStatement := BD.checkCertificateStatement
    exportsCheckCertificateStatementProof := BD.checkCertificateStatementProof
    exportsCertificatedCheckedCandidate := BD.certificatedCheckedCandidate
    exportsCertificatedCheckGateResult := BD.certificatedCheckGateResult
    exportsReadyForClosureHandoffHere := BD.endpointProofTermCheckCertificateReadyForClosureHandoffHere
    exportsReadyForClosureHandoffHere_eq_true := BD.endpointProofTermCheckCertificateReadyForClosureHandoffHere_eq_true
    exportsCandidateCertifiedHere := BD.endpointProofTermCandidateCertifiedHere
    exportsCandidateCertifiedHere_eq_false := BD.endpointProofTermCandidateCertifiedHere_eq_false
    exportsEndpointTheoremProvedHere := BD.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := BD.provesEndpointTheoremHere_eq_false
    exportsRHProvedHere := BD.provesRHHere
    exportsRHProvedHere_eq_false := BD.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BD.actualLiTarget }

/-- The R2074D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {R2067Export : Type}
    {AX : MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
    {AY : MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff AX}
    {AZ : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly AY}
    {BA : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary AZ}
    {BB : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate BA}
    {BC : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate BB}
    (BD : MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate BC) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_to_bridge BD).actualLiTarget

end R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
