import R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure

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

/-- Stages for exporting the first concrete local-discharge certificate. -/
inductive EndpointFirstConcreteObligationDischargeCertificateExportStage where
  | inheritLocalDischargeClosure
  | selectCheckedLocalDischargeCertificate
  | exportCertificateToEndpointBranch
  | linkExportToClosure
  | preserveNonRHBoundary
  deriving DecidableEq, Repr

/-- Payload exported from the R2066D closure to the endpoint branch. -/
structure EndpointFirstConcreteObligationExportedDischargeCertificatePayload
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) where
  exportedPayloadName : String
  exportedLocalDischargeCertificate : AR.requiredLocalDischargeCertificate
  exportedLocalDischargeCertificateProof :
    AR.localDischargeCertificateObligation exportedLocalDischargeCertificate
  exportedCheckerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate
  exportedLocalDischargeConclusion : AR.localDischargeConclusion
  endpointBranchLinkStatement : Prop
  endpointBranchLinkProof : endpointBranchLinkStatement
  certificateExportedAsLeanObject : Prop
  notMerelyExportFlag : Prop
  actualLiTarget : A.actualLiTarget

/-- R2067D exports the checked local-discharge certificate and links it to the endpoint branch. -/
structure MainAnchoredEndpointFirstConcreteObligationDischargeCertificateExport
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) where
  certificateExportStageCount : Nat
  inheritedLocalDischargeClosure : Type
  exportStage : EndpointFirstConcreteObligationDischargeCertificateExportStage
  exportedCertificatePayload : EndpointFirstConcreteObligationExportedDischargeCertificatePayload AV
  exportedLocalDischargeCertificate : AR.requiredLocalDischargeCertificate
  exportedLocalDischargeCertificateProof :
    AR.localDischargeCertificateObligation exportedLocalDischargeCertificate
  inheritedLocalDischargeClosureProof : AR.localDischargeConclusion
  inheritedCheckerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate
  endpointBranchLinkStatement : Prop
  endpointBranchLinkProof : endpointBranchLinkStatement
  exportedCertificateMatchesCheckedCertificate : Prop
  exportedCertificateLinkedToLocalDischargeClosure : Prop
  firstConcreteObligationLocallyDischargedHere : Bool
  firstConcreteObligationLocallyDischargedHere_eq_true :
    firstConcreteObligationLocallyDischargedHere = true
  localDischargeCompletedHere : Bool
  localDischargeCompletedHere_eq_true : localDischargeCompletedHere = true
  localDischargeCertificateExportedHere : Bool
  localDischargeCertificateExportedHere_eq_true :
    localDischargeCertificateExportedHere = true
  endpointBranchLinkedHere : Bool
  endpointBranchLinkedHere_eq_true : endpointBranchLinkedHere = true
  provesEndpointTheoremHere : Bool
  provesEndpointTheoremHere_eq_false : provesEndpointTheoremHere = false
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  actualLiTarget : A.actualLiTarget

/-- R2067D preserves the analytic target after certificate export. -/
theorem endpoint_first_concrete_obligation_discharge_certificate_export_to_actual_li_target
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
  AW.actualLiTarget

/-- Extract the exported local-discharge certificate. -/
def endpoint_first_concrete_obligation_discharge_certificate_exported_certificate
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
    AR.requiredLocalDischargeCertificate :=
  AW.exportedLocalDischargeCertificate

/-- The exported certificate satisfies the R2062D certificate obligation. -/
theorem endpoint_first_concrete_obligation_discharge_certificate_exported_certificate_satisfies_obligation
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
    AR.localDischargeCertificateObligation AW.exportedLocalDischargeCertificate :=
  AW.exportedLocalDischargeCertificateProof

/-- R2067D carries forward the closed local-discharge conclusion. -/
theorem endpoint_first_concrete_obligation_discharge_certificate_export_preserves_local_discharge_closure
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
    AR.localDischargeConclusion :=
  AW.inheritedLocalDischargeClosureProof

/-- R2067D is the certificate-export layer for the first concrete discharge. -/
theorem r2067_one_hundred_sixth_step_exports_first_concrete_discharge_certificate : True :=
  trivial

/-- R2067D does not claim the endpoint theorem, RH, or full RH formalization. -/
theorem r2067_one_hundred_sixth_step_does_not_claim_rh_formalization : True :=
  trivial

end R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport
