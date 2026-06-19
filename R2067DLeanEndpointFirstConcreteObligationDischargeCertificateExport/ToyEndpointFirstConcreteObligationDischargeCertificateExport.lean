import R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport.EndpointFirstConcreteObligationDischargeCertificateExportBridge
import R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure.ToyEndpointFirstConcreteObligationLocalDischargeClosure

namespace R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport

open R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
open R1962DLeanAnalyticRealization

private def toyExportedDischargeCertificatePayload {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    EndpointFirstConcreteObligationExportedDischargeCertificatePayload
      (R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure.toy_endpoint_first_concrete_obligation_local_discharge_closure h) :=
  { exportedPayloadName := "toy-discharge-certificate-export-payload"
    exportedLocalDischargeCertificate := ()
    exportedLocalDischargeCertificateProof := trivial
    exportedCheckerKernelExecutionProof := trivial
    exportedLocalDischargeConclusion := trivial
    endpointBranchLinkStatement := True
    endpointBranchLinkProof := trivial
    certificateExportedAsLeanObject := True
    notMerelyExportFlag := True
    actualLiTarget := h }

/-- Toy constructor for R2067D certificate export. -/
def toy_endpoint_first_concrete_obligation_discharge_certificate_export
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport
      (R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure.toy_endpoint_first_concrete_obligation_local_discharge_closure h) :=
  { certificateExportStageCount := 5
    inheritedLocalDischargeClosure := Unit
    exportStage := EndpointFirstConcreteObligationDischargeCertificateExportStage.exportCertificateToEndpointBranch
    exportedCertificatePayload := toyExportedDischargeCertificatePayload h
    exportedLocalDischargeCertificate := ()
    exportedLocalDischargeCertificateProof := trivial
    inheritedLocalDischargeClosureProof := trivial
    inheritedCheckerKernelExecutionProof := trivial
    endpointBranchLinkStatement := True
    endpointBranchLinkProof := trivial
    exportedCertificateMatchesCheckedCertificate := True
    exportedCertificateLinkedToLocalDischargeClosure := True
    firstConcreteObligationLocallyDischargedHere := true
    firstConcreteObligationLocallyDischargedHere_eq_true := rfl
    localDischargeCompletedHere := true
    localDischargeCompletedHere_eq_true := rfl
    localDischargeCertificateExportedHere := true
    localDischargeCertificateExportedHere_eq_true := rfl
    endpointBranchLinkedHere := true
    endpointBranchLinkedHere_eq_true := rfl
    provesEndpointTheoremHere := false
    provesEndpointTheoremHere_eq_false := rfl
    provesRHHere := false
    provesRHHere_eq_false := rfl
    claimsFullRHFormalization := false
    claimsFullRHFormalization_eq_false := rfl
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_discharge_certificate_export_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_discharge_certificate_export_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_discharge_certificate_export h)

/-- Toy exported certificate proof for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_discharge_certificate_exported_certificate_satisfies_obligation
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_discharge_certificate_exported_certificate_satisfies_obligation
    (toy_endpoint_first_concrete_obligation_discharge_certificate_export h)

/-- Toy local-discharge conclusion preserved by export. -/
theorem toy_endpoint_first_concrete_obligation_discharge_certificate_export_preserves_local_discharge_closure
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : True :=
  endpoint_first_concrete_obligation_discharge_certificate_export_preserves_local_discharge_closure
    (toy_endpoint_first_concrete_obligation_discharge_certificate_export h)

end R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport
