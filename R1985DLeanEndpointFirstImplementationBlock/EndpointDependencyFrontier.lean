import R1985DLeanEndpointFirstImplementationBlock.EndpointBlockSlots

namespace R1985DLeanEndpointFirstImplementationBlock

open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Dependency classes for the endpoint first implementation block. -/
inductive EndpointFirstBlockDependencyKind where
  | finiteAbelComponentInput
  | normalizationInput
  | endpointMajorantInput
  | boundaryWindowInput
  | statementBankInput
  | proofSkeletonInput
  | manuscriptAnchorInput
  deriving DecidableEq, Repr

/-- A single endpoint dependency-frontier item. -/
structure EndpointFirstBlockDependencyItem
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) where
  kind : EndpointFirstBlockDependencyKind
  dependencyIndex : Nat
  dependencyCarrier : Type
  sourceLayerCarrier : Type
  targetProofFileCarrier : Type
  attachedToEndpointBlock : Prop
  attachedToMainManuscriptQueue : Prop
  mustBeClearedBeforeEndpointEstimateProof : Prop
  closedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Dependency frontier for the endpoint first implementation block.

This object is more concrete than the R1984D general queue frontier: it names
finite-Abel input, normalization input, endpoint-majorant input, boundary-window
input, statement-bank input, proof-skeleton input, and manuscript-anchor input
as the items that must later be discharged before an endpoint estimate proof can
be claimed.
-/
structure EndpointFirstBlockDependencyFrontier
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) where
  finiteAbelInput : EndpointFirstBlockDependencyItem B
  normalizationInput : EndpointFirstBlockDependencyItem B
  endpointMajorantInput : EndpointFirstBlockDependencyItem B
  boundaryWindowInput : EndpointFirstBlockDependencyItem B
  statementBankInput : EndpointFirstBlockDependencyItem B
  proofSkeletonInput : EndpointFirstBlockDependencyItem B
  manuscriptAnchorInput : EndpointFirstBlockDependencyItem B
  frontierCarrier : Type
  dependencyOrderCarrier : Type
  proofFileRoutingCarrier : Type
  allInputsRecorded : Prop
  endpointMajorantPrecedesEndpointProof : Prop
  boundaryWindowPrecedesEndpointProof : Prop
  statementBankPrecedesEndpointProof : Prop
  proofSkeletonPrecedesEndpointProof : Prop
  manuscriptAnchorPreserved : Prop
  noDependencyClosedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget an endpoint dependency frontier back to its endpoint block. -/
def endpoint_dependency_frontier_to_block
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (_F : EndpointFirstBlockDependencyFrontier B) :
    MainAnchoredEndpointFirstImplementationBlock Q :=
  B

/-- Return the recorded no-endpoint-proof boundary proposition for the frontier. -/
def endpoint_dependency_frontier_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (F : EndpointFirstBlockDependencyFrontier B) : Prop :=
  F.noEndpointEstimateClosedHere

end R1985DLeanEndpointFirstImplementationBlock
