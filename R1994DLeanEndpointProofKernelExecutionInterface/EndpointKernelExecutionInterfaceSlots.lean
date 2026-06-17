import R1993DLeanEndpointProofKernelImplementationLedger

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

/-- Stages for the endpoint proof-kernel execution interface. -/
inductive EndpointProofKernelExecutionInterfaceStage where
  | readImplementationLedger
  | readImplementationDependencyLedger
  | exposeExecutionInputInterface
  | exposeLocalReductionInterface
  | exposeFiniteAbelInterface
  | exposeNormalizationInterface
  | exposeBoundaryWindowInterface
  | exposeEndpointMajorantInterface
  | preserveNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Interface kinds for the endpoint proof-kernel execution boundary. -/
inductive EndpointProofKernelExecutionInterfaceKind where
  | implementationLedgerInput
  | implementationDependencyLedgerInput
  | executionInputInterface
  | localReductionExecutionInterface
  | finiteAbelExecutionInterface
  | normalizationExecutionInterface
  | boundaryWindowExecutionInterface
  | endpointMajorantExecutionInterface
  | laterExecutableProofKernelBoundary
  | auditExecutionBoundary
  deriving DecidableEq, Repr

/-- A single execution-interface item. -/
structure EndpointProofKernelExecutionInterfaceItem



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
    (DL : EndpointKernelImplementationDependencyLedger IL) where
  kind : EndpointProofKernelExecutionInterfaceKind
  itemIndex : Nat
  implementationLedgerCarrier : Type
  implementationDependencyLedgerCarrier : Type
  executionInterfaceCarrier : Type
  localReductionInterfaceCarrier : Type
  finiteAbelInterfaceCarrier : Type
  normalizationInterfaceCarrier : Type
  boundaryWindowInterfaceCarrier : Type
  endpointMajorantInterfaceCarrier : Type
  laterExecutableProofFileCarrier : Type
  attachedToImplementationLedger : Prop
  attachedToImplementationDependencyLedger : Prop
  attachedToExecutionDependencyChecklist : Prop
  attachedToExecutionChecklist : Prop
  attachedToLaterExecutableProofFileBoundary : Prop
  recordsExecutionInterfaceOnly : Prop
  readyForLaterExecutableKernel : Prop
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
Execution interface for the endpoint proof-kernel family.

This layer exposes the interface needed by later executable proof-kernel files.
It does not execute the kernel and does not discharge any analytic estimate.
-/
structure MainAnchoredEndpointProofKernelExecutionInterface



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
    (DL : EndpointKernelImplementationDependencyLedger IL) where
  stage : EndpointProofKernelExecutionInterfaceStage
  primaryInterfaceKind : EndpointProofKernelExecutionInterfaceKind
  implementationLedgerInput : EndpointProofKernelExecutionInterfaceItem DL
  implementationDependencyLedgerInput : EndpointProofKernelExecutionInterfaceItem DL
  executionInputInterface : EndpointProofKernelExecutionInterfaceItem DL
  localReductionExecutionInterface : EndpointProofKernelExecutionInterfaceItem DL
  finiteAbelExecutionInterface : EndpointProofKernelExecutionInterfaceItem DL
  normalizationExecutionInterface : EndpointProofKernelExecutionInterfaceItem DL
  boundaryWindowExecutionInterface : EndpointProofKernelExecutionInterfaceItem DL
  endpointMajorantExecutionInterface : EndpointProofKernelExecutionInterfaceItem DL
  laterExecutableProofKernelBoundary : EndpointProofKernelExecutionInterfaceItem DL
  auditExecutionBoundary : EndpointProofKernelExecutionInterfaceItem DL
  executionInterfaceCarrier : Type
  implementationLedgerCarrier : Type
  implementationDependencyLedgerCarrier : Type
  executionDependencyChecklistCarrier : Type
  executionChecklistCarrier : Type
  proofRouteDependencyPlanCarrier : Type
  proofRouteBankCarrier : Type
  laterExecutableProofFileCarrier : Type
  attachedToR1993ImplementationLedger : Prop
  attachedToR1993ImplementationDependencyLedger : Prop
  attachedToR1992ExecutionDependencyChecklist : Prop
  attachedToR1992ExecutionChecklist : Prop
  attachedToR1991ProofRouteDependencyPlan : Prop
  localReductionExecutionInterfaceRecorded : Prop
  finiteAbelExecutionInterfaceRecorded : Prop
  normalizationExecutionInterfaceRecorded : Prop
  boundaryWindowExecutionInterfaceRecorded : Prop
  endpointMajorantExecutionInterfaceRecorded : Prop
  laterExecutableProofKernelBoundaryRecorded : Prop
  auditExecutionBoundaryRecorded : Prop
  allEndpointExecutionInterfacesRecorded : Prop
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

/-- Forget the execution interface to the R1993D implementation dependency ledger. -/
def endpoint_kernel_execution_interface_to_implementation_dependency_ledger



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
    (_EI : MainAnchoredEndpointProofKernelExecutionInterface DL) :
    EndpointKernelImplementationDependencyLedger IL :=
  DL

/-- Forget the execution interface to the R1993D implementation ledger. -/
def endpoint_kernel_execution_interface_to_implementation_ledger



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
    (EI : MainAnchoredEndpointProofKernelExecutionInterface DL) :
    MainAnchoredEndpointProofKernelImplementationLedger DC :=
  endpoint_kernel_implementation_dependency_ledger_to_implementation_ledger
    (endpoint_kernel_execution_interface_to_implementation_dependency_ledger EI)

/-- Forget the execution interface to the R1992D execution dependency checklist. -/
def endpoint_kernel_execution_interface_to_execution_dependency_checklist



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
    (EI : MainAnchoredEndpointProofKernelExecutionInterface DL) :
    EndpointProofKernelExecutionDependencyChecklist C :=
  endpoint_kernel_implementation_dependency_ledger_to_execution_dependency_checklist
    (endpoint_kernel_execution_interface_to_implementation_dependency_ledger EI)

/-- Forget the execution interface to the R1992D execution checklist. -/
def endpoint_kernel_execution_interface_to_execution_checklist



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
    (EI : MainAnchoredEndpointProofKernelExecutionInterface DL) :
    MainAnchoredEndpointProofKernelExecutionChecklist DP :=
  endpoint_proof_kernel_execution_dependency_checklist_to_execution_checklist
    (endpoint_kernel_execution_interface_to_execution_dependency_checklist EI)

/-- Record that the execution interface still does not execute any proof kernel. -/
def endpoint_kernel_execution_interface_records_no_endpoint_proof_here



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
    (EI : MainAnchoredEndpointProofKernelExecutionInterface DL) : Prop :=
  EI.noEndpointKernelExecutedHere

end R1994DLeanEndpointProofKernelExecutionInterface
