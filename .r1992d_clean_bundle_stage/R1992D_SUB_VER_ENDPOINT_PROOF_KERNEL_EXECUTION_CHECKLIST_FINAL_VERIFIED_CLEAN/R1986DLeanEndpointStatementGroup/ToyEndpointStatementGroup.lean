import R1986DLeanEndpointStatementGroup.EndpointStatementGroupBridge

namespace R1986DLeanEndpointStatementGroup

open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Generic toy-style check: forgetting a statement group returns the endpoint block. -/
theorem toy_endpoint_statement_group_to_block_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) :
    endpoint_statement_group_to_block G = B := by
  rfl

/-- Generic toy-style check: forgetting a statement group returns the R1984D queue. -/
theorem toy_endpoint_statement_group_to_queue_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) :
    endpoint_statement_group_to_endpoint_queue G = Q := by
  rfl

/-- Generic toy-style check: the statement group inherits the actual-Li target. -/
theorem toy_endpoint_statement_group_to_actual_li_target_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    (G : MainAnchoredEndpointStatementGroup B) :
    A.actualLiTarget := by
  exact endpoint_statement_group_to_actual_li_target G

/-- Generic toy-style check: forgetting a dependency order returns the statement group. -/
theorem toy_endpoint_statement_dependency_order_to_group_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (O : EndpointStatementGroupDependencyOrder G) :
    endpoint_statement_dependency_order_to_group O = G := by
  rfl

end R1986DLeanEndpointStatementGroup
