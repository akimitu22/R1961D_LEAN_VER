import R1981DLeanConcreteProofSkeletons.ProofSkeletonSlots

namespace R1981DLeanConcreteProofSkeletons

open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Boundary-error estimate proof skeleton family. -/
structure BoundaryErrorEstimateProofSkeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  finiteBoundaryComparisonSkeleton : ConcreteEstimateProofSkeleton S
  boundaryErrorMajorantSkeleton : ConcreteEstimateProofSkeleton S
  skeletonCompatibilitySkeleton : ConcreteEstimateProofSkeleton S
  boundaryLimitHandoffSkeleton : ConcreteEstimateProofSkeleton S
  boundarySkeletonsMatchStatementBank : Prop
  boundarySkeletonsMatchDependencyClosure : Prop
  boundarySkeletonsReadyForConcreteProofFile : Prop
  noBoundaryErrorProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget boundary-error skeletons back to the statement bank. -/
def boundary_error_skeletons_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_B : BoundaryErrorEstimateProofSkeletons S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Return the boundary-error no-proof boundary proposition recorded by the skeleton layer. -/
def boundary_error_skeletons_preserve_no_proof_boundary
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (B : BoundaryErrorEstimateProofSkeletons S) : Prop :=
  B.noBoundaryErrorProofCompletedHere

end R1981DLeanConcreteProofSkeletons
