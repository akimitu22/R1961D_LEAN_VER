import R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate.EndpointFirstConcreteObligationEndpointProofTermCheckCertificateBridge
import R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.ToyEndpointFirstConcreteObligationEndpointProofTermCheckGate

namespace R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate

private def toyEndpointProofTermCheckCertificatePayload {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationEndpointProofTermCheckCertificatePayload
      (R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate h) :=
  { inheritedCheckGateStatement := True
    inheritedCheckGateStatementProof := trivial
    checkCertificateStatement := True
    checkCertificateStatementProof := trivial
    certificatedCheckedCandidate := ()
    certificatedCheckGateResult := false
    certificateRecordsGateExecution := True
    certificateRecordsCheckResult := True
    certificateRecordsNonCertificationBoundary := True
    remainingEndpointTheoremProofObligation := True
    remainingGlobalRHProofObligation := True
    actualLiTarget := h }

/-- Toy constructor for R2074D endpoint proof-term check certificate. -/
def toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
      (R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_gate h) :=
  { endpointProofTermCheckCertificateStageCount := 5
    inheritedEndpointProofTermCheckGateCarrier := Unit
    checkCertificateStage := EndpointFirstConcreteObligationEndpointProofTermCheckCertificateStage.certifyCheckGateRecord
    endpointProofTermCheckCertificatePayload := toyEndpointProofTermCheckCertificatePayload h
    inheritedCheckGateStatement := True
    inheritedCheckGateStatementProof := trivial
    checkCertificateStatement := True
    checkCertificateStatementProof := trivial
    certificatedCheckedCandidate := ()
    certificatedCheckGateResult := false
    endpointProofTermCheckCertificateExportedHere := true
    endpointProofTermCheckCertificateExportedHere_eq_true := rfl
    endpointProofTermCheckCertificateReadyForClosureHandoffHere := true
    endpointProofTermCheckCertificateReadyForClosureHandoffHere_eq_true := rfl
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
theorem toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate h)

/-- Toy check-certificate statement. -/
theorem toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_statement
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate_statement
    (toy_endpoint_first_concrete_obligation_endpoint_proof_term_check_certificate h)

end R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
