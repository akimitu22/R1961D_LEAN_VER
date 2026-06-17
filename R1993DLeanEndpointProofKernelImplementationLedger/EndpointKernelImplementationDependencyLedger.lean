import R1993DLeanEndpointProofKernelImplementationLedger.EndpointKernelImplementationLedgerSlots

namespace R1993DLeanEndpointProofKernelImplementationLedger

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

/-- Dependency kinds inside the endpoint proof-kernel implementation ledger. -/
inductive EndpointKernelImplementationDependencyKind where
  | executionDependencyChecklistInput
  | executionChecklistInput
  | routeDependencyPlanInput
  | localReductionBeforeFiniteAbelImplementation
  | finiteAbelBeforeNormalizationImplementation
  | normalizationBeforeBoundaryWindowImplementation
  | boundaryWindowBeforeEndpointMajorantImplementation
  | endpointMajorantBeforeLaterProofFileImplementation
  | auditImplementationBoundary
  deriving DecidableEq, Repr

/-- A dependency item for the endpoint proof-kernel implementation ledger. -/
structure EndpointKernelImplementationDependencyItem


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
    (IL : MainAnchoredEndpointProofKernelImplementationLedger DC) where
  kind : EndpointKernelImplementationDependencyKind
  dependencyIndex : Nat
  sourceImplementationCarrier : Type
  targetImplementationCarrier : Type
  dependencyCarrier : Type
  attachedToImplementationLedger : Prop
  attachedToExecutionDependencyChecklist : Prop
  attachedToExecutionChecklist : Prop
  attachedToLaterProofFileBoundary : Prop
  implementedHere : Bool
  executedHere : Bool
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency ledger for ordering later endpoint proof-kernel implementation files. -/
structure EndpointKernelImplementationDependencyLedger


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
    (IL : MainAnchoredEndpointProofKernelImplementationLedger DC) where
  executionDependencyChecklistInput : EndpointKernelImplementationDependencyItem IL
  executionChecklistInput : EndpointKernelImplementationDependencyItem IL
  routeDependencyPlanInput : EndpointKernelImplementationDependencyItem IL
  localReductionBeforeFiniteAbelImplementation : EndpointKernelImplementationDependencyItem IL
  finiteAbelBeforeNormalizationImplementation : EndpointKernelImplementationDependencyItem IL
  normalizationBeforeBoundaryWindowImplementation : EndpointKernelImplementationDependencyItem IL
  boundaryWindowBeforeEndpointMajorantImplementation : EndpointKernelImplementationDependencyItem IL
  endpointMajorantBeforeLaterProofFileImplementation : EndpointKernelImplementationDependencyItem IL
  auditImplementationBoundary : EndpointKernelImplementationDependencyItem IL
  dependencyLedgerCarrier : Type
  implementationLedgerCarrier : Type
  executionDependencyChecklistCarrier : Type
  executionChecklistCarrier : Type
  laterProofFileCarrier : Type
  executionDependencyChecklistPrecedesImplementationLedger : Prop
  executionChecklistPrecedesImplementationLedger : Prop
  routeDependencyPlanPrecedesImplementationLedger : Prop
  localReductionPrecedesFiniteAbelImplementation : Prop
  finiteAbelPrecedesNormalizationImplementation : Prop
  normalizationPrecedesBoundaryWindowImplementation : Prop
  boundaryWindowPrecedesEndpointMajorantImplementation : Prop
  endpointMajorantPrecedesLaterProofFileImplementation : Prop
  allImplementationLedgerDependenciesRecorded : Prop
  noImplementationDependencyDischargedHere : Prop
  noEndpointKernelImplementedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the implementation dependency ledger to the implementation ledger. -/
def endpoint_kernel_implementation_dependency_ledger_to_implementation_ledger


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
    (_DL : EndpointKernelImplementationDependencyLedger IL) :
    MainAnchoredEndpointProofKernelImplementationLedger DC :=
  IL

/-- Forget the implementation dependency ledger to the R1992D execution dependency checklist. -/
def endpoint_kernel_implementation_dependency_ledger_to_execution_dependency_checklist


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
    (DL : EndpointKernelImplementationDependencyLedger IL) :
    EndpointProofKernelExecutionDependencyChecklist C :=
  endpoint_kernel_implementation_ledger_to_execution_dependency_checklist
    (endpoint_kernel_implementation_dependency_ledger_to_implementation_ledger DL)

/-- Record that the dependency ledger remains below endpoint proof-kernel implementation. -/
def endpoint_kernel_implementation_dependency_ledger_records_no_endpoint_proof_here


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
    (DL : EndpointKernelImplementationDependencyLedger IL) : Prop :=
  DL.noEndpointEstimateClosedHere

end R1993DLeanEndpointProofKernelImplementationLedger
