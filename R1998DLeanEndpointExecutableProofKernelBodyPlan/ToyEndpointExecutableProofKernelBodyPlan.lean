import R1998DLeanEndpointExecutableProofKernelBodyPlan.EndpointExecutableProofKernelBodyPlanBridge

namespace R1998DLeanEndpointExecutableProofKernelBodyPlan

open R1997DLeanEndpointExecutableProofKernelStub
open R1996DLeanEndpointExecutableKernelBoundary
open R1995DLeanEndpointFirstExecutableSkeleton
open R1994DLeanEndpointProofKernelExecutionInterface
open R1993DLeanEndpointProofKernelImplementationLedger
open R1992DLeanEndpointProofKernelExecutionChecklist
open R1991DLeanEndpointConcreteProofRouteBank
open R1990DLeanEndpointConcreteLemmaStatementBank
open R1989DLeanEndpointConcreteLemmaStubs
open R1988DLeanEndpointKernelAxiomBoundary
open R1987DLeanEndpointProofKernelInterface
open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

variable
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
    {L : EndpointFirstConcreteLemmaBoundary X}
    {SB : MainAnchoredEndpointConcreteLemmaStubBank L}
    {D : EndpointLemmaStubDependencyGrid SB}
    {ST : MainAnchoredEndpointConcreteLemmaStatementBank D}
    {DM : EndpointStatementDependencyMatrix ST}
    {RB : MainAnchoredEndpointConcreteProofRouteBank DM}
    {DP : EndpointProofRouteDependencyPlan RB}
    {C : MainAnchoredEndpointProofKernelExecutionChecklist DP}
    {DC : EndpointProofKernelExecutionDependencyChecklist C}
    {IL : MainAnchoredEndpointProofKernelImplementationLedger DC}
    {DL : EndpointKernelImplementationDependencyLedger IL}
    {EI : MainAnchoredEndpointProofKernelExecutionInterface DL}
    {SK : MainAnchoredEndpointFirstExecutableSkeleton EI}
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}


/-- Generic toy-style check: forgetting the body plan returns the stub. -/
theorem toy_endpoint_executable_proof_kernel_body_plan_to_stub_runs
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) :
    endpoint_executable_proof_kernel_body_plan_to_stub BP = KS := by
  rfl

/-- Generic toy-style check: the body plan inherits the actual-Li target. -/
theorem toy_endpoint_executable_proof_kernel_body_plan_to_actual_li_target_runs
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS) :
    A.actualLiTarget := by
  exact endpoint_executable_proof_kernel_body_plan_to_actual_li_target BP

/-- Generic toy-style check: forgetting the dependency grid returns the body plan. -/
theorem toy_endpoint_executable_proof_kernel_body_dependency_grid_to_plan_runs
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DG : EndpointExecutableProofKernelBodyDependencyGrid BP) :
    endpoint_executable_proof_kernel_body_dependency_grid_to_body_plan DG = BP := by
  rfl

end R1998DLeanEndpointExecutableProofKernelBodyPlan
