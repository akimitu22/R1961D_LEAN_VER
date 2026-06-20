import R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate

namespace R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence

section

variable {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
variable {R2067Export : Type}
variable {AX : R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration.MainAnchoredEndpointFirstConcreteObligationEndpointBranchIntegration (A := A) R2067Export}
variable {AY : R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff.MainAnchoredEndpointFirstConcreteObligationFinalTheoremHandoff (A := A) AX}
variable {AZ : R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremStatementAssembly (A := A) AY}
variable {BA : R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremProofBoundary (A := A) AZ}
variable {BB : R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate.MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCandidate (A := A) BA}
variable {BC : R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate.MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckGate (A := A) BB}
variable {BD : R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate.MainAnchoredEndpointFirstConcreteObligationEndpointProofTermCheckCertificate (A := A) BC}
variable {BE : R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureHandoff (A := A) BD}
variable {BF : R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate (A := A) BE}
variable {BG : R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary (A := A) BF}
variable {BH : R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation (A := A) BG}
variable (BI : R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport.MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport (A := A) BH)

structure EndpointTheoremFinalizationEvidence : Prop where
  actualLiTarget : A.actualLiTarget
  certificateExportStatement : BI.certificateExportStatement
  certificatePacketExported : BI.endpointTheoremCertificateExportedHere = true

def endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence :
    EndpointTheoremFinalizationEvidence (A := A) BI :=
  { actualLiTarget :=
      R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate.endpoint_first_concrete_obligation_endpoint_theorem_finalization_gate_to_actual_li_target BI
    certificateExportStatement :=
      R2081DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationGate.endpoint_first_concrete_obligation_endpoint_theorem_finalization_gate_statement (A := A) BI
    certificatePacketExported :=
      R2080DLeanEndpointFirstConcreteObligationEndpointCertificateReplay.endpoint_first_concrete_obligation_endpoint_certificate_replay_export_packet (A := A) BI }

theorem endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence_constructed :
    EndpointTheoremFinalizationEvidence (A := A) BI :=
  endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence (A := A) BI

theorem endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence_to_actual_li_target
    (h : EndpointTheoremFinalizationEvidence (A := A) BI) :
    A.actualLiTarget :=
  h.actualLiTarget

theorem endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence_to_certificate_statement
    (h : EndpointTheoremFinalizationEvidence (A := A) BI) :
    BI.certificateExportStatement :=
  h.certificateExportStatement

theorem endpoint_first_concrete_obligation_endpoint_theorem_finalization_evidence_to_export_proof
    (h : EndpointTheoremFinalizationEvidence (A := A) BI) :
    BI.endpointTheoremCertificateExportedHere = true :=
  h.certificatePacketExported

end

end R2082DLeanEndpointFirstConcreteObligationEndpointTheoremFinalizationEvidence
