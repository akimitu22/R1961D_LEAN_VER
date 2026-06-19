import R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation.EndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulationDependencyAudit

namespace R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation

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

/-- Bridge exported by R2078D certificate slot population. -/
structure EndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulationBridge

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
    (BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG) where
  bridgeItemCount : Nat
  exportsSlotPopulationStatement : Prop
  exportsSlotPopulationStatementProof : exportsSlotPopulationStatement
  exportsPopulatedCheckedCandidate : BA.endpointTheoremProofTermSlot
  exportsPopulatedClosureGateResult : Bool
  exportsCertificateSlotsPopulatedHere : Bool
  exportsCertificateSlotsPopulatedHere_eq_true : exportsCertificateSlotsPopulatedHere = true
  exportsReadyForCertificateExportHere : Bool
  exportsReadyForCertificateExportHere_eq_true : exportsReadyForCertificateExportHere = true
  exportsCertificateCompletedHere : Bool
  exportsCertificateCompletedHere_eq_false : exportsCertificateCompletedHere = false
  exportsEndpointTheoremClosedHere : Bool
  exportsEndpointTheoremClosedHere_eq_false : exportsEndpointTheoremClosedHere = false
  exportsRHProvedHere : Bool
  exportsRHProvedHere_eq_false : exportsRHProvedHere = false
  bridgeDoesNotClaimFullRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2078D slot population to a dependency audit. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_slot_population_to_dependency_audit

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
    (BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG) :
    EndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulationDependencyAudit BH :=
  { auditItemCount := 6
    auditsCertificateBoundaryInherited := True
    auditsCertificateSlotsPopulated := True
    auditsReadyForCertificateExport := True
    auditsCertificateStillIncomplete := True
    auditsEndpointTheoremStillUnclosed := True
    auditsRHStillUnproved := True
    actualLiTarget := BH.actualLiTarget }

/-- Build the R2078D bridge. -/
def endpoint_first_concrete_obligation_endpoint_theorem_certificate_slot_population_to_bridge

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
    (BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG) :
    EndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulationBridge BH :=
  { bridgeItemCount := 11
    exportsSlotPopulationStatement := BH.certificateSlotPopulationStatement
    exportsSlotPopulationStatementProof := BH.certificateSlotPopulationStatementProof
    exportsPopulatedCheckedCandidate := BH.populatedCheckedCandidate
    exportsPopulatedClosureGateResult := BH.populatedClosureGateResult
    exportsCertificateSlotsPopulatedHere := BH.endpointTheoremCertificateSlotsPopulatedHere
    exportsCertificateSlotsPopulatedHere_eq_true := BH.endpointTheoremCertificateSlotsPopulatedHere_eq_true
    exportsReadyForCertificateExportHere := BH.endpointTheoremCertificateSlotPopulationReadyForExportHere
    exportsReadyForCertificateExportHere_eq_true := BH.endpointTheoremCertificateSlotPopulationReadyForExportHere_eq_true
    exportsCertificateCompletedHere := BH.endpointTheoremCertificateCompletedHere
    exportsCertificateCompletedHere_eq_false := BH.endpointTheoremCertificateCompletedHere_eq_false
    exportsEndpointTheoremClosedHere := BH.endpointTheoremClosedHere
    exportsEndpointTheoremClosedHere_eq_false := BH.endpointTheoremClosedHere_eq_false
    exportsRHProvedHere := BH.provesRHHere
    exportsRHProvedHere_eq_false := BH.provesRHHere_eq_false
    bridgeDoesNotClaimFullRH := True
    actualLiTarget := BH.actualLiTarget }

/-- R2078D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_endpoint_theorem_certificate_slot_population_bridge_to_actual_li_target

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
    (BH : MainAnchoredEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation BG) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_endpoint_theorem_certificate_slot_population_to_bridge BH).actualLiTarget

end R2078DLeanEndpointFirstConcreteObligationEndpointTheoremCertificateSlotPopulation
