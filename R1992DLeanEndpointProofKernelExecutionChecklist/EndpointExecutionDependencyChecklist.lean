import R1992DLeanEndpointProofKernelExecutionChecklist.EndpointExecutionChecklistSlots

namespace R1992DLeanEndpointProofKernelExecutionChecklist

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

/-- Dependency kinds inside the endpoint proof-kernel execution checklist. -/
inductive EndpointProofKernelExecutionDependencyKind where
  | proofRouteDependencyPlanInput
  | proofRouteBankInput
  | statementDependencyMatrixInput
  | localReductionBeforeFiniteAbelKernel
  | finiteAbelBeforeNormalizationKernel
  | normalizationBeforeBoundaryWindowKernel
  | boundaryWindowBeforeEndpointMajorantKernel
  | endpointMajorantBeforeLaterProofFile
  | auditExecutionBoundary
  deriving DecidableEq, Repr

/-- A dependency item for endpoint proof-kernel execution readiness. -/
structure EndpointProofKernelExecutionDependencyItem

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
    (C : MainAnchoredEndpointProofKernelExecutionChecklist DP) where
  kind : EndpointProofKernelExecutionDependencyKind
  dependencyIndex : Nat
  sourceChecklistCarrier : Type
  targetChecklistCarrier : Type
  dependencyCarrier : Type
  attachedToExecutionChecklist : Prop
  attachedToProofRouteDependencyPlan : Prop
  attachedToLaterProofFileBoundary : Prop
  executedHere : Bool
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency checklist for ordering later endpoint proof-kernel execution. -/
structure EndpointProofKernelExecutionDependencyChecklist

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
    (C : MainAnchoredEndpointProofKernelExecutionChecklist DP) where
  proofRouteDependencyPlanInput : EndpointProofKernelExecutionDependencyItem C
  proofRouteBankInput : EndpointProofKernelExecutionDependencyItem C
  statementDependencyMatrixInput : EndpointProofKernelExecutionDependencyItem C
  localReductionBeforeFiniteAbelKernel : EndpointProofKernelExecutionDependencyItem C
  finiteAbelBeforeNormalizationKernel : EndpointProofKernelExecutionDependencyItem C
  normalizationBeforeBoundaryWindowKernel : EndpointProofKernelExecutionDependencyItem C
  boundaryWindowBeforeEndpointMajorantKernel : EndpointProofKernelExecutionDependencyItem C
  endpointMajorantBeforeLaterProofFile : EndpointProofKernelExecutionDependencyItem C
  auditExecutionBoundary : EndpointProofKernelExecutionDependencyItem C
  dependencyChecklistCarrier : Type
  executionChecklistCarrier : Type
  proofRouteDependencyPlanCarrier : Type
  laterProofFileCarrier : Type
  proofRouteDependencyPlanPrecedesExecutionChecklist : Prop
  proofRouteBankPrecedesExecutionChecklist : Prop
  statementDependencyMatrixPrecedesExecutionChecklist : Prop
  localReductionKernelPrecedesFiniteAbelKernel : Prop
  finiteAbelKernelPrecedesNormalizationKernel : Prop
  normalizationKernelPrecedesBoundaryWindowKernel : Prop
  boundaryWindowKernelPrecedesEndpointMajorantKernel : Prop
  endpointMajorantKernelPrecedesLaterProofFile : Prop
  allExecutionChecklistDependenciesRecorded : Prop
  noExecutionDependencyDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency checklist to the endpoint proof-kernel execution checklist. -/
def endpoint_proof_kernel_execution_dependency_checklist_to_execution_checklist

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
    (_DC : EndpointProofKernelExecutionDependencyChecklist C) :
    MainAnchoredEndpointProofKernelExecutionChecklist DP :=
  C

/-- Forget the dependency checklist to the R1991D proof-route dependency plan. -/
def endpoint_proof_kernel_execution_dependency_checklist_to_route_dependency_plan

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
    (DC : EndpointProofKernelExecutionDependencyChecklist C) :
    EndpointProofRouteDependencyPlan RB :=
  endpoint_proof_kernel_execution_checklist_to_route_dependency_plan
    (endpoint_proof_kernel_execution_dependency_checklist_to_execution_checklist DC)

/-- Record that the dependency checklist remains below endpoint proof execution. -/
def endpoint_proof_kernel_execution_dependency_checklist_records_no_endpoint_proof_here

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
    (DC : EndpointProofKernelExecutionDependencyChecklist C) : Prop :=
  DC.noEndpointEstimateClosedHere

end R1992DLeanEndpointProofKernelExecutionChecklist
