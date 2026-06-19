import R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary.EndpointFirstConcreteObligationEndpointTheoremCertificateBoundaryDependencyAudit

namespace R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary

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

/-- Bridge exported by R2077D endpoint theorem certificate boundary. -/
structure EndpointFirstConcreteObligationEndpointTheoremCertificateBoundaryBridge

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
    (BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF) where
  bridgeItemCount : Nat
  exportsCertificateBoundaryStatement : Prop
  exportsCertificateBoundaryStatementProof : exportsCertificateBoundaryStatement
  exportsBoundaryCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsBoundaryClosureGateResult : Bool
  exportsCertificateBoundaryExposedHere : Bool
  exportsCertificateBoundaryExposedHere_eq_true : exportsCertificateBoundaryExposedHere = true
  exportsCertificateCompletedHere : Bool
  exportsCertificateCompletedHere_eq_false : exportsCertificateCompletedHere = false
  exportsEndpointTheoremClosedHere : Bool
  exportsEndpointTheoremClosedHere_eq_false : exportsEndpointTheoremClosedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2077D theorem certificate boundary to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_boundary_to_dependency_audit

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
    (BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF) :
    EndpointFirstConcreteObligationEndpointTheoremCertificateBoundaryDependencyAudit BG :=
  { auditItemCount := 6
    auditsClosureGateInherited := True
    auditsTheoremCertificateBoundaryExposed := True
    auditsCertificateInputSlotsExposed := True
    auditsCertificateStillIncomplete := True
    auditsEndpointTheoremStillUnclosed := True
    auditsRHStillUnproved := True
    actualLiTarget := BG.actualLiTarget }

/-- Build the R2077D theorem-certificate-boundary bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_boundary_to_bridge

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
    (BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF) :
    EndpointFirstConcreteObligationEndpointTheoremCertificateBoundaryBridge BG :=
  { bridgeItemCount := 10
    exportsCertificateBoundaryStatement := BG.theoremCertificateBoundaryStatement
    exportsCertificateBoundaryStatementProof := BG.theoremCertificateBoundaryStatementProof
    exportsBoundaryCheckedCandidate := BG.boundaryCheckedCandidate
    exportsBoundaryClosureGateResult := BG.boundaryClosureGateResult
    exportsCertificateBoundaryExposedHere := BG.endpointTheoremCertificateBoundaryExposedHere
    exportsCertificateBoundaryExposedHere_eq_true := BG.endpointTheoremCertificateBoundaryExposedHere_eq_true
    exportsCertificateCompletedHere := BG.endpointTheoremCertificateCompletedHere
    exportsCertificateCompletedHere_eq_false := BG.endpointTheoremCertificateCompletedHere_eq_false
    exportsEndpointTheoremClosedHere := BG.endpointTheoremClosedHere
    exportsEndpointTheoremClosedHere_eq_false := BG.endpointTheoremClosedHere_eq_false
    exportsRHProvedHere := BG.provesRHHere
    exportsRHProvedHere_eq_false := BG.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BG.actualLiTarget }

/-- The R2077D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_certificate_boundary_bridge_to_actual_li_target

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
    (BG : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary BF) :
    A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_certificate_boundary_to_bridge BG).actualLiTarget

end R2077DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateBoundary
