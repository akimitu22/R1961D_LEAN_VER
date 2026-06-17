import R1981DLeanConcreteProofSkeletons.ProofSkeletonSlots

namespace R1981DLeanConcreteProofSkeletons

open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Endpoint estimate proof skeleton family. -/
structure EndpointEstimateProofSkeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  localReductionSkeleton : ConcreteEstimateProofSkeleton S
  scaleNormalizationSkeleton : ConcreteEstimateProofSkeleton S
  majorantSkeleton : ConcreteEstimateProofSkeleton S
  terminalSmallnessSkeleton : ConcreteEstimateProofSkeleton S
  endpointSkeletonsMatchStatementBank : Prop
  endpointSkeletonsMatchDependencyClosure : Prop
  endpointSkeletonsReadyForConcreteProofFile : Prop
  noEndpointProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget endpoint skeletons back to the statement bank. -/
def endpoint_skeletons_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_E : EndpointEstimateProofSkeletons S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Return the endpoint no-proof boundary proposition recorded by the skeleton layer. -/
def endpoint_skeletons_preserve_no_proof_boundary
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (E : EndpointEstimateProofSkeletons S) : Prop :=
  E.noEndpointProofCompletedHere

end R1981DLeanConcreteProofSkeletons
