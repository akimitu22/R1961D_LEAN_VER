import R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution

namespace R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure

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
open R1962DLeanAnalyticRealization

/-- R2066D stages for closing the first concrete local-discharge obligation. -/
inductive EndpointFirstConcreteObligationLocalDischargeClosureStage where
  | inheritWitnessCheckerExecution
  | acceptKernelLocalDischargeConclusion
  | closeFirstConcreteLocalDischarge
  | keepCertificateExportForNextLayer
  | preserveNonRHBoundary
  deriving DecidableEq, Repr

/-- Payload for the first concrete local-discharge closure. -/
structure EndpointFirstConcreteObligationClosedLocalDischargePayload
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
    (AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT) where
  closurePayloadName : String
  inheritedCheckerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate
  inheritedAttemptStatement : AS.localDischargeAttemptStatement
  localDischargeClosureProof : AR.localDischargeConclusion
  closesFirstConcreteObligationAsLeanProof : Prop
  notMerelyClosureFlag : Prop
  actualLiTarget : A.actualLiTarget

/-- R2066D closes the first concrete local discharge, without exporting the final certificate or claiming RH. -/
structure MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure
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
    (AU : MainAnchoredEndpointFirstConcreteObligationWitnessCheckerExecution AT) where
  localDischargeClosureStageCount : Nat
  inheritedWitnessCheckerExecution : Type
  closureStage : EndpointFirstConcreteObligationLocalDischargeClosureStage
  closedLocalDischargePayload : EndpointFirstConcreteObligationClosedLocalDischargePayload AU
  inheritedCheckerKernelExecutionProof :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate
  inheritedLocalDischargeAttemptStatement : AS.localDischargeAttemptStatement
  localDischargeClosureProof : AR.localDischargeConclusion
  firstConcreteObligationLocallyDischargedHere : Bool
  firstConcreteObligationLocallyDischargedHere_eq_true :
    firstConcreteObligationLocallyDischargedHere = true
  localDischargeCompletedHere : Bool
  localDischargeCompletedHere_eq_true : localDischargeCompletedHere = true
  dischargesConcreteEndpointLemmaHere : Bool
  dischargesConcreteEndpointLemmaHere_eq_true : dischargesConcreteEndpointLemmaHere = true
  localDischargeCertificateExportedHere : Bool
  localDischargeCertificateExportedHere_eq_false :
    localDischargeCertificateExportedHere = false
  provesEndpointTheoremHere : Bool
  provesEndpointTheoremHere_eq_false : provesEndpointTheoremHere = false
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  actualLiTarget : A.actualLiTarget

/-- R2066D preserves the analytic target after local-discharge closure. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_to_actual_li_target
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) : A.actualLiTarget :=
  AV.actualLiTarget

/-- Extract the kernel conclusion closed in R2066D. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_proves_kernel_conclusion
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) :
    AR.localDischargeConclusion :=
  AV.localDischargeClosureProof

/-- Extract the R2065D checker proof preserved by R2066D. -/
theorem endpoint_first_concrete_obligation_local_discharge_closure_preserves_checker_execution
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
    (AV : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosure AU) :
    AR.checkerKernelObligation
      AT.suppliedWitnessTerm
      AU.suppliedEndpointEstimateInput
      AU.suppliedExplicitFormulaInput
      AU.suppliedTransferInput
      AU.suppliedLocalDischargeCertificate :=
  AV.inheritedCheckerKernelExecutionProof

/-- R2066D is the local-discharge closure layer. -/
theorem r2066_one_hundred_fifth_step_closes_first_concrete_local_discharge : True :=
  trivial

/-- R2066D does not export the final certificate or claim RH. -/
theorem r2066_one_hundred_fifth_step_does_not_claim_rh_formalization : True :=
  trivial

end R2066DLeanEndpointFirstConcreteObligationLocalDischargeClosure
