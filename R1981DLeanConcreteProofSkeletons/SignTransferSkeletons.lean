import R1981DLeanConcreteProofSkeletons.ProofSkeletonSlots

namespace R1981DLeanConcreteProofSkeletons

open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Sign-transfer proof skeleton family. -/
structure SignTransferProofSkeletons
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  finiteIdentityInputSkeleton : ConcreteEstimateProofSkeleton S
  estimateInputSkeleton : ConcreteEstimateProofSkeleton S
  signComparisonSkeleton : ConcreteEstimateProofSkeleton S
  liTargetHandoffSkeleton : ConcreteEstimateProofSkeleton S
  signSkeletonsMatchStatementBank : Prop
  signSkeletonsMatchDependencyClosure : Prop
  signSkeletonsReadyForConcreteProofFile : Prop
  noSignTransferProofCompletedHere : Prop
  nonClaimBoundary : Prop

/-- Forget sign-transfer skeletons back to the statement bank. -/
def sign_transfer_skeletons_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (_G : SignTransferProofSkeletons S) :
    ConcreteEstimateStatementBank P :=
  S

/-- Return the sign-transfer no-proof boundary proposition recorded by the skeleton layer. -/
def sign_transfer_skeletons_preserve_no_proof_boundary
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (G : SignTransferProofSkeletons S) : Prop :=
  G.noSignTransferProofCompletedHere

end R1981DLeanConcreteProofSkeletons
