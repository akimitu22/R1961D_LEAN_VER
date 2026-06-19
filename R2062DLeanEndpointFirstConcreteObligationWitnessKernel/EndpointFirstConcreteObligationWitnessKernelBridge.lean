import R2062DLeanEndpointFirstConcreteObligationWitnessKernel.EndpointFirstConcreteObligationWitnessKernelDependencyAudit

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

/-- Bridge record for exporting the R2062D typed witness kernel into the next layer. -/
structure EndpointFirstConcreteObligationWitnessKernelBridge
    {A : AnalyticRealizationObligations}
    {AI : Type}
    {AJ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeDependencyBinder (A := A) AI}
    {AK : MainAnchoredEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary AJ}
    {AL : MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan AK}
    {AM : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureObligationMap AL}
    {AN : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateBoundary AM}
    {AO : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlots AN}
    {AP : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateSlotPopulationBoundary AO}
    (AQ : MainAnchoredEndpointFirstConcreteObligationLocalDischargeClosureCertificateWitnessInterface AP)
    (AR : MainAnchoredEndpointFirstConcreteObligationWitnessKernel AQ) where
  bridgeItemCount : Nat
  importsWitnessInterface : Prop
  exportsRequiredWitnessTermType : Type
  exportsEndpointEstimateInputType : Type
  exportsExplicitFormulaInputType : Type
  exportsTransferInputType : Type
  exportsLocalDischargeCertificateType : Type
  exportsCheckerKernelPredicate : Prop
  bridgePreservesTypedKernelObligations : Prop
  bridgeDoesNotClaimDischarge : Prop
  bridgeDoesNotClaimRH : Prop
  actualLiTarget : A.actualLiTarget

/-- Convert the R2062D witness kernel to an audit object. -/
def endpoint_first_concrete_obligation_witness_kernel_to_dependency_audit
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
    EndpointFirstConcreteObligationWitnessKernelDependencyAudit AQ AR :=
  { auditItemCount := 13
    attachedToWitnessInterface := True
    auditsRequiredWitnessTermType := AR.recordsWitnessTermAsLeanType
    auditsRequiredEndpointEstimateInput := AR.recordsEndpointEstimateInputAsLeanType
    auditsRequiredExplicitFormulaInput := AR.recordsExplicitFormulaInputAsLeanType
    auditsRequiredTransferInput := AR.recordsTransferInputAsLeanType
    auditsRequiredLocalDischargeCertificate := AR.recordsLocalDischargeCertificateAsLeanType
    auditsCheckerKernelPredicate := AR.recordsCheckerKernelAsLeanPredicate
    auditsDischargeDeferredToAttemptLayer := AR.leavesDischargeToAttemptLayer
    auditsNoEndpointEstimateClaimHere := True
    auditsNoExplicitFormulaClaimHere := True
    auditsNoTransferClaimHere := True
    auditsNoLocalDischargeClaimHere := True
    auditsNoRHClaimHere := True
    actualLiTarget := AR.actualLiTarget }

/-- Build the bridge object exported to the local-discharge attempt layer. -/
def endpoint_first_concrete_obligation_witness_kernel_to_bridge
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
    EndpointFirstConcreteObligationWitnessKernelBridge AQ AR :=
  { bridgeItemCount := 11
    importsWitnessInterface := True
    exportsRequiredWitnessTermType := AR.requiredWitnessTermType
    exportsEndpointEstimateInputType := AR.requiredEndpointEstimateInput
    exportsExplicitFormulaInputType := AR.requiredExplicitFormulaInput
    exportsTransferInputType := AR.requiredTransferInput
    exportsLocalDischargeCertificateType := AR.requiredLocalDischargeCertificate
    exportsCheckerKernelPredicate := AR.recordsCheckerKernelAsLeanPredicate
    bridgePreservesTypedKernelObligations := True
    bridgeDoesNotClaimDischarge := True
    bridgeDoesNotClaimRH := True
    actualLiTarget := AR.actualLiTarget }

/-- The R2062D bridge preserves the analytic target. -/
theorem endpoint_first_concrete_obligation_witness_kernel_bridge_to_actual_li_target
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
  (endpoint_first_concrete_obligation_witness_kernel_to_bridge AR).actualLiTarget

end R2062DLeanEndpointFirstConcreteObligationWitnessKernel
