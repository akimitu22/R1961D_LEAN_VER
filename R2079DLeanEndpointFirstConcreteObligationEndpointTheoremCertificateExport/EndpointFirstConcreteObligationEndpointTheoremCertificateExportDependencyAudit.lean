import R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport.EndpointFirstConcreteObligationEndpointTheoremCertificateExport

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

/-- Dependency audit for R2079D certificate export. -/
structure EndpointFirstConcreteObligationEndpointTheoremCertificateExportDependencyAudit

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
  auditItemCount : Nat
  auditsSlotPopulationInherited : Prop
  auditsCertificateExportPacketPrepared : Prop
  auditsCertificateBoundaryPacketExported : Prop
  auditsCertificateStillIncomplete : Prop
  auditsEndpointTheoremStillUnclosed : Prop
  auditsRHStillUnproved : Prop
  actualLiTarget : A.actualLiTarget

/-- R2079D dependency audit preserves the analytic target. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_export_dependency_audit_to_actual_li_target

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
    {BI : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateExport BH}
    (audit : EndpointFirstConcreteObligationEndpointTheoremCertificateExportDependencyAudit BI) : A.actualLiTarget :=
  audit.actualLiTarget

end R2079DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateExport
