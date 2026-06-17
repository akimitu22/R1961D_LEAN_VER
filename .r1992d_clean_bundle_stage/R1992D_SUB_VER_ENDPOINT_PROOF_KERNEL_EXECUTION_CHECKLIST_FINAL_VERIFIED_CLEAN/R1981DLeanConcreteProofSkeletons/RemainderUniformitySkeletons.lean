import R1981DLeanConcreteProofSkeletons.ProofSkeletonSlots

namespace R1981DLeanConcreteProofSkeletons

open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Remainder and uniformity proof skeleton family. -/
structure RemainderUniformityProofSkeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  finiteRemainderSkeleton : ConcreteEstimateProofSkeleton S
  parameterWindowSkeleton : ConcreteEstimateProofSkeleton S
  uniformMajorantSkeleton : ConcreteEstimateProofSkeleton S
  jointLimitInterchangeSkeleton : ConcreteEstimateProofSkeleton S
  remainderUniformitySkeletonsMatchStatementBank : Prop
  remainderUniformitySkeletonsMatchDependencyClosure : Prop
  remainderUniformitySkeletonsReadyForConcreteProofFile : Prop
  noRemainderUniformityProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget remainder/uniformity skeletons back to the statement bank. -/
def remainder_uniformity_skeletons_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_R : RemainderUniformityProofSkeletons S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Return the remainder/uniformity no-proof boundary proposition recorded by the skeleton layer. -/
def remainder_uniformity_skeletons_preserve_no_proof_boundary
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (R : RemainderUniformityProofSkeletons S) : Prop :=
  R.noRemainderUniformityProofCompletedHere

end R1981DLeanConcreteProofSkeletons
