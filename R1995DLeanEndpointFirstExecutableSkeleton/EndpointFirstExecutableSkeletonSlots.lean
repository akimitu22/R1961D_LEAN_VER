import R1994DLeanEndpointProofKernelExecutionInterface

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

/-- Stages for the first executable endpoint proof-kernel skeleton. -/
inductive EndpointFirstExecutableSkeletonStage where
  | readExecutionInterface
  | readExecutionInterfaceDependencyPlan
  | exposeExecutableSkeletonInputs
  | exposeLocalReductionSkeleton
  | exposeFiniteAbelSkeleton
  | exposeNormalizationSkeleton
  | exposeBoundaryWindowSkeleton
  | exposeEndpointMajorantSkeleton
  | preserveNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Skeleton kinds for the first executable endpoint proof-kernel shell. -/
inductive EndpointFirstExecutableSkeletonKind where
  | executionInterfaceInput
  | executionDependencyPlanInput
  | executableInputSkeleton
  | localReductionExecutableSkeleton
  | finiteAbelExecutableSkeleton
  | normalizationExecutableSkeleton
  | boundaryWindowExecutableSkeleton
  | endpointMajorantExecutableSkeleton
  | laterConcreteExecutableProofFileBoundary
  | auditExecutableSkeletonBoundary
  deriving DecidableEq, Repr

/-- A single item in the first executable skeleton bank. -/
structure EndpointFirstExecutableSkeletonItem



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
  kind : EndpointFirstExecutableSkeletonKind
  itemIndex : Nat
  executionInterfaceCarrier : Type
  executionDependencyPlanCarrier : Type
  executableInputCarrier : Type
  localReductionSkeletonCarrier : Type
  finiteAbelSkeletonCarrier : Type
  normalizationSkeletonCarrier : Type
  boundaryWindowSkeletonCarrier : Type
  endpointMajorantSkeletonCarrier : Type
  laterConcreteProofFileCarrier : Type
  attachedToExecutionInterface : Prop
  attachedToExecutionInterfaceDependencyPlan : Prop
  attachedToImplementationLedger : Prop
  attachedToExecutionChecklist : Prop
  attachedToLaterConcreteProofFileBoundary : Prop
  recordsExecutableSkeletonOnly : Prop
  readyForLaterConcreteProofFile : Prop
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
First executable skeleton for the endpoint proof-kernel family.

This records the first executable proof-kernel skeleton interface.  It still
contains no endpoint proof-kernel execution and discharges no analytic estimate.
-/
structure MainAnchoredEndpointFirstExecutableSkeleton



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
  stage : EndpointFirstExecutableSkeletonStage
  primarySkeletonKind : EndpointFirstExecutableSkeletonKind
  executionInterfaceInput : EndpointFirstExecutableSkeletonItem EI
  executionDependencyPlanInput : EndpointFirstExecutableSkeletonItem EI
  executableInputSkeleton : EndpointFirstExecutableSkeletonItem EI
  localReductionExecutableSkeleton : EndpointFirstExecutableSkeletonItem EI
  finiteAbelExecutableSkeleton : EndpointFirstExecutableSkeletonItem EI
  normalizationExecutableSkeleton : EndpointFirstExecutableSkeletonItem EI
  boundaryWindowExecutableSkeleton : EndpointFirstExecutableSkeletonItem EI
  endpointMajorantExecutableSkeleton : EndpointFirstExecutableSkeletonItem EI
  laterConcreteExecutableProofFileBoundary : EndpointFirstExecutableSkeletonItem EI
  auditExecutableSkeletonBoundary : EndpointFirstExecutableSkeletonItem EI
  executableSkeletonCarrier : Type
  executionInterfaceCarrier : Type
  executionDependencyPlanCarrier : Type
  implementationLedgerCarrier : Type
  executionChecklistCarrier : Type
  proofRouteBankCarrier : Type
  laterConcreteProofFileCarrier : Type
  attachedToR1994ExecutionInterface : Prop
  attachedToR1994ExecutionInterfaceDependencyPlan : Prop
  attachedToR1993ImplementationLedger : Prop
  attachedToR1992ExecutionChecklist : Prop
  attachedToR1991ProofRouteBank : Prop
  localReductionExecutableSkeletonRecorded : Prop
  finiteAbelExecutableSkeletonRecorded : Prop
  normalizationExecutableSkeletonRecorded : Prop
  boundaryWindowExecutableSkeletonRecorded : Prop
  endpointMajorantExecutableSkeletonRecorded : Prop
  laterConcreteExecutableProofFileBoundaryRecorded : Prop
  auditExecutableSkeletonBoundaryRecorded : Prop
  allEndpointExecutableSkeletonItemsRecorded : Prop
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

/-- Forget the executable skeleton to the R1994D execution interface. -/
def endpoint_first_executable_skeleton_to_execution_interface



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
    (_SK : MainAnchoredEndpointFirstExecutableSkeleton EI) :
    MainAnchoredEndpointProofKernelExecutionInterface DL :=
  EI

/-- Forget the executable skeleton to the R1993D implementation ledger. -/
def endpoint_first_executable_skeleton_to_implementation_ledger



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
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) :
    MainAnchoredEndpointProofKernelImplementationLedger DC :=
  endpoint_kernel_execution_interface_to_implementation_ledger
    (endpoint_first_executable_skeleton_to_execution_interface SK)

/-- Forget the executable skeleton to the R1992D execution checklist. -/
def endpoint_first_executable_skeleton_to_execution_checklist



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
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) :
    MainAnchoredEndpointProofKernelExecutionChecklist DP :=
  endpoint_kernel_execution_interface_to_execution_checklist
    (endpoint_first_executable_skeleton_to_execution_interface SK)

/-- Record that the first executable skeleton still does not execute any proof kernel. -/
def endpoint_first_executable_skeleton_records_no_endpoint_proof_here



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
    (SK : MainAnchoredEndpointFirstExecutableSkeleton EI) : Prop :=
  SK.nonClaimBoundary ∧
  SK.noEndpointKernelImplementedHere ∧
  SK.noEndpointKernelExecutedHere ∧
  SK.noEndpointEstimateClosedHere ∧
  SK.noBoundaryErrorEstimateClosedHere ∧
  SK.noRemainderUniformityClosedHere ∧
  SK.noSignTransferClosedHere ∧
  SK.noExplicitFormulaClosedHere ∧
  SK.noRHClosedHere ∧
  SK.implementedHere = false ∧
  SK.executedHere = false ∧
  SK.provesEndpointEstimateHere = false ∧
  SK.provesBoundaryErrorEstimateHere = false ∧
  SK.provesRemainderUniformityHere = false ∧
  SK.provesSignTransferHere = false ∧
  SK.provesExplicitFormulaHere = false ∧
  SK.provesRHHere = false

end R1995DLeanEndpointFirstExecutableSkeleton
