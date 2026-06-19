import R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyDependencyAudit

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

/-- Bridge record for exporting the R2064D witness-term supply. -/
structure EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyBridge
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
    (AT : MainAnchoredEndpointFirstConcreteObligationMinimalWitnessProofTermSupply AS) where
  bridgeItemCount : Nat
  exportsSuppliedWitnessTerm : AR.requiredWitnessTermType
  exportsWitnessTermObligationProof : AR.witnessTermObligation exportsSuppliedWitnessTerm
  exportsWitnessProofTermSuppliedHere : Bool
  exportsWitnessProofTermSuppliedHere_eq_true : exportsWitnessProofTermSuppliedHere = true
  exportsCheckerKernelRunsHere : Bool
  exportsCheckerKernelRunsHere_eq_false : exportsCheckerKernelRunsHere = false
  exportsLocalDischargeCompletedHere : Bool
  exportsLocalDischargeCompletedHere_eq_false : exportsLocalDischargeCompletedHere = false
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert the R2064D supply layer to an audit object. -/
def endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_dependency_audit
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
    EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyDependencyAudit AT :=
  { auditItemCount := 12
    auditsSuppliedWitnessTerm := True
    auditsWitnessTermObligationProof := True
    auditsWitnessIsNotBooleanReadinessFlag := True
    auditsRemainingEndpointEstimateObligation := AT.remainingEndpointEstimateObligation
    auditsRemainingExplicitFormulaObligation := AT.remainingExplicitFormulaObligation
    auditsRemainingTransferObligation := AT.remainingTransferObligation
    auditsRemainingLocalDischargeCertificateObligation := AT.remainingLocalDischargeCertificateObligation
    auditsRemainingCheckerExecutionObligation := AT.remainingCheckerKernelExecutionObligation
    auditsNoCheckerRunClaimHere := True
    auditsNoLocalDischargeClaimHere := True
    auditsNoRHClaimHere := True
    actualLiTarget := AT.actualLiTarget }

/-- Build the R2064D witness-supply bridge. -/
def endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_bridge
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
    EndpointFirstConcreteObligationMinimalWitnessProofTermSupplyBridge AT :=
  { bridgeItemCount := 10
    exportsSuppliedWitnessTerm := AT.suppliedWitnessTerm
    exportsWitnessTermObligationProof := AT.suppliedWitnessTermProof
    exportsWitnessProofTermSuppliedHere := AT.witnessProofTermSuppliedHere
    exportsWitnessProofTermSuppliedHere_eq_true := AT.witnessProofTermSuppliedHere_eq_true
    exportsCheckerKernelRunsHere := AT.checkerKernelRunsHere
    exportsCheckerKernelRunsHere_eq_false := AT.checkerKernelRunsHere_eq_false
    exportsLocalDischargeCompletedHere := AT.localDischargeCompletedHere
    exportsLocalDischargeCompletedHere_eq_false := AT.localDischargeCompletedHere_eq_false
    bridgeDoesNotClaimRH := True
    actualLiTarget := AT.actualLiTarget }

/-- The R2064D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_bridge_to_actual_li_target
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
  (endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_bridge AT).actualLiTarget

end R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply
