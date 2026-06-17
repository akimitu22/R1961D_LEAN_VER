import R1992DLeanEndpointProofKernelExecutionChecklist

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

/-- Stages for the endpoint proof-kernel implementation ledger. -/
inductive EndpointProofKernelImplementationLedgerStage where
  | readExecutionDependencyChecklist
  | recordKernelImplementationInputs
  | recordLocalReductionImplementationLedger
  | recordFiniteAbelImplementationLedger
  | recordNormalizationImplementationLedger
  | recordBoundaryWindowImplementationLedger
  | recordEndpointMajorantImplementationLedger
  | recordLaterProofFileImplementationBoundary
  | preserveNoProofBoundary
  deriving DecidableEq, Repr

/-- Kinds of implementation-ledger entries before any endpoint proof kernel is executed. -/
inductive EndpointProofKernelImplementationLedgerKind where
  | executionDependencyChecklistInput
  | localReductionImplementationInput
  | finiteAbelImplementationInput
  | normalizationImplementationInput
  | boundaryWindowImplementationInput
  | endpointMajorantImplementationInput
  | laterProofFileImplementationBoundary
  | auditImplementationLedger
  deriving DecidableEq, Repr

/-- A single ledger entry for the endpoint proof-kernel implementation plan. -/
structure EndpointProofKernelImplementationLedgerItem


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
    (DC : EndpointProofKernelExecutionDependencyChecklist C) where
  kind : EndpointProofKernelImplementationLedgerKind
  itemIndex : Nat
  executionChecklistCarrier : Type
  implementationInputCarrier : Type
  proofKernelCarrier : Type
  localLemmaCarrier : Type
  auditCarrier : Type
  attachedToExecutionDependencyChecklist : Prop
  attachedToExecutionChecklist : Prop
  attachedToProofRouteDependencyPlan : Prop
  attachedToLaterEndpointProofFileBoundary : Prop
  recordsImplementationInputOnly : Prop
  readyForLaterConcreteProofKernel : Prop
  implementedHere : Bool
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
Implementation ledger for the first endpoint proof-kernel family.

This layer records the inputs and dependency ledger needed by later concrete
endpoint proof-kernel files.  It is still a ledger layer: no endpoint proof
kernel is executed and no analytic estimate is discharged here.
-/
structure MainAnchoredEndpointProofKernelImplementationLedger


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
    (DC : EndpointProofKernelExecutionDependencyChecklist C) where
  stage : EndpointProofKernelImplementationLedgerStage
  primaryLedgerKind : EndpointProofKernelImplementationLedgerKind
  executionDependencyChecklistInput : EndpointProofKernelImplementationLedgerItem DC
  localReductionImplementationInput : EndpointProofKernelImplementationLedgerItem DC
  finiteAbelImplementationInput : EndpointProofKernelImplementationLedgerItem DC
  normalizationImplementationInput : EndpointProofKernelImplementationLedgerItem DC
  boundaryWindowImplementationInput : EndpointProofKernelImplementationLedgerItem DC
  endpointMajorantImplementationInput : EndpointProofKernelImplementationLedgerItem DC
  laterProofFileImplementationBoundary : EndpointProofKernelImplementationLedgerItem DC
  auditImplementationLedger : EndpointProofKernelImplementationLedgerItem DC
  implementationLedgerCarrier : Type
  executionDependencyChecklistCarrier : Type
  executionChecklistCarrier : Type
  proofRouteDependencyPlanCarrier : Type
  proofRouteBankCarrier : Type
  statementDependencyMatrixCarrier : Type
  laterEndpointProofFileCarrier : Type
  attachedToR1992ExecutionDependencyChecklist : Prop
  attachedToR1992ExecutionChecklist : Prop
  attachedToR1991ProofRouteDependencyPlan : Prop
  attachedToR1991ProofRouteBank : Prop
  attachedToR1990StatementDependencyMatrix : Prop
  localReductionImplementationInputRecorded : Prop
  finiteAbelImplementationInputRecorded : Prop
  normalizationImplementationInputRecorded : Prop
  boundaryWindowImplementationInputRecorded : Prop
  endpointMajorantImplementationInputRecorded : Prop
  laterProofFileImplementationBoundaryRecorded : Prop
  auditImplementationLedgerRecorded : Prop
  allEndpointImplementationLedgerInputsRecorded : Prop
  noEndpointKernelImplementedHere : Prop
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

/-- Forget the implementation ledger to the R1992D execution dependency checklist. -/
def endpoint_kernel_implementation_ledger_to_execution_dependency_checklist


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
    (_IL : MainAnchoredEndpointProofKernelImplementationLedger DC) :
    EndpointProofKernelExecutionDependencyChecklist C :=
  DC

/-- Forget the implementation ledger to the R1992D execution checklist. -/
def endpoint_kernel_implementation_ledger_to_execution_checklist


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
    (IL : MainAnchoredEndpointProofKernelImplementationLedger DC) :
    MainAnchoredEndpointProofKernelExecutionChecklist DP :=
  endpoint_proof_kernel_execution_dependency_checklist_to_execution_checklist
    (endpoint_kernel_implementation_ledger_to_execution_dependency_checklist IL)

/-- Forget the implementation ledger to the R1991D proof-route dependency plan. -/
def endpoint_kernel_implementation_ledger_to_route_dependency_plan


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
    (IL : MainAnchoredEndpointProofKernelImplementationLedger DC) :
    EndpointProofRouteDependencyPlan RB :=
  endpoint_proof_kernel_execution_dependency_checklist_to_route_dependency_plan
    (endpoint_kernel_implementation_ledger_to_execution_dependency_checklist IL)

/-- Forget the implementation ledger to the R1991D proof-route bank. -/
def endpoint_kernel_implementation_ledger_to_route_bank


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
    (IL : MainAnchoredEndpointProofKernelImplementationLedger DC) :
    MainAnchoredEndpointConcreteProofRouteBank DM :=
  endpoint_proof_route_dependency_plan_to_route_bank
    (endpoint_kernel_implementation_ledger_to_route_dependency_plan IL)

/-- Record that this ledger remains below endpoint proof-kernel implementation. -/
def endpoint_kernel_implementation_ledger_records_no_endpoint_proof_here


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
    (IL : MainAnchoredEndpointProofKernelImplementationLedger DC) : Prop :=
  IL.noEndpointEstimateClosedHere

end R1993DLeanEndpointProofKernelImplementationLedger
