import R1985DLeanEndpointFirstImplementationBlock.EndpointImplementationBridge
import R1985DLeanEndpointFirstImplementationBlock.EndpointDependencyFrontier

namespace R1986DLeanEndpointStatementGroup

open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Stages for the first endpoint statement group under the R1985D endpoint block. -/
inductive EndpointStatementGroupStage where
  | selectEndpointStatementGroup
  | bindFiniteAbelEndpointInput
  | bindNormalizationInput
  | bindEndpointMajorantInput
  | bindBoundaryWindowInput
  | registerStatementShape
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Kinds of statement-group entries in the first endpoint block. -/
inductive EndpointStatementGroupKind where
  | localEndpointReductionStatement
  | finiteAbelEndpointComponentStatement
  | normalizedEndpointMajorantStatement
  | boundaryWindowCompatibilityStatement
  | statementBankRoutingStatement
  | proofSkeletonRoutingStatement
  deriving DecidableEq, Repr

/--
The first endpoint statement group inside the R1985D endpoint implementation
block.

This layer is narrower than R1985D: it records the first endpoint statement
family and the carriers needed to route it to later concrete proof files.  It
still does not prove any endpoint estimate or RH claim.
-/
structure MainAnchoredEndpointStatementGroup
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) where
  stage : EndpointStatementGroupStage
  groupKind : EndpointStatementGroupKind
  endpointBlockCarrier : Type
  endpointStatementCarrier : Type
  finiteAbelStatementCarrier : Type
  normalizationStatementCarrier : Type
  endpointMajorantStatementCarrier : Type
  boundaryWindowStatementCarrier : Type
  statementBankRouteCarrier : Type
  proofSkeletonRouteCarrier : Type
  manuscriptAnchorCarrier : Type
  attachedToR1985EndpointBlock : Prop
  attachedToR1984Queue : Prop
  attachedToR1983MainManuscriptSpine : Prop
  attachedToR1982ExecutionPlan : Prop
  endpointStatementGroupSelected : Prop
  finiteAbelInputBound : Prop
  normalizationInputBound : Prop
  endpointMajorantInputBound : Prop
  boundaryWindowInputBound : Prop
  statementBankRouteRecorded : Prop
  proofSkeletonRouteRecorded : Prop
  endpointEstimateStatementPrepared : Prop
  endpointEstimateProofNotClosedHere : Prop
  implementedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Forget the endpoint statement group back to the R1985D endpoint block. -/
def endpoint_statement_group_to_block
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (_G : MainAnchoredEndpointStatementGroup B) :
    MainAnchoredEndpointFirstImplementationBlock Q :=
  B

/-- Forget the endpoint statement group back to the R1984D queue. -/
def endpoint_statement_group_to_queue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) :
    MainAnchoredFirstObligationImplementationQueue M :=
  R1985DLeanEndpointFirstImplementationBlock.endpoint_implementation_block_to_queue
    (endpoint_statement_group_to_block G)

/-- Forget the endpoint statement group to the main-manuscript anchor spine. -/
def endpoint_statement_group_to_anchor_spine
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) :
    MainManuscriptAnchorSpine E :=
  R1985DLeanEndpointFirstImplementationBlock.endpoint_implementation_block_to_anchor_spine
    (endpoint_statement_group_to_block G)

/-- Forget the endpoint statement group to the R1980D statement bank. -/
def endpoint_statement_group_to_statement_bank
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) :
    ConcreteEstimateStatementBank P :=
  R1985DLeanEndpointFirstImplementationBlock.endpoint_first_block_to_statement_bank
    (endpoint_statement_group_to_block G)

/-- Return the recorded no-endpoint-proof boundary proposition. -/
def endpoint_statement_group_records_no_endpoint_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) : Prop :=
  G.endpointEstimateProofNotClosedHere

/-- Return the recorded RH non-claim boundary proposition. -/
def endpoint_statement_group_records_no_rh_proof_here
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) : Prop :=
  G.nonClaimBoundary

end R1986DLeanEndpointStatementGroup
