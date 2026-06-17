import R1988DLeanEndpointKernelAxiomBoundary.EndpointKernelAxiomBridge

namespace R1988DLeanEndpointKernelAxiomBoundary

open R1987DLeanEndpointProofKernelInterface
open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- Generic toy-style check: forgetting the axiom boundary returns the proof-kernel interface. -/
theorem toy_endpoint_kernel_axiom_boundary_to_kernel_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) :
    endpoint_kernel_axiom_boundary_to_kernel X = K := by
  rfl

/-- Generic toy-style check: forgetting the axiom boundary returns the R1984D queue. -/
theorem toy_endpoint_kernel_axiom_boundary_to_queue_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) :
    endpoint_kernel_axiom_boundary_to_queue X = Q := by
  rfl

/-- Generic toy-style check: the axiom boundary inherits the actual-Li target. -/
theorem toy_endpoint_kernel_axiom_boundary_to_actual_li_target_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    (X : MainAnchoredEndpointKernelAxiomBoundary K) :
    A.actualLiTarget := by
  exact endpoint_kernel_axiom_boundary_to_actual_li_target X

/-- Generic toy-style check: forgetting a lemma boundary returns the axiom boundary. -/
theorem toy_endpoint_concrete_lemma_boundary_to_axiom_boundary_runs
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    {K : MainAnchoredEndpointProofKernelInterface G}
    {X : MainAnchoredEndpointKernelAxiomBoundary K}
    (L : EndpointFirstConcreteLemmaBoundary X) :
    endpoint_concrete_lemma_boundary_to_axiom_boundary L = X := by
  rfl

end R1988DLeanEndpointKernelAxiomBoundary
