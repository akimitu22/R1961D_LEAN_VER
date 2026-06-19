import R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport.EndpointFirstConcreteObligationDischargeCertificateExportDependencyAudit

namespace R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
open R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
open R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution
open R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
open R1962DLeanAnalyticRealization

/-- Bridge object exported by R2067D. -/
structure EndpointFirstConcreteObligationDischargeCertificateExportBridge
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    {AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP}
    {AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ}
    {AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR}
    {AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS}
    {AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT}
    {AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU}
    (AW : MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport AV) where
  bridgeItemCount : Nat
  exportsCertificate : AR.requiredLocalDischargeCertificate
  exportsCertificateProof : AR.localDischargeCertificateObligation exportsCertificate
  exportsLocalDischargeConclusion : AR.localDischargeConclusion
  exportsEndpointBranchLinkStatement : Prop
  exportsEndpointBranchLinkProof : exportsEndpointBranchLinkStatement
  exportsCertificateExportedHere : Bool
  exportsCertificateExportedHere_eq_true : exportsCertificateExportedHere = true
  exportsEndpointTheoremProvedHere : Bool
  exportsEndpointTheoremProvedHere_eq_false : exportsEndpointTheoremProvedHere = false
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert R2067D export to its audit. -/
def endpoint_first_concrete_obligation_discharge_certificate_export_to_dependency_audit
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    {AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP}
    {AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ}
    {AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR}
    {AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS}
    {AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT}
    {AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU}
    (AW : MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport AV) :
    EndpointFirstConcreteObligationDischargeCertificateExportDependencyAudit AW :=
  { auditItemCount := 7
    auditsLocalDischargeClosureInherited := True
    auditsCertificateObjectExported := True
    auditsCertificateObligationProof := True
    auditsEndpointBranchLink := True
    auditsEndpointTheoremNotClaimedHere := True
    auditsNoRHClaimHere := True
    actualLiTarget := AW.actualLiTarget }

/-- Build the R2067D export bridge. -/
def endpoint_first_concrete_obligation_discharge_certificate_export_to_bridge
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    {AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP}
    {AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ}
    {AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR}
    {AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS}
    {AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT}
    {AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU}
    (AW : MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport AV) :
    EndpointFirstConcreteObligationDischargeCertificateExportBridge AW :=
  { bridgeItemCount := 10
    exportsCertificate := AW.exportedLocalDischargeCertificate
    exportsCertificateProof := AW.exportedLocalDischargeCertificateProof
    exportsLocalDischargeConclusion := AW.inheritedLocalDischargeClosureProof
    exportsEndpointBranchLinkStatement := AW.endpointBranchLinkStatement
    exportsEndpointBranchLinkProof := AW.endpointBranchLinkProof
    exportsCertificateExportedHere := AW.localDischargeCertificateExportedHere
    exportsCertificateExportedHere_eq_true := AW.localDischargeCertificateExportedHere_eq_true
    exportsEndpointTheoremProvedHere := AW.provesEndpointTheoremHere
    exportsEndpointTheoremProvedHere_eq_false := AW.provesEndpointTheoremHere_eq_false
    bridgeDoesNotClaimRH := True
    actualLiTarget := AW.actualLiTarget }

/-- The R2067D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_discharge_certificate_export_bridge_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    {AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP}
    {AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ}
    {AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR}
    {AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS}
    {AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT}
    {AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU}
    (AW : MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport AV) : A.actualLiTarget :=
  (endpoint_first_concrete_obligation_discharge_certificate_export_to_bridge AW).actualLiTarget

end R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport
