import R1984DLeanManuscriptObligationImplementationQueue.QueueBridge
import R1984DLeanManuscriptObligationImplementationQueue.FirstImplementationFrontier

namespace R1985DLeanEndpointFirstImplementationBlock

open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Endpoint implementation stages recorded before any analytic proof is closed. -/
inductive EndpointFirstImplementationStage where
  | selectEndpointQueueEntry
  | registerLocalReduction
  | registerMajorantFamily
  | registerBoundaryWindow
  | prepareEndpointProofFile
  | preserveNonClaimBoundary
  deriving DecidableEq, Repr

/-- Endpoint-side local reduction tags for the first implementation block. -/
inductive EndpointLocalReductionTag where
  | finiteAbelEndpointReduction
  | normalizedEndpointScale
  | endpointBoundaryWindow
  | endpointMajorantPreparation
  | laterConcreteEstimateFile
  deriving DecidableEq, Repr

/--
The first endpoint implementation block anchored in the R1984D queue.

This is the first layer that isolates the endpoint family as the next concrete
work unit.  It records carriers for the local reduction, majorant family,
normalization window, and later proof file.  It deliberately does not prove the
endpoint estimate, the boundary-error estimate, the remainder/uniformity
estimate, sign transfer, the explicit formula, or RH.
-/
structure MainAnchoredEndpointFirstImplementationBlock
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    (Q : MainAnchoredFirstObligationImplementationQueue M) where
  stage : EndpointFirstImplementationStage
  localReductionTag : EndpointLocalReductionTag
  endpointQueueEntryCarrier : Type
  endpointFrontierCarrier : Type
  finiteAbelComponentCarrier : Type
  normalizedEndpointCarrier : Type
  endpointMajorantCarrier : Type
  boundaryWindowCarrier : Type
  endpointProofFileCarrier : Type
  manuscriptAnchorCarrier : Type
  attachedToR1984Queue : Prop
  attachedToR1983MainManuscriptSpine : Prop
  attachedToR1982ExecutionPlan : Prop
  attachedToR1980StatementBank : Prop
  endpointQueueEntrySelected : Prop
  localReductionRegistered : Prop
  majorantFamilyRegistered : Prop
  boundaryWindowRegistered : Prop
  proofFileRouteRecorded : Prop
  endpointProofNotClosedHere : Prop
  implementedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Forget the endpoint block back to the R1984D queue. -/
def endpoint_first_block_to_queue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (_B : MainAnchoredEndpointFirstImplementationBlock Q) :
    MainAnchoredFirstObligationImplementationQueue M :=
  Q

/-- Forget the endpoint block through the queue to the R1983D anchor spine. -/
def endpoint_first_block_to_anchor_spine
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) :
    MainManuscriptAnchorSpine E :=
  R1984DLeanManuscriptObligationImplementationQueue.manuscript_obligation_queue_to_anchor_spine
    (endpoint_first_block_to_queue B)

/-- Forget the endpoint block through the queue to the R1982D execution plan. -/
def endpoint_first_block_to_execution_plan
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) :
    ConcreteProofObligationExecutionPlan S :=
  R1984DLeanManuscriptObligationImplementationQueue.manuscript_obligation_queue_to_execution_plan
    (endpoint_first_block_to_queue B)

/-- Forget the endpoint block through the queue to the R1980D statement bank. -/
def endpoint_first_block_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) :
    ConcreteEstimateStatementBank P :=
  R1984DLeanManuscriptObligationImplementationQueue.manuscript_obligation_queue_to_statement_bank
    (endpoint_first_block_to_queue B)

/-- Return the recorded endpoint non-proof boundary proposition. -/
def endpoint_first_block_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) : Prop :=
  B.endpointProofNotClosedHere

/-- Return the recorded RH non-claim boundary proposition. -/
def endpoint_first_block_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) : Prop :=
  B.nonClaimBoundary

end R1985DLeanEndpointFirstImplementationBlock
