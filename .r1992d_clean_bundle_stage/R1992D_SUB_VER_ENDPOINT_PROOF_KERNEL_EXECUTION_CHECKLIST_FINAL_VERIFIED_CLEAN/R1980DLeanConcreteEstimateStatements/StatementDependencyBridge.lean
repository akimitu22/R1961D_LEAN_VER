import R1980DLeanConcreteEstimateStatements.StatementBankSlots

namespace R1980DLeanConcreteEstimateStatements

open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- A dependency edge between named concrete estimate statements. -/
structure ConcreteEstimateStatementDependencyEdge
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  sourceTag : ConcreteEstimateStatementTag
  targetTag : ConcreteEstimateStatementTag
  dependencyLabelCarrier : Type
  dependencyRegistered : Prop
  dependencyMatchesBlueprint : Prop
  dependencyMatchesReviewGapTable : Prop
  dependencyProvedHere : Bool
  nonClaimBoundary : Prop

/-- Closure table for statement dependencies. -/
structure ConcreteEstimateStatementDependencyClosure
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  statementBank : ConcreteEstimateStatementBank P
  endpointDependencyEdges : Type
  boundaryDependencyEdges : Type
  remainderUniformityDependencyEdges : Type
  signTransferDependencyEdges : Type
  crossFamilyDependencyEdges : Type
  dependencyEdgesAuditable : Prop
  dependencyClosureMatchesBlueprintOrder : Prop
  dependencyClosureMatchesReviewGapTable : Prop
  dependencyClosureReadyForProofScheduling : Prop
  noDependencyProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget dependency closure back to the statement bank. -/
def dependency_closure_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_D : ConcreteEstimateStatementDependencyClosure S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Dependency edges can record explicitly that no proof is completed here. -/
theorem dependency_edge_records_no_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : ConcreteEstimateStatementDependencyEdge S)
    (h : E.dependencyProvedHere = false) :
    E.dependencyProvedHere = false := by
  exact h

end R1980DLeanConcreteEstimateStatements
