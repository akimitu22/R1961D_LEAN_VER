import R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan.EndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlanBridge
import R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary.ToyEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary

namespace R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan

open R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder
open R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary
open R1962DLeanAnalyticRealization

private def mkFillingItem {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget)
    (name : String) (idx : Nat) (slot : String)
    (useEndpoint useExplicit useTransfer useFinite useKernel : Bool) :
    EndpointFirstConcreteObligationLocalDischargeSkeletonFillingItem A :=
  { fillingItemName := name
    fillingItemIndex := idx
    targetedSkeletonSlotName := slot
    requiredInputShape := Unit
    expectedOutputShape := Unit
    fillingPrecondition := True
    fillingPostcondition := True
    usesEndpointEstimateBinding := useEndpoint
    usesExplicitFormulaBinding := useExplicit
    usesTransferAssemblyBinding := useTransfer
    usesFiniteAbelReductionBinding := useFinite
    usesProofKernelConnectionBinding := useKernel
    hasConcreteProofTermHere := false
    closesSkeletonSlotHere := false
    actualLiTarget := h }

/-- Toy constructor for R2056D local discharge skeleton filling plan. -/
def toy_endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
      (R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary.toy_endpoint_first_concrete_obligation_local_discharge_proof_skeleton_boundary h) :=
  { fillingPlanStageCount := 7
    endpointEstimateFillingPlan := mkFillingItem h "endpoint-estimate-skeleton-filling-plan" 0 "endpoint-estimate-proof-skeleton-slot" true false false false false
    explicitFormulaFillingPlan := mkFillingItem h "explicit-formula-skeleton-filling-plan" 1 "explicit-formula-proof-skeleton-slot" false true false false false
    transferAssemblyFillingPlan := mkFillingItem h "transfer-assembly-skeleton-filling-plan" 2 "transfer-assembly-proof-skeleton-slot" true true true false false
    finiteAbelReductionFillingPlan := mkFillingItem h "finite-abel-reduction-skeleton-filling-plan" 3 "finite-abel-reduction-proof-skeleton-slot" false false true true false
    proofKernelConnectionFillingPlan := mkFillingItem h "proof-kernel-connection-skeleton-filling-plan" 4 "proof-kernel-connection-proof-skeleton-slot" true true true true true
    inheritedProofSkeletonBoundary := Unit
    recordsEndpointEstimateFillingPlan := True
    recordsExplicitFormulaFillingPlan := True
    recordsTransferAssemblyFillingPlan := True
    recordsFiniteAbelReductionFillingPlan := True
    recordsProofKernelConnectionFillingPlan := True
    allFillingPlansRemainOpen := True
    suppliesNoConcreteProofTerm := True
    respectsSkeletonBoundaryOpenStatus := True
    permitsFutureClosureObligationMap := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan_to_actual_li_target
    (toy_endpoint_first_concrete_obligation_local_discharge_skeleton_filling_plan h)

end R2056DLeanEndpointFirstConcreteObligationLocalDischargeSkeletonFillingPlan
