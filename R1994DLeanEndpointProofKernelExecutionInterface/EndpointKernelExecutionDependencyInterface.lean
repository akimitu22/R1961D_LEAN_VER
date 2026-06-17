import R1994DLeanEndpointProofKernelExecutionInterface.EndpointKernelExecutionInterfaceSlots

namespace R1994DLeanEndpointProofKernelExecutionInterface

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

/-- Dependency kinds for the endpoint proof-kernel execution interface. -/
inductive EndpointKernelExecutionInterfaceDependencyKind where
  | implementationLedgerBeforeExecutionInterface
  | implementationDependencyLedgerBeforeExecutionInterface
  | executionDependencyChecklistBeforeExecutionInterface
  | executionChecklistBeforeExecutionInterface
  | localReductionBeforeFiniteAbelExecutionInterface
  | finiteAbelBeforeNormalizationExecutionInterface
  | normalizationBeforeBoundaryWindowExecutionInterface
  | boundaryWindowBeforeEndpointMajorantExecutionInterface
  | endpointMajorantBeforeLaterExecutableProofFile
  | auditExecutionBoundary
  deriving DecidableEq, Repr

/-- A dependency item for the endpoint execution-interface layer. -/
structure EndpointKernelExecutionInterfaceDependencyItem



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
    (EI : MainAnchoredEndpointProofKernelExecutionInterface DL) where
  kind : EndpointKernelExecutionInterfaceDependencyKind
  dependencyIndex : Nat
  sourceExecutionInterfaceCarrier : Type
  targetExecutionInterfaceCarrier : Type
  dependencyCarrier : Type
  attachedToExecutionInterface : Prop
  attachedToImplementationLedger : Prop
  attachedToImplementationDependencyLedger : Prop
  attachedToLaterExecutableProofFileBoundary : Prop
  implementedHere : Bool
  executedHere : Bool
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency interface for ordering later executable endpoint proof-kernel files. -/
structure EndpointKernelExecutionInterfaceDependencyPlan



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
    (EI : MainAnchoredEndpointProofKernelExecutionInterface DL) where
  implementationLedgerBeforeExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  implementationDependencyLedgerBeforeExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  executionDependencyChecklistBeforeExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  executionChecklistBeforeExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  localReductionBeforeFiniteAbelExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  finiteAbelBeforeNormalizationExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  normalizationBeforeBoundaryWindowExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  boundaryWindowBeforeEndpointMajorantExecutionInterface : EndpointKernelExecutionInterfaceDependencyItem EI
  endpointMajorantBeforeLaterExecutableProofFile : EndpointKernelExecutionInterfaceDependencyItem EI
  auditExecutionBoundary : EndpointKernelExecutionInterfaceDependencyItem EI
  dependencyPlanCarrier : Type
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  implementationDependencyLedgerCarrier : Type
  laterExecutableProofFileCarrier : Type
  implementationLedgerPrecedesExecutionInterface : Prop
  implementationDependencyLedgerPrecedesExecutionInterface : Prop
  executionDependencyChecklistPrecedesExecutionInterface : Prop
  executionChecklistPrecedesExecutionInterface : Prop
  localReductionPrecedesFiniteAbelExecutionInterface : Prop
  finiteAbelPrecedesNormalizationExecutionInterface : Prop
  normalizationPrecedesBoundaryWindowExecutionInterface : Prop
  boundaryWindowPrecedesEndpointMajorantExecutionInterface : Prop
  endpointMajorantPrecedesLaterExecutableProofFile : Prop
  allExecutionInterfaceDependenciesRecorded : Prop
  noExecutionInterfaceDependencyDischargedHere : Prop
  noEndpointKernelImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the execution interface. -/
def endpoint_kernel_execution_interface_dependency_plan_to_execution_interface



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
    (_P : EndpointKernelExecutionInterfaceDependencyPlan EI) :
    MainAnchoredEndpointProofKernelExecutionInterface DL :=
  EI

/-- Forget the dependency plan to the R1993D implementation ledger. -/
def endpoint_kernel_execution_interface_dependency_plan_to_implementation_ledger



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
    (P : EndpointKernelExecutionInterfaceDependencyPlan EI) :
    MainAnchoredEndpointProofKernelImplementationLedger DC :=
  endpoint_kernel_execution_interface_to_implementation_ledger
    (endpoint_kernel_execution_interface_dependency_plan_to_execution_interface P)

/-- Record that the dependency plan remains below endpoint proof-kernel execution. -/
def endpoint_kernel_execution_interface_dependency_plan_records_no_endpoint_proof_here



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
    (P : EndpointKernelExecutionInterfaceDependencyPlan EI) : Prop :=
  P.noEndpointKernelExecutedHere

end R1994DLeanEndpointProofKernelExecutionInterface
