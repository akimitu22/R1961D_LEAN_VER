import R1999DLeanEndpointFirstConcreteDischargeInterface.EndpointFirstConcreteDischargeInterfaceSlots

namespace R1999DLeanEndpointFirstConcreteDischargeInterface

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
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}


/-- Dependency kinds for the first concrete discharge interface. -/
inductive EndpointFirstConcreteDischargeDependencyKind where
  | bodyPlanBeforeDischargeInterface
  | executableStubBeforeDischargeInterface
  | statementBankBeforeDischargeInterface
  | proofRouteBankBeforeDischargeInterface
  | finiteAbelInputBeforeNormalizationInput
  | normalizationInputBeforeBoundaryWindowInput
  | boundaryWindowInputBeforeEndpointMajorantInput
  | endpointMajorantInputBeforeFirstDischargeSlot
  | auditFirstConcreteDischargeDependencyInterface
  deriving DecidableEq, Repr

/-- A dependency item in the first concrete discharge interface. -/
structure EndpointFirstConcreteDischargeDependencyItem
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) where
  kind : EndpointFirstConcreteDischargeDependencyKind
  dependencyIndex : Nat
  sourceInterfaceKind : EndpointFirstConcreteDischargeInterfaceKind
  targetInterfaceKind : EndpointFirstConcreteDischargeInterfaceKind
  dependencyCarrier : Type
  sourceCarrier : Type
  targetCarrier : Type
  dischargeInterfaceCarrier : Type
  sourceAttachedToInterface : Prop
  targetAttachedToInterface : Prop
  recordsDependencyOnly : Prop
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency interface for the later first concrete endpoint discharge. -/
structure EndpointFirstConcreteDischargeDependencyInterface
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    (DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP) where
  bodyPlanBeforeDischargeInterface : EndpointFirstConcreteDischargeDependencyItem DI
  executableStubBeforeDischargeInterface : EndpointFirstConcreteDischargeDependencyItem DI
  statementBankBeforeDischargeInterface : EndpointFirstConcreteDischargeDependencyItem DI
  proofRouteBankBeforeDischargeInterface : EndpointFirstConcreteDischargeDependencyItem DI
  finiteAbelInputBeforeNormalizationInput : EndpointFirstConcreteDischargeDependencyItem DI
  normalizationInputBeforeBoundaryWindowInput : EndpointFirstConcreteDischargeDependencyItem DI
  boundaryWindowInputBeforeEndpointMajorantInput : EndpointFirstConcreteDischargeDependencyItem DI
  endpointMajorantInputBeforeFirstDischargeSlot : EndpointFirstConcreteDischargeDependencyItem DI
  auditFirstConcreteDischargeDependencyInterface : EndpointFirstConcreteDischargeDependencyItem DI
  dependencyInterfaceCarrier : Type
  firstConcreteDischargeInterfaceCarrier : Type
  attachedToFirstConcreteDischargeInterface : Prop
  attachedToExecutableProofKernelBodyPlan : Prop
  allDependencyItemsRecorded : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency interface to the first concrete discharge interface. -/
def endpoint_first_concrete_discharge_dependency_interface_to_discharge_interface
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    (_DD : EndpointFirstConcreteDischargeDependencyInterface DI) :
    MainAnchoredEndpointFirstConcreteDischargeInterface BP :=
  DI

/-- Forget the dependency interface to the R1998D body plan. -/
def endpoint_first_concrete_discharge_dependency_interface_to_body_plan
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    (DD : EndpointFirstConcreteDischargeDependencyInterface DI) :
    R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS :=
  endpoint_first_concrete_discharge_interface_to_body_plan
    (endpoint_first_concrete_discharge_dependency_interface_to_discharge_interface DD)

/-- Record that the dependency interface does not discharge the endpoint lemma here. -/
def endpoint_first_concrete_discharge_dependency_interface_records_no_discharge_here
    {KS : MainAnchoredEndpointExecutableProofKernelStub BK}
    {BP : R1998DLeanEndpointExecutableProofKernelBodyPlan.MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    (DD : EndpointFirstConcreteDischargeDependencyInterface DI) : Prop :=
  DD.nonClaimBoundary ∧
  DD.noConcreteEndpointLemmaDischargedHere ∧
  DD.noEndpointKernelExecutedHere ∧
  DD.noEndpointEstimateClosedHere ∧
  DD.noExplicitFormulaClosedHere ∧
  DD.noRHClosedHere

end R1999DLeanEndpointFirstConcreteDischargeInterface
