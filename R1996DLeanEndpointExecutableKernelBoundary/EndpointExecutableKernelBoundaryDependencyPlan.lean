import R1996DLeanEndpointExecutableKernelBoundary.EndpointExecutableKernelBoundarySlots

namespace R1996DLeanEndpointExecutableKernelBoundary

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

/-- Dependency kinds for the endpoint executable kernel boundary. -/
inductive EndpointExecutableKernelBoundaryDependencyKind where
  | firstExecutableSkeletonBeforeKernelBoundary
  | executionInterfaceBeforeKernelBoundary
  | implementationLedgerBeforeKernelBoundary
  | executionChecklistBeforeKernelBoundary
  | localReductionBoundaryBeforeFiniteAbelBoundary
  | finiteAbelBoundaryBeforeNormalizationBoundary
  | normalizationBoundaryBeforeBoundaryWindowBoundary
  | boundaryWindowBoundaryBeforeEndpointMajorantBoundary
  | endpointMajorantBoundaryBeforeLaterKernelFile
  | auditExecutableKernelBoundary
  deriving DecidableEq, Repr

/-- A dependency item for the endpoint executable kernel boundary layer. -/
structure EndpointExecutableKernelBoundaryDependencyItem
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) where
  kind : EndpointExecutableKernelBoundaryDependencyKind
  dependencyIndex : Nat
  sourceBoundaryKind : EndpointExecutableKernelBoundaryKind
  targetBoundaryKind : EndpointExecutableKernelBoundaryKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  dependencyRecorded : Prop
  sourcePrecedesTarget : Prop
  doesNotDischargeEndpointEstimate : Prop
  doesNotExecuteKernel : Prop
  nonClaimBoundary : Prop

/-- Dependency plan for the endpoint executable kernel boundary. -/
structure EndpointExecutableKernelBoundaryDependencyPlan
    (BK : MainAnchoredEndpointExecutableKernelBoundary SK) where
  firstExecutableSkeletonBeforeKernelBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  executionInterfaceBeforeKernelBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  implementationLedgerBeforeKernelBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  executionChecklistBeforeKernelBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  localReductionBoundaryBeforeFiniteAbelBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  finiteAbelBoundaryBeforeNormalizationBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  normalizationBoundaryBeforeBoundaryWindowBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  boundaryWindowBoundaryBeforeEndpointMajorantBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  endpointMajorantBoundaryBeforeLaterKernelFile : EndpointExecutableKernelBoundaryDependencyItem BK
  auditExecutableKernelBoundary : EndpointExecutableKernelBoundaryDependencyItem BK
  dependencyPlanCarrier : Type
  executableKernelBoundaryCarrier : Type
  firstExecutableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  laterExecutableKernelFileCarrier : Type
  firstExecutableSkeletonPrecedesKernelBoundary : Prop
  executionInterfacePrecedesKernelBoundary : Prop
  implementationLedgerPrecedesKernelBoundary : Prop
  executionChecklistPrecedesKernelBoundary : Prop
  localReductionBoundaryPrecedesFiniteAbelBoundary : Prop
  finiteAbelBoundaryPrecedesNormalizationBoundary : Prop
  normalizationBoundaryPrecedesBoundaryWindowBoundary : Prop
  boundaryWindowBoundaryPrecedesEndpointMajorantBoundary : Prop
  endpointMajorantBoundaryPrecedesLaterKernelFile : Prop
  allExecutableKernelBoundaryDependenciesRecorded : Prop
  noExecutableKernelBoundaryDependencyDischargedHere : Prop
  noEndpointKernelImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the executable kernel boundary. -/
def endpoint_executable_kernel_boundary_dependency_plan_to_boundary
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (_PL : EndpointExecutableKernelBoundaryDependencyPlan BK) :
    MainAnchoredEndpointExecutableKernelBoundary SK :=
  BK

/-- Forget the dependency plan to the R1995D first executable skeleton. -/
def endpoint_executable_kernel_boundary_dependency_plan_to_first_executable_skeleton
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (PL : EndpointExecutableKernelBoundaryDependencyPlan BK) :
    MainAnchoredEndpointFirstExecutableSkeleton EI :=
  endpoint_executable_kernel_boundary_to_first_executable_skeleton
    (endpoint_executable_kernel_boundary_dependency_plan_to_boundary PL)

/-- Record that the dependency plan still does not discharge endpoint proof obligations. -/
def endpoint_executable_kernel_boundary_dependency_plan_records_no_endpoint_proof_here
    {BK : MainAnchoredEndpointExecutableKernelBoundary SK}
    (PL : EndpointExecutableKernelBoundaryDependencyPlan BK) : Prop :=
  PL.nonClaimBoundary ∧
  PL.noEndpointKernelImplementedHere ∧
  PL.noEndpointKernelExecutedHere ∧
  PL.noEndpointEstimateClosedHere ∧
  PL.noBoundaryErrorEstimateClosedHere ∧
  PL.noRemainderUniformityClosedHere ∧
  PL.noSignTransferClosedHere ∧
  PL.noExplicitFormulaClosedHere ∧
  PL.noRHClosedHere

end R1996DLeanEndpointExecutableKernelBoundary
