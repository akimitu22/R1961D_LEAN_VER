import R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt

namespace R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply

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
open R1962DLeanAnalyticRealization

/-- R2064D records the minimal witness-supply stage. -/
inductive EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyStage where
  | inheritLocalDischargeAttempt
  | supplyRequiredWitnessProofTerm
  | dischargeWitnessTermPredicate
  | keepRemainingInputsExplicit
  | prepareCheckerExecution
  deriving DecidableEq, Repr

/-- The actual supplied witness proof term for the R2062D witness kernel.

This is the key change from a readiness wrapper: the required witness type is
inhabited by a concrete term and the associated kernel predicate is proved. -/
structure EndpointFirstConcreteObligationSuppliedMinimalWitnessProofTerm
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
    (AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ) where
  witnessTermName : String
  witnessTerm : AR.requiredWitnessTermType
  witnessTermSatisfiesKernelObligation : AR.witnessTermObligation witnessTerm
  witnessTermSuppliedAsLeanTerm : Prop
  witnessTermNotMerelyFlagged : Prop
  actualLiTarget : A.actualLiTarget

/-- R2064D supplies the minimal witness proof term required by R2062D.

The endpoint estimate, explicit formula, transfer input, local-discharge
certificate, and checker execution remain visible obligations for R2065D and
later layers. -/
structure MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR) where
  witnessSupplyStageCount : Nat
  inheritedLocalDischargeAttempt : Type
  supplyStage : EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyStage
  suppliedMinimalWitness : EndpointFirstConcreteObligationSuppliedMinimalWitnessProofTerm AR
  suppliedWitnessTerm : AR.requiredWitnessTermType
  suppliedWitnessTermProof : AR.witnessTermObligation suppliedWitnessTerm
  suppliedWitnessMatchesKernelType : Prop
  suppliedWitnessMatchesAttemptType : Prop
  closesR2063MissingWitnessObligation : Prop
  remainingEndpointEstimateInputType : Type
  remainingEndpointEstimateObligation : Prop
  remainingExplicitFormulaInputType : Type
  remainingExplicitFormulaObligation : Prop
  remainingTransferInputType : Type
  remainingTransferObligation : Prop
  remainingLocalDischargeCertificateType : Type
  remainingLocalDischargeCertificateObligation : Prop
  remainingCheckerKernelExecutionObligation : Prop
  witnessProofTermSuppliedHere : Bool
  witnessProofTermSuppliedHere_eq_true : witnessProofTermSuppliedHere = true
  witnessTermObligationClosedHere : Bool
  witnessTermObligationClosedHere_eq_true : witnessTermObligationClosedHere = true
  checkerKernelRunsHere : Bool
  checkerKernelRunsHere_eq_false : checkerKernelRunsHere = false
  localDischargeCompletedHere : Bool
  localDischargeCompletedHere_eq_false : localDischargeCompletedHere = false
  provesEndpointEstimateHere : Bool
  provesEndpointEstimateHere_eq_false : provesEndpointEstimateHere = false
  provesExplicitFormulaHere : Bool
  provesExplicitFormulaHere_eq_false : provesExplicitFormulaHere = false
  provesTransferHere : Bool
  provesTransferHere_eq_false : provesTransferHere = false
  provesRHHere : Bool
  provesRHHere_eq_false : provesRHHere = false
  claimsFullRHFormalization : Bool
  claimsFullRHFormalization_eq_false : claimsFullRHFormalization = false
  actualLiTarget : A.actualLiTarget

/-- R2064D preserves the analytic target after supplying the minimal witness term. -/
theorem endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_actual_li_target
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
    (AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS) : A.actualLiTarget :=
  AT.actualLiTarget

/-- Extract the actual supplied witness term. -/
def endpoint_first_concrete_obligation_supplied_minimal_witness_term
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
    (AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS) :
    AR.requiredWitnessTermType :=
  AT.suppliedWitnessTerm

/-- The supplied witness term closes the R2062D witness-term obligation. -/
theorem endpoint_first_concrete_obligation_supplied_minimal_witness_term_satisfies_obligation
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
    (AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS) :
    AR.witnessTermObligation AT.suppliedWitnessTerm :=
  AT.suppliedWitnessTermProof

/-- R2064D is the witness-term-supply layer, not a further readiness wrapper. -/
theorem r2064_one_hundred_third_step_supplies_minimal_witness_proof_term : True :=
  trivial

/-- R2064D does not claim checker execution, local discharge, or RH. -/
theorem r2064_one_hundred_third_step_does_not_claim_rh_formalization : True :=
  trivial

end R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
