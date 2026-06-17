import R1979DLeanConcreteEstimateBlueprint.ConcreteLemmaInterfaces

namespace R1979DLeanConcreteEstimateBlueprint

open R1978DLeanQuantitativeEstimateMatrix
open R1962DLeanAnalyticRealization

/-- Review-facing gap tag for the concrete estimate blueprint layer. -/
inductive ConcreteEstimateGapTag where
  | endpointLocalReduction
  | endpointMajorant
  | boundaryErrorMajorant
  | skeletonCompatibility
  | finiteRemainder
  | abelUniformityWindow
  | signTransfer
  | liTargetHandoff
  deriving DecidableEq, Repr

/-- Review gap entry: what a later proof file must fill. -/
structure ConcreteEstimateGapEntry where
  tag : ConcreteEstimateGapTag
  statementCarrier : Type
  dependencyCarrier : Type
  reviewerCanLocateStatement : Prop
  reviewerCanLocateDependencies : Prop
  filledByCurrentLayer : Bool
  nonClaimBoundary : Prop

/-- Review table attached to an R1979D blueprint plan. -/
structure ConcreteEstimateReviewGapTable
    {A : AnalyticRealizationObligations}
    (P : ConcreteEstimateBlueprintPlan A) where
  blueprintPlan : ConcreteEstimateBlueprintPlan A
  endpointLocalReductionEntry : ConcreteEstimateGapEntry
  endpointMajorantEntry : ConcreteEstimateGapEntry
  boundaryErrorEntry : ConcreteEstimateGapEntry
  skeletonCompatibilityEntry : ConcreteEstimateGapEntry
  finiteRemainderEntry : ConcreteEstimateGapEntry
  abelUniformityEntry : ConcreteEstimateGapEntry
  signTransferEntry : ConcreteEstimateGapEntry
  liTargetHandoffEntry : ConcreteEstimateGapEntry
  entriesMatchBlueprintFamilies : Prop
  entriesFeedLemmaInterfaces : Prop
  tableReadyForReviewerAudit : Prop
  noGapFilledByCurrentLayer : Prop
  nonClaimBoundary : Prop

/-- The review gap table forgets to its blueprint plan. -/
def review_gap_table_to_blueprint_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (_T : ConcreteEstimateReviewGapTable P) :
    ConcreteEstimateBlueprintPlan A :=
  P

/-- Gap entries can explicitly record that this layer does not fill them. -/
theorem review_gap_entry_records_not_filled_here
    (E : ConcreteEstimateGapEntry)
    (h : E.filledByCurrentLayer = false) :
    E.filledByCurrentLayer = false := by
  exact h

end R1979DLeanConcreteEstimateBlueprint
