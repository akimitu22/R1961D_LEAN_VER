import R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport.EndpointFirstConcreteObligationEndpointTheoremCertificateExportDependencyAudit

namespace R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport

open R1962DLeanAnalyticRealization
open R2068DLeanEndpointFirstConcreteObligationEndpointBranchIntegration
open R2069DLeanEndpointFirstConcreteObligationFinalTheoremHandoff
open R2070DLeanEndpointFirstConcreteObligationEndpointTheoremStatementAssembly
open R2071DLeanEndpointFirstConcreteObligationEndpointTheoremProofBoundary
open R2072DLeanEndpointFirstConcreteObligationEndpointProofTermCandidate
open R2073DLeanEndpointFirstConcreteObligationEndpointProofTermCheckGate
open R2074DLeanEndpointFirstConcreteObligationEndpointProofTermCheckCertificate
open R2075DLeanEndpointFirstConcreteObligationEndpointTheoremClosureHandoff
open R2076DLeanEndpointFirstConcreteObligationEndpointTheoremClosureGate
open R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary
open R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation

/-- Bridge exported by R2079D certificate export. -/
structure EndpointFirstConcreteObligationEndpointTheoremCertificateExportBridge

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
    {BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE}
    {BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF}
    {BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG}
    (BI : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport BH) where
  bridgeItemCount : Nat
  exportsCertificateExportStatement : Prop
  exportsCertificateExportStatementProof : exportsCertificateExportStatement
  exportsCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsClosureGateResult : Bool
  exportsCertificateExportPacketPreparedHere : Bool
  exportsCertificateExportPacketPreparedHere_eq_true : exportsCertificateExportPacketPreparedHere = true
  exportsCertificateExportedHere : Bool
  exportsCertificateExportedHere_eq_true : exportsCertificateExportedHere = true
  exportsCertificateCompletedHere : Bool
  exportsCertificateCompletedHere_eq_false : exportsCertificateCompletedHere = false
  exportsEndpointTheoremClosedHere : Bool
  exportsEndpointTheoremClosedHere_eq_false : exportsEndpointTheoremClosedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2079D certificate export to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_export_to_dependency_audit

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
    {BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE}
    {BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF}
    {BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG}
    (BI : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport BH) :
    EndpointFirstConcreteObligationEndpointTheoremCertificateExportDependencyAudit BI :=
  { auditItemCount := 6
    auditsSlotPopulationInherited := True
    auditsCertificateExportPacketPrepared := True
    auditsCertificateBoundaryPacketExported := True
    auditsCertificateStillIncomplete := True
    auditsEndpointTheoremStillUnclosed := True
    auditsRHStillUnproved := True
    actualLiTarget := BI.actualLiTarget }

/-- Build the R2079D bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_export_to_bridge

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
    {BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE}
    {BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF}
    {BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG}
    (BI : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport BH) :
    EndpointFirstConcreteObligationEndpointTheoremCertificateExportBridge BI :=
  { bridgeItemCount := 11
    exportsCertificateExportStatement := BI.certificateExportStatement
    exportsCertificateExportStatementProof := BI.certificateExportStatementProof
    exportsCheckedCandidate := BI.exportedCheckedCandidate
    exportsClosureGateResult := BI.exportedClosureGateResult
    exportsCertificateExportPacketPreparedHere := BI.endpointTheoremCertificateExportPacketPreparedHere
    exportsCertificateExportPacketPreparedHere_eq_true := BI.endpointTheoremCertificateExportPacketPreparedHere_eq_true
    exportsCertificateExportedHere := BI.endpointTheoremCertificateExportedHere
    exportsCertificateExportedHere_eq_true := BI.endpointTheoremCertificateExportedHere_eq_true
    exportsCertificateCompletedHere := BI.endpointTheoremCertificateCompletedHere
    exportsCertificateCompletedHere_eq_false := BI.endpointTheoremCertificateCompletedHere_eq_false
    exportsEndpointTheoremClosedHere := BI.endpointTheoremClosedHere
    exportsEndpointTheoremClosedHere_eq_false := BI.endpointTheoremClosedHere_eq_false
    exportsRHProvedHere := BI.provesRHHere
    exportsRHProvedHere_eq_false := BI.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BI.actualLiTarget }

/-- R2079D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_certificate_export_bridge_to_actual_li_target

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
    {BF : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremClosureGate BE}
    {BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF}
    {BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG}
    (BI : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport BH) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_certificate_export_to_bridge BI).actualLiTarget

end R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport
