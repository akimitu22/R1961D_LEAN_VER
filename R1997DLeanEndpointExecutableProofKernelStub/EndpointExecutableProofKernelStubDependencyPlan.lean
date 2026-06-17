import R1997DLeanEndpointExecutableProofKernelStub.EndpointExecutableProofKernelStubSlots

namespace R1997DLeanEndpointExecutableProofKernelStub

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

/-- Dependency kinds for the endpoint executable proof-kernel stub. -/
inductive EndpointExecutableProofKernelStubDependencyKind where
  | executableKernelBoundaryBeforeStub
  | firstExecutableSkeletonBeforeStub
  | executionInterfaceBeforeStub
  | implementationLedgerBeforeStub
  | localReductionStubBeforeFiniteAbelStub
  | finiteAbelStubBeforeNormalizationStub
  | normalizationStubBeforeBoundaryWindowStub
  | boundaryWindowStubBeforeEndpointMajorantStub
  | endpointMajorantStubBeforeLaterKernelBody
  | auditExecutableProofKernelStub
  deriving DecidableEq, Repr

/-- A dependency item for the endpoint executable proof-kernel stub. -/
structure EndpointExecutableProofKernelStubDependencyItem
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) where
  kind : EndpointExecutableProofKernelStubDependencyKind
  dependencyIndex : Nat
  sourceStubKind : EndpointExecutableProofKernelStubKind
  targetStubKind : EndpointExecutableProofKernelStubKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  dependencyRecorded : Prop
  sourcePrecedesTarget : Prop
  doesNotDischargeEndpointEstimate : Prop
  doesNotExecuteKernel : Prop
  nonClaimBoundary : Prop

/-- Dependency plan for the endpoint executable proof-kernel stub. -/
structure EndpointExecutableProofKernelStubDependencyPlan
    (KS : MainAnchoredEndpointExecutableProofKernelStub BK) where
  executableKernelBoundaryBeforeStub : EndpointExecutableProofKernelStubDependencyItem KS
  firstExecutableSkeletonBeforeStub : EndpointExecutableProofKernelStubDependencyItem KS
  executionInterfaceBeforeStub : EndpointExecutableProofKernelStubDependencyItem KS
  implementationLedgerBeforeStub : EndpointExecutableProofKernelStubDependencyItem KS
  localReductionStubBeforeFiniteAbelStub : EndpointExecutableProofKernelStubDependencyItem KS
  finiteAbelStubBeforeNormalizationStub : EndpointExecutableProofKernelStubDependencyItem KS
  normalizationStubBeforeBoundaryWindowStub : EndpointExecutableProofKernelStubDependencyItem KS
  boundaryWindowStubBeforeEndpointMajorantStub : EndpointExecutableProofKernelStubDependencyItem KS
  endpointMajorantStubBeforeLaterKernelBody : EndpointExecutableProofKernelStubDependencyItem KS
  auditExecutableProofKernelStub : EndpointExecutableProofKernelStubDependencyItem KS
  dependencyPlanCarrier : Type
  executableProofKernelStubCarrier : Type
  executableKernelBoundaryCarrier : Type
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  laterExecutableKernelBodyCarrier : Type
  executableKernelBoundaryPrecedesStub : Prop
  firstExecutableSkeletonPrecedesStub : Prop
  executionInterfacePrecedesStub : Prop
  implementationLedgerPrecedesStub : Prop
  localReductionStubPrecedesFiniteAbelStub : Prop
  finiteAbelStubPrecedesNormalizationStub : Prop
  normalizationStubPrecedesBoundaryWindowStub : Prop
  boundaryWindowStubPrecedesEndpointMajorantStub : Prop
  endpointMajorantStubPrecedesLaterKernelBody : Prop
  allExecutableProofKernelStubDependenciesRecorded : Prop
  noExecutableProofKernelStubDependencyDischargedHere : Prop
  noEndpointKernelImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the executable proof-kernel stub. -/
def endpoint_executable_proof_kernel_stub_dependency_plan_to_stub
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (_PL : EndpointExecutableProofKernelStubDependencyPlan KS) :
    MainAnchoredEndpointExecutableProofKernelStub BK :=
  KS

/-- Forget the dependency plan to the R1996D executable kernel boundary. -/
def endpoint_executable_proof_kernel_stub_dependency_plan_to_boundary
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (PL : EndpointExecutableProofKernelStubDependencyPlan KS) :
    MainAnchoredEndpointExecutableKernelBoundary SK :=
  endpoint_executable_proof_kernel_stub_to_executable_kernel_boundary
    (endpoint_executable_proof_kernel_stub_dependency_plan_to_stub PL)

/-- Record that the dependency plan still does not discharge endpoint proof obligations. -/
def endpoint_executable_proof_kernel_stub_dependency_plan_records_no_endpoint_proof_here
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    (PL : EndpointExecutableProofKernelStubDependencyPlan KS) : Prop :=
  PL.nonClaimBoundary ∧
  PL.noEndpointKernelImplementedHere ∧
  PL.noEndpointKernelExecutedHere ∧
  PL.noEndpointEstimateClosedHere ∧
  PL.noBoundaryErrorEstimateClosedHere ∧
  PL.noRemainderUniformityClosedHere ∧
  PL.noSignTransferClosedHere ∧
  PL.noExplicitFormulaClosedHere ∧
  PL.noRHClosedHere

end R1997DLeanEndpointExecutableProofKernelStub
