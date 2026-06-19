import R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface

namespace R2062DLeanEndpointFirstConcreteObligationWitnessKernel

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R1962DLeanAnalyticRealization

/-- Stages for R2062D witness-kernel exposure. -/
inductive EndpointFirstConcreteObligationWitnessKernelStage where
  | inheritWitnessInterface
  | exposeRequiredWitnessTermType
  | exposeEndpointEstimateInputType
  | exposeExplicitFormulaInputType
  | exposeTransferInputType
  | exposeLocalDischargeCertificateType
  | exposeCheckerKernelType
  | recordTypedKernelObligations
  | leaveDischargeForAttemptLayer
  deriving DecidableEq, Repr

/-- Typed kernel specification for one first-concrete-obligation witness.

The important change from the previous witness-interface layer is that the
required objects are Lean types and dependent predicates rather than Boolean
readiness flags.  A later attempt layer must either supply inhabitants meeting
these predicates or expose them as unresolved obligations. -/
structure EndpointFirstConcreteObligationTypedWitnessKernelSpec
    (A : AnalyticRealizationObligations) where
  kernelSpecName : String
  requiredWitnessTermType : Type
  requiredEndpointEstimateInput : Type
  requiredExplicitFormulaInput : Type
  requiredTransferInput : Type
  requiredLocalDischargeCertificate : Type
  witnessTermObligation : requiredWitnessTermType -> Prop
  endpointEstimateInputObligation : requiredEndpointEstimateInput -> Prop
  explicitFormulaInputObligation : requiredExplicitFormulaInput -> Prop
  transferInputObligation : requiredTransferInput -> Prop
  localDischargeCertificateObligation : requiredLocalDischargeCertificate -> Prop
  checkerKernelObligation :
    requiredWitnessTermType ->
    requiredEndpointEstimateInput ->
    requiredExplicitFormulaInput ->
    requiredTransferInput ->
    requiredLocalDischargeCertificate -> Prop
  localDischargeConclusion : Prop
  actualLiTarget : A.actualLiTarget

/-- R2062D fixes the first concrete obligation's witness kernel.

This layer is deliberately not another readiness wrapper.  It exposes the proof
term type, the endpoint-estimate input, the explicit-formula input, the transfer
input, the local-discharge certificate type, and the checker-kernel predicate as
Lean-level data. -/
structure MainAnchoredEndpointFirstConcreteObligationWitnessKernel
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP) where
  witnessKernelStageCount : Nat
  inheritedWitnessInterface : Type
  requiredWitnessTermType : Type
  requiredEndpointEstimateInput : Type
  requiredExplicitFormulaInput : Type
  requiredTransferInput : Type
  requiredLocalDischargeCertificate : Type
  witnessTermObligation : requiredWitnessTermType -> Prop
  endpointEstimateInputObligation : requiredEndpointEstimateInput -> Prop
  explicitFormulaInputObligation : requiredExplicitFormulaInput -> Prop
  transferInputObligation : requiredTransferInput -> Prop
  localDischargeCertificateObligation : requiredLocalDischargeCertificate -> Prop
  checkerKernelObligation :
    requiredWitnessTermType ->
    requiredEndpointEstimateInput ->
    requiredExplicitFormulaInput ->
    requiredTransferInput ->
    requiredLocalDischargeCertificate -> Prop
  localDischargeConclusion : Prop
  typedKernelSpec : EndpointFirstConcreteObligationTypedWitnessKernelSpec A
  recordsWitnessTermAsLeanType : Prop
  recordsEndpointEstimateInputAsLeanType : Prop
  recordsExplicitFormulaInputAsLeanType : Prop
  recordsTransferInputAsLeanType : Prop
  recordsLocalDischargeCertificateAsLeanType : Prop
  recordsCheckerKernelAsLeanPredicate : Prop
  requiresWitnessTermForDischarge : Prop
  requiresEndpointEstimateForDischarge : Prop
  requiresExplicitFormulaForDischarge : Prop
  requiresTransferForDischarge : Prop
  requiresLocalDischargeCertificateForDischarge : Prop
  requiresCheckerKernelForDischarge : Prop
  leavesDischargeToAttemptLayer : Prop
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesTransferHere : Bool
  provesLocalDischargeHere : Bool
  provesRHHere : Bool
  claimsFullRHFormalization : Bool
  actualLiTarget : A.actualLiTarget

/-- R2062D preserves the analytic target while exposing typed kernel obligations. -/
theorem endpoint_first_concrete_obligation_witness_kernel_to_actual_li_target
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
    (AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ) : A.actualLiTarget :=
  AR.actualLiTarget

/-- R2062D exposes the required witness proof-term type as Lean data. -/
def endpoint_first_concrete_obligation_witness_kernel_required_witness_term_type
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
    (AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ) : Type :=
  AR.requiredWitnessTermType

/-- R2062D records the checker-kernel predicate that a later attempt must satisfy. -/
def endpoint_first_concrete_obligation_witness_kernel_checker_kernel_obligation
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
    (AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ) :
    AR.requiredWitnessTermType ->
    AR.requiredEndpointEstimateInput ->
    AR.requiredExplicitFormulaInput ->
    AR.requiredTransferInput ->
    AR.requiredLocalDischargeCertificate -> Prop :=
  AR.checkerKernelObligation

/-- R2062D is the witness-kernel layer, not the local-discharge completion. -/
theorem r2062_one_hundred_first_step_exposes_typed_witness_kernel : True :=
  trivial

/-- R2062D sends the exposed obligations to R2063D rather than asserting RH. -/
theorem r2062_one_hundred_first_step_does_not_claim_rh_formalization : True :=
  trivial

end R2062DLeanEndpointFirstConcreteObligationWitnessKernel
