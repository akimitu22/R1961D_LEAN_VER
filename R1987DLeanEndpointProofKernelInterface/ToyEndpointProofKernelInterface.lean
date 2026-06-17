import R1987DLeanEndpointProofKernelInterface.EndpointProofKernelBridge

namespace R1987DLeanEndpointProofKernelInterface

open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Generic toy-style check: forgetting a proof-kernel interface returns the statement group. -/
theorem toy_endpoint_proof_kernel_interface_to_statement_group_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    endpoint_proof_kernel_interface_to_statement_group K = G := by
  rfl

/-- Generic toy-style check: forgetting a proof-kernel interface returns the R1984D queue. -/
theorem toy_endpoint_proof_kernel_interface_to_queue_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    endpoint_proof_kernel_to_endpoint_queue K = Q := by
  rfl

/-- Generic toy-style check: the proof-kernel interface inherits the actual-Li target. -/
theorem toy_endpoint_proof_kernel_interface_to_actual_li_target_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    A.actualLiTarget := by
  exact endpoint_proof_kernel_interface_to_actual_li_target K

/-- Generic toy-style check: forgetting a dependency interface returns the proof-kernel interface. -/
theorem toy_endpoint_kernel_dependency_interface_to_kernel_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (I : EndpointProofKernelDependencyInterface K) :
    endpoint_proof_kernel_dependency_interface_to_kernel I = K := by
  rfl

end R1987DLeanEndpointProofKernelInterface
