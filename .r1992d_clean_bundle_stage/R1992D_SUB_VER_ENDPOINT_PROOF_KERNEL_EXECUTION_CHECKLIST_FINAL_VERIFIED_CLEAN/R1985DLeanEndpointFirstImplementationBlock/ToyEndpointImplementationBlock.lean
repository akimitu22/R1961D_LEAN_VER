import R1985DLeanEndpointFirstImplementationBlock.EndpointImplementationBridge

namespace R1985DLeanEndpointFirstImplementationBlock

open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Generic toy-style check: forgetting an endpoint block returns the queue. -/
theorem toy_endpoint_first_block_to_queue_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) :
    endpoint_implementation_block_to_queue B = Q := by
  rfl

/-- Generic toy-style check: forgetting an endpoint block returns the anchor spine. -/
theorem toy_endpoint_first_block_to_anchor_spine_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) :
    endpoint_implementation_block_to_anchor_spine B = M := by
  rfl

/-- Generic toy-style check: the endpoint block inherits the actual-Li target. -/
theorem toy_endpoint_first_implementation_block_to_actual_li_target_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    (B : MainAnchoredEndpointFirstImplementationBlock Q) :
    A.actualLiTarget := by
  exact endpoint_first_implementation_block_to_actual_li_target B

/-- Generic toy-style check: the endpoint dependency frontier forgets to the block. -/
theorem toy_endpoint_dependency_frontier_to_block_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (F : EndpointFirstBlockDependencyFrontier B) :
    endpoint_dependency_frontier_to_block F = B := by
  rfl

end R1985DLeanEndpointFirstImplementationBlock
