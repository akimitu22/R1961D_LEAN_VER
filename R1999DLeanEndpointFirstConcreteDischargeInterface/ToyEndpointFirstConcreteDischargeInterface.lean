import R1999DLeanEndpointFirstConcreteDischargeInterface.EndpointFirstConcreteDischargeInterfaceBridge

namespace R1999DLeanEndpointFirstConcreteDischargeInterface

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
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}


/-- Generic toy-style check: forgetting the discharge interface returns the body plan. -/
theorem toy_endpoint_first_concrete_discharge_interface_to_body_plan_runs
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) :
    endpoint_first_concrete_discharge_interface_to_body_plan DI = BP := by
  rfl

/-- Generic toy-style check: the discharge interface inherits the actual-Li target. -/
theorem toy_endpoint_first_concrete_discharge_interface_to_actual_li_target_runs
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) :
    A.actualLiTarget := by
  exact endpoint_first_concrete_discharge_interface_to_actual_li_target DI

/-- Generic toy-style check: forgetting the dependency interface returns the discharge interface. -/
theorem toy_endpoint_first_concrete_discharge_dependency_interface_to_interface_runs
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    (DD : EndpointFirstConcreteDischargeDependencyInterface DI) :
    endpoint_first_concrete_discharge_dependency_interface_to_discharge_interface DD = DI := by
  rfl

end R1999DLeanEndpointFirstConcreteDischargeInterface
