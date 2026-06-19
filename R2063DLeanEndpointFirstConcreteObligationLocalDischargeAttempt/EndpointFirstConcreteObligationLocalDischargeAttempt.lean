import R2062DLeanEndpointFirstConcreteObligationWitnessKernel

namespace R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
open R2057DLeanEndpointFirstConcreteObligationLocalDischargeClosureObligationMap
open R2058DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary
open R2059DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots
open R2060DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary
open R2061DLeanEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface
open R2062DLeanEndpointFirstConcreteObligationWitnessKernel
open R1962DLeanAnalyticRealization

/-- R2063D records the first actual local-discharge attempt status. -/
inductive EndpointFirstConcreteObligationLocalDischargeAttemptStatus where
  | notStarted
  | blockedByExposedObligations
  | checkerKernelReadyForSuppliedTerms
  | conditionallyDischarged
  deriving DecidableEq, Repr

/-- R2063D exposes the kind of obstruction rather than hiding it behind a new interface. -/
inductive EndpointFirstConcreteObligationLocalDischargeObstruction where
  | missingWitnessProofTerm
  | missingEndpointEstimate
  | missingExplicitFormula
  | missingTransferAssembly
  | missingLocalDischargeCertificate
  | checkerKernelNotExecuted
  | localDischargeNotClosed
  deriving DecidableEq, Repr

/-- A named unresolved obligation created by the first concrete local-discharge attempt. -/
structure EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation
    (A : AnalyticRealizationObligations) where
  unresolvedObligationName : String
  obstruction : EndpointFirstConcreteObligationLocalDischargeObstruction
  unresolvedObligationStatement : Prop
  requiredObjectType : Type
  actualLiTarget : A.actualLiTarget

/-- R2063D is the first layer that attempts to use the typed witness kernel.

It does not claim that the discharge has succeeded.  Instead, it states the exact
conditions under which the local discharge would follow and records the missing
obligations as Lean propositions. -/
structure MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt
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
  attemptStageCount : Nat
  inheritedWitnessKernel : Type
  attemptStatus : EndpointFirstConcreteObligationLocalDischargeAttemptStatus
  attemptedWitnessTermType : Type
  attemptedEndpointEstimateInputType : Type
  attemptedExplicitFormulaInputType : Type
  attemptedTransferInputType : Type
  attemptedLocalDischargeCertificateType : Type
  attemptedWitnessTermMatchesRequired : Prop
  attemptedEndpointEstimateInputMatchesRequired : Prop
  attemptedExplicitFormulaInputMatchesRequired : Prop
  attemptedTransferInputMatchesRequired : Prop
  attemptedLocalDischargeCertificateMatchesRequired : Prop
  witnessTermObligationDischarged : Prop
  endpointEstimateObligationDischarged : Prop
  explicitFormulaObligationDischarged : Prop
  transferObligationDischarged : Prop
  localDischargeCertificateObligationDischarged : Prop
  checkerKernelObligationDischarged : Prop
  localDischargeAttemptStatement : Prop
  localDischargeAttemptDerivesFromSuppliedObligations :
    witnessTermObligationDischarged ->
    endpointEstimateObligationDischarged ->
    explicitFormulaObligationDischarged ->
    transferObligationDischarged ->
    localDischargeCertificateObligationDischarged ->
    checkerKernelObligationDischarged ->
    localDischargeAttemptStatement
  missingWitnessProofTermObligation : EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A
  missingEndpointEstimateObligation : EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A
  missingExplicitFormulaObligation : EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A
  missingTransferObligation : EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A
  missingLocalDischargeCertificateObligation : EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A
  missingCheckerKernelExecutionObligation : EndpointFirstConcreteObligationLocalDischargeUnresolvedObligation A
  unresolvedObligationCount : Nat
  exposesMissingWitnessProofTerm : Prop
  exposesMissingEndpointEstimate : Prop
  exposesMissingExplicitFormula : Prop
  exposesMissingTransferAssembly : Prop
  exposesMissingLocalDischargeCertificate : Prop
  exposesMissingCheckerKernelExecution : Prop
  checkerKernelRunsHere : Bool
  localDischargeCompletedHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesTransferHere : Bool
  provesRHHere : Bool
  claimsFullRHFormalization : Bool
  actualLiTarget : A.actualLiTarget

/-- R2063D preserves the analytic target while exposing the attempt obligations. -/
theorem endpoint_first_concrete_obligation_local_discharge_attempt_to_actual_li_target
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR) : A.actualLiTarget :=
  AS.actualLiTarget

/-- If the typed witness, estimate, formula, transfer, certificate, and checker obligations are supplied,
R2063D exposes the conditional local-discharge statement. -/
theorem endpoint_first_concrete_obligation_local_discharge_attempt_if_all_required_obligations_supplied
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
    (AS : MainAnchoredEndpointFirstConcreteObligationLocalDischargeAttempt AR)
    (hWitness : AS.witnessTermObligationDischarged)
    (hEndpoint : AS.endpointEstimateObligationDischarged)
    (hFormula : AS.explicitFormulaObligationDischarged)
    (hTransfer : AS.transferObligationDischarged)
    (hCertificate : AS.localDischargeCertificateObligationDischarged)
    (hChecker : AS.checkerKernelObligationDischarged) : AS.localDischargeAttemptStatement :=
  AS.localDischargeAttemptDerivesFromSuppliedObligations
    hWitness hEndpoint hFormula hTransfer hCertificate hChecker

/-- R2063D exposes unresolved obligations instead of adding another preparation interface. -/
theorem r2063_one_hundred_second_step_exposes_local_discharge_attempt_obligations : True :=
  trivial

/-- R2063D does not claim the RH formalization. -/
theorem r2063_one_hundred_second_step_does_not_claim_rh_formalization : True :=
  trivial

end R2063DLeanEndpointFirstConcreteObligationLocalDischargeAttempt
