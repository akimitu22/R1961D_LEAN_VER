import R2000DLeanEndpointConcreteDischargeObligationSlots.EndpointConcreteDischargeObligationSlots

namespace R2000DLeanEndpointConcreteDischargeObligationSlots

open R1999DLeanEndpointFirstConcreteDischargeInterface
open R1998DLeanEndpointExecutableProofKernelBodyPlan
open R1997DLeanEndpointExecutableProofKernelStub
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
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}


/-- Dependency kinds among concrete-discharge obligation slots. -/
inductive EndpointConcreteDischargeObligationDependencyKind where
  | dischargeInterfaceBeforeObligationSlots
  | statementBankBeforeEndpointMajorantObligation
  | proofRouteBeforeProofKernelInvocationObligation
  | endpointMajorantBeforeBoundaryWindow
  | boundaryWindowBeforeRemainderUniformity
  | remainderUniformityBeforeSignTransfer
  | signTransferBeforeFirstConcreteDischarge
  | auditConcreteDischargeObligationDependencies
  deriving DecidableEq, Repr

/-- A dependency row among concrete-discharge obligation slots. -/
structure EndpointConcreteDischargeObligationDependencyItem
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    (OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD) where
  kind : EndpointConcreteDischargeObligationDependencyKind
  dependencyIndex : Nat
  sourceObligationKind : EndpointConcreteDischargeObligationKind
  targetObligationKind : EndpointConcreteDischargeObligationKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  obligationSlotCarrier : Type
  sourceAttachedToObligationSlot : Prop
  targetAttachedToObligationSlot : Prop
  recordsDependencyOnly : Prop
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency table for the concrete-discharge obligation slots. -/
structure EndpointConcreteDischargeObligationDependencyTable
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    (OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD) where
  dischargeInterfaceBeforeObligationSlots : EndpointConcreteDischargeObligationDependencyItem OS
  statementBankBeforeEndpointMajorantObligation : EndpointConcreteDischargeObligationDependencyItem OS
  proofRouteBeforeProofKernelInvocationObligation : EndpointConcreteDischargeObligationDependencyItem OS
  endpointMajorantBeforeBoundaryWindow : EndpointConcreteDischargeObligationDependencyItem OS
  boundaryWindowBeforeRemainderUniformity : EndpointConcreteDischargeObligationDependencyItem OS
  remainderUniformityBeforeSignTransfer : EndpointConcreteDischargeObligationDependencyItem OS
  signTransferBeforeFirstConcreteDischarge : EndpointConcreteDischargeObligationDependencyItem OS
  auditConcreteDischargeObligationDependencies : EndpointConcreteDischargeObligationDependencyItem OS
  dependencyTableCarrier : Type
  obligationSlotCarrier : Type
  attachedToConcreteDischargeObligationSlots : Prop
  attachedToFirstConcreteDischargeInterface : Prop
  allDependencyItemsRecorded : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency table to the concrete-discharge obligation slots. -/
def endpoint_concrete_discharge_obligation_dependency_table_to_obligation_slots
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    (_OD : EndpointConcreteDischargeObligationDependencyTable OS) :
    MainAnchoredEndpointConcreteDischargeObligationSlots DD :=
  OS

/-- Forget the dependency table to the first concrete-discharge interface. -/
def endpoint_concrete_discharge_obligation_dependency_table_to_discharge_interface
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    (OD : EndpointConcreteDischargeObligationDependencyTable OS) :
    MainAnchoredEndpointFirstConcreteDischargeInterface BP :=
  endpoint_concrete_discharge_obligation_slots_to_discharge_interface
    (endpoint_concrete_discharge_obligation_dependency_table_to_obligation_slots OD)

/-- Record that the dependency table also does not discharge the concrete endpoint lemma here. -/
def endpoint_concrete_discharge_obligation_dependency_table_records_no_discharge_here
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    (OD : EndpointConcreteDischargeObligationDependencyTable OS) : Prop :=
  OD.nonClaimBoundary ∧
  OD.noConcreteEndpointLemmaDischargedHere ∧
  OD.noEndpointKernelExecutedHere ∧
  OD.noEndpointEstimateClosedHere ∧
  OD.noExplicitFormulaClosedHere ∧
  OD.noRHClosedHere

end R2000DLeanEndpointConcreteDischargeObligationSlots
