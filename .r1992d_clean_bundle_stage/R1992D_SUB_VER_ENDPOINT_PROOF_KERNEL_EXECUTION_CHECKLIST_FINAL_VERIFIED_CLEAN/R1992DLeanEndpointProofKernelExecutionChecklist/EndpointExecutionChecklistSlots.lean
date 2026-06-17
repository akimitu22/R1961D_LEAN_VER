import R1991DLeanEndpointConcreteProofRouteBank

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

/-- Stages for the endpoint proof-kernel execution checklist. -/
inductive EndpointProofKernelExecutionChecklistStage where
  | readProofRouteDependencyPlan
  | checkLocalReductionKernelReadiness
  | checkFiniteAbelKernelReadiness
  | checkNormalizationKernelReadiness
  | checkBoundaryWindowKernelReadiness
  | checkEndpointMajorantKernelReadiness
  | checkLaterProofFileBoundary
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Kinds of checklist items before the first endpoint proof kernel is executed. -/
inductive EndpointProofKernelExecutionChecklistKind where
  | localReductionKernelReadiness
  | finiteAbelKernelReadiness
  | normalizationKernelReadiness
  | boundaryWindowKernelReadiness
  | endpointMajorantKernelReadiness
  | proofRouteDependencyReadiness
  | laterProofFileBoundaryReadiness
  | auditExecutionReadiness
  deriving DecidableEq, Repr

/-- A single readiness item in the endpoint proof-kernel execution checklist. -/
structure EndpointProofKernelExecutionChecklistItem

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
    (DP : EndpointProofRouteDependencyPlan RB) where
  kind : EndpointProofKernelExecutionChecklistKind
  itemIndex : Nat
  routeDependencyCarrier : Type
  proofKernelCarrier : Type
  executionCarrier : Type
  localLemmaCarrier : Type
  auditCarrier : Type
  attachedToProofRouteDependencyPlan : Prop
  attachedToProofRouteBank : Prop
  attachedToStatementDependencyMatrix : Prop
  checksLaterEndpointProofFileBoundary : Prop
  readyForLaterProofKernelExecution : Prop
  executedHere : Bool
  dischargedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
Execution checklist for the first endpoint proof-kernel family.

This layer converts the R1991D proof-route dependency plan into a checklist of
readiness conditions for later proof-kernel files.  It still does not execute
any proof kernel and does not discharge endpoint estimates.
-/
structure MainAnchoredEndpointProofKernelExecutionChecklist

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
    (DP : EndpointProofRouteDependencyPlan RB) where
  stage : EndpointProofKernelExecutionChecklistStage
  primaryChecklistKind : EndpointProofKernelExecutionChecklistKind
  localReductionKernelReadiness : EndpointProofKernelExecutionChecklistItem DP
  finiteAbelKernelReadiness : EndpointProofKernelExecutionChecklistItem DP
  normalizationKernelReadiness : EndpointProofKernelExecutionChecklistItem DP
  boundaryWindowKernelReadiness : EndpointProofKernelExecutionChecklistItem DP
  endpointMajorantKernelReadiness : EndpointProofKernelExecutionChecklistItem DP
  proofRouteDependencyReadiness : EndpointProofKernelExecutionChecklistItem DP
  laterProofFileBoundaryReadiness : EndpointProofKernelExecutionChecklistItem DP
  auditExecutionReadiness : EndpointProofKernelExecutionChecklistItem DP
  checklistCarrier : Type
  proofRouteDependencyPlanCarrier : Type
  proofRouteBankCarrier : Type
  statementDependencyMatrixCarrier : Type
  endpointKernelBoundaryCarrier : Type
  laterProofFileCarrier : Type
  attachedToR1991ProofRouteDependencyPlan : Prop
  attachedToR1991ProofRouteBank : Prop
  attachedToR1990StatementDependencyMatrix : Prop
  attachedToR1989ConcreteLemmaStubBank : Prop
  attachedToR1988EndpointKernelAxiomBoundary : Prop
  localReductionKernelReadyRecorded : Prop
  finiteAbelKernelReadyRecorded : Prop
  normalizationKernelReadyRecorded : Prop
  boundaryWindowKernelReadyRecorded : Prop
  endpointMajorantKernelReadyRecorded : Prop
  proofRouteDependencyReadyRecorded : Prop
  laterProofFileBoundaryReadyRecorded : Prop
  auditExecutionReadinessRecorded : Prop
  allEndpointKernelReadinessRecorded : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointStatementDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noBoundaryErrorEstimateClosedHere : Prop
  noRemainderUniformityClosedHere : Prop
  noSignTransferClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  implementedHere : Bool
  executedHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Forget the execution checklist to the R1991D proof-route dependency plan. -/
def endpoint_proof_kernel_execution_checklist_to_route_dependency_plan

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
    (_C : MainAnchoredEndpointProofKernelExecutionChecklist DP) :
    EndpointProofRouteDependencyPlan RB :=
  DP

/-- Forget the execution checklist to the R1991D proof-route bank. -/
def endpoint_proof_kernel_execution_checklist_to_route_bank

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
    (C : MainAnchoredEndpointProofKernelExecutionChecklist DP) :
    MainAnchoredEndpointConcreteProofRouteBank DM :=
  endpoint_proof_route_dependency_plan_to_route_bank
    (endpoint_proof_kernel_execution_checklist_to_route_dependency_plan C)

/-- Forget the execution checklist to the R1990D statement dependency matrix. -/
def endpoint_proof_kernel_execution_checklist_to_statement_dependency_matrix

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
    (C : MainAnchoredEndpointProofKernelExecutionChecklist DP) :
    EndpointStatementDependencyMatrix ST :=
  endpoint_proof_route_dependency_plan_to_statement_dependency_matrix
    (endpoint_proof_kernel_execution_checklist_to_route_dependency_plan C)

/-- Forget the execution checklist to the R1990D statement bank. -/
def endpoint_proof_kernel_execution_checklist_to_statement_bank

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
    (C : MainAnchoredEndpointProofKernelExecutionChecklist DP) :
    MainAnchoredEndpointConcreteLemmaStatementBank D :=
  endpoint_proof_route_dependency_plan_to_statement_bank
    (endpoint_proof_kernel_execution_checklist_to_route_dependency_plan C)

/-- Record that this checklist is below the endpoint proof-execution boundary. -/
def endpoint_proof_kernel_execution_checklist_records_no_endpoint_proof_here

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
    (C : MainAnchoredEndpointProofKernelExecutionChecklist DP) : Prop :=
  C.noEndpointEstimateClosedHere

end R1992DLeanEndpointProofKernelExecutionChecklist
