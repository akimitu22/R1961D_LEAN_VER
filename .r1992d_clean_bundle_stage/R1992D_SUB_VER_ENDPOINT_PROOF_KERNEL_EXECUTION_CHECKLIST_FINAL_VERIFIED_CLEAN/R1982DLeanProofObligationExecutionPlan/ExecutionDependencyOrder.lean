import R1982DLeanProofObligationExecutionPlan.ExecutionPlanSlots

namespace R1982DLeanProofObligationExecutionPlan

open R1981DLeanConcreteProofSkeletons
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Directed dependency edge between scheduled execution phases. -/
structure ProofObligationExecutionDependencyEdge
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) where
  sourcePhase : ProofObligationExecutionPhase
  targetPhase : ProofObligationExecutionPhase
  sourceStatementTag : ConcreteEstimateStatementTag
  targetStatementTag : ConcreteEstimateStatementTag
  edgeIndex : Nat
  dependencyCarrier : Type
  importedLemmaCarrier : Type
  localLemmaCarrier : Type
  edgeNamed : Prop
  edgeMatchesStatementBank : Prop
  edgeMatchesSkeletonPlan : Prop
  edgeMatchesProofFileRouting : Prop
  edgeReadyForFutureProofFile : Prop
  dependencyProvedHere : Bool
  nonClaimBoundary : Prop

/--
Global execution order for the concrete proof-obligation plan.

This records the intended order in which future files should discharge the
endpoint, boundary-error, remainder/uniformity, and sign-transfer obligations.
-/
structure ConcreteProofObligationExecutionOrder
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteProofObligationExecutionPlan S) where
  executionPlan : ConcreteProofObligationExecutionPlan S
  endpointFirstStep : ConcreteProofObligationExecutionStep S
  boundaryErrorFirstStep : ConcreteProofObligationExecutionStep S
  remainderUniformityFirstStep : ConcreteProofObligationExecutionStep S
  signTransferFirstStep : ConcreteProofObligationExecutionStep S
  endpointDependencyEdges : Type
  boundaryErrorDependencyEdges : Type
  remainderUniformityDependencyEdges : Type
  signTransferDependencyEdges : Type
  crossFamilyDependencyEdges : Type
  endpointBeforeSignTransfer : Prop
  boundaryErrorBeforeSignTransfer : Prop
  remainderUniformityBeforeSignTransfer : Prop
  signTransferBeforeFinalAudit : Prop
  finalAuditClosesAllScheduledEdges : Prop
  orderMatchesExecutionPlan : Prop
  orderMatchesStatementDependencyClosure : Prop
  orderMatchesSkeletonNoProofBoundary : Prop
  orderReadyForConcreteProofFiles : Prop
  noOrderProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the execution order back to the execution plan. -/
def execution_order_to_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (_O : ConcreteProofObligationExecutionOrder E) :
    ConcreteProofObligationExecutionPlan S :=
  E

/-- Forget an execution dependency edge back to its ambient execution plan. -/
def execution_dependency_edge_to_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (_D : ProofObligationExecutionDependencyEdge E) :
    ConcreteProofObligationExecutionPlan S :=
  E

/-- Dependency edges can record explicitly that no proof is completed in R1982D. -/
theorem execution_dependency_edge_records_no_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    (D : ProofObligationExecutionDependencyEdge E)
    (h : D.dependencyProvedHere = false) :
    D.dependencyProvedHere = false := by
  exact h

end R1982DLeanProofObligationExecutionPlan
