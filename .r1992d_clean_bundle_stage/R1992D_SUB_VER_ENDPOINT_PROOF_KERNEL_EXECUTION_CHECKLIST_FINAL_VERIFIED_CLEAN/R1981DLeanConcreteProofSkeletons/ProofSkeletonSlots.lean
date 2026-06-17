import R1980DLeanConcreteEstimateStatements.StatementBankSlots
import R1980DLeanConcreteEstimateStatements.StatementDependencyBridge
import R1980DLeanConcreteEstimateStatements.ProofFileRouting

namespace R1981DLeanConcreteProofSkeletons

open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Family of proof skeletons that will later be replaced by concrete estimate proofs. -/
inductive ConcreteEstimateProofSkeletonKind where
  | endpointEstimateSkeleton
  | boundaryErrorEstimateSkeleton
  | remainderUniformitySkeleton
  | signTransferSkeleton
  | sharedAuxiliarySkeleton
  deriving DecidableEq, Repr

/-- A single proof skeleton for a named concrete estimate statement.

The carrier fields reserve the objects that a future concrete proof file must
supply.  The Boolean flags deliberately record that this layer does not complete
an endpoint, boundary-error, remainder, uniformity, explicit formula, or RH
proof. -/
structure ConcreteEstimateProofSkeleton
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    (S : ConcreteEstimateStatementBank P) where
  statementTag : ConcreteEstimateStatementTag
  skeletonKind : ConcreteEstimateProofSkeletonKind
  localHypothesisCarrier : Type
  normalizedStatementCarrier : Type
  proofOutlineCarrier : Type
  dependencyClosureCarrier : Type
  theoremNameReserved : Prop
  dependenciesAlreadyRegistered : Prop
  localReductionRecorded : Prop
  majorantTargetRecorded : Prop
  proofOutlineRecorded : Prop
  proofCompletedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderEstimateHere : Bool
  provesUniformityEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- A proof skeleton can explicitly record that it is not yet a completed proof. -/
theorem proof_skeleton_records_no_completed_proof
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (K : ConcreteEstimateProofSkeleton S)
    (h : K.proofCompletedHere = false) :
    K.proofCompletedHere = false := by
  exact h

/-- A proof skeleton can explicitly record that it is not an RH proof. -/
theorem proof_skeleton_records_no_rh_proof
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    (K : ConcreteEstimateProofSkeleton S)
    (h : K.provesRHHere = false) :
    K.provesRHHere = false := by
  exact h

end R1981DLeanConcreteProofSkeletons
