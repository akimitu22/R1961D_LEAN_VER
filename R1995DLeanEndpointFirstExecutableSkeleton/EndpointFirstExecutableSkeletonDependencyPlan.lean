import R1995DLeanEndpointFirstExecutableSkeleton.EndpointFirstExecutableSkeletonSlots

namespace R1995DLeanEndpointFirstExecutableSkeleton

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

/-- Dependency kinds for the first executable endpoint skeleton. -/
inductive EndpointFirstExecutableSkeletonDependencyKind where
  | executionInterfaceBeforeExecutableSkeleton
  | executionInterfaceDependencyPlanBeforeExecutableSkeleton
  | implementationLedgerBeforeExecutableSkeleton
  | executionChecklistBeforeExecutableSkeleton
  | localReductionSkeletonBeforeFiniteAbelSkeleton
  | finiteAbelSkeletonBeforeNormalizationSkeleton
  | normalizationSkeletonBeforeBoundaryWindowSkeleton
  | boundaryWindowSkeletonBeforeEndpointMajorantSkeleton
  | endpointMajorantSkeletonBeforeLaterConcreteProofFile
  | auditExecutableSkeletonBoundary
  deriving DecidableEq, Repr

/-- A dependency item for the first executable skeleton layer. -/
structure EndpointFirstExecutableSkeletonDependencyItem



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
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) where
  kind : EndpointFirstExecutableSkeletonDependencyKind
  dependencyIndex : Nat
  sourceSkeletonKind : EndpointFirstExecutableSkeletonKind
  targetSkeletonKind : EndpointFirstExecutableSkeletonKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  dependencyRecorded : Prop
  sourcePrecedesTarget : Prop
  doesNotDischargeEndpointEstimate : Prop
  doesNotExecuteKernel : Prop
  nonClaimBoundary : Prop

/-- Dependency plan for the first executable skeleton. -/
structure EndpointFirstExecutableSkeletonDependencyPlan



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
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) where
  executionInterfaceBeforeExecutableSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  executionInterfaceDependencyPlanBeforeExecutableSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  implementationLedgerBeforeExecutableSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  executionChecklistBeforeExecutableSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  localReductionSkeletonBeforeFiniteAbelSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  finiteAbelSkeletonBeforeNormalizationSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  normalizationSkeletonBeforeBoundaryWindowSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  boundaryWindowSkeletonBeforeEndpointMajorantSkeleton : EndpointFirstExecutableSkeletonDependencyItem SK
  endpointMajorantSkeletonBeforeLaterConcreteProofFile : EndpointFirstExecutableSkeletonDependencyItem SK
  auditExecutableSkeletonBoundary : EndpointFirstExecutableSkeletonDependencyItem SK
  dependencyPlanCarrier : Type
  executableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  executionInterfaceDependencyPlanCarrier : Type
  laterConcreteProofFileCarrier : Type
  executionInterfacePrecedesExecutableSkeleton : Prop
  executionInterfaceDependencyPlanPrecedesExecutableSkeleton : Prop
  implementationLedgerPrecedesExecutableSkeleton : Prop
  executionChecklistPrecedesExecutableSkeleton : Prop
  localReductionSkeletonPrecedesFiniteAbelSkeleton : Prop
  finiteAbelSkeletonPrecedesNormalizationSkeleton : Prop
  normalizationSkeletonPrecedesBoundaryWindowSkeleton : Prop
  boundaryWindowSkeletonPrecedesEndpointMajorantSkeleton : Prop
  endpointMajorantSkeletonPrecedesLaterConcreteProofFile : Prop
  allExecutableSkeletonDependenciesRecorded : Prop
  noExecutableSkeletonDependencyDischargedHere : Prop
  noEndpointKernelImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the first executable skeleton. -/
def endpoint_first_executable_skeleton_dependency_plan_to_skeleton



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
    (_P : EndpointFirstExecutableSkeletonDependencyPlan SK) :
    MainAnchoredEndpointFirstExecutableSkeleton EI :=
  SK

/-- Forget the dependency plan to the R1994D execution interface. -/
def endpoint_first_executable_skeleton_dependency_plan_to_execution_interface



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
    (P : EndpointFirstExecutableSkeletonDependencyPlan SK) :
    MainAnchoredEndpointProofKernelExecutionInterface DL :=
  endpoint_first_executable_skeleton_to_execution_interface
    (endpoint_first_executable_skeleton_dependency_plan_to_skeleton P)

/-- Record that the dependency plan still does not discharge endpoint proof obligations. -/
def endpoint_first_executable_skeleton_dependency_plan_records_no_endpoint_proof_here



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
    (P : EndpointFirstExecutableSkeletonDependencyPlan SK) : Prop :=
  P.nonClaimBoundary ∧
  P.noEndpointKernelImplementedHere ∧
  P.noEndpointKernelExecutedHere ∧
  P.noEndpointEstimateClosedHere ∧
  P.noBoundaryErrorEstimateClosedHere ∧
  P.noRemainderUniformityClosedHere ∧
  P.noSignTransferClosedHere ∧
  P.noExplicitFormulaClosedHere ∧
  P.noRHClosedHere

end R1995DLeanEndpointFirstExecutableSkeleton
