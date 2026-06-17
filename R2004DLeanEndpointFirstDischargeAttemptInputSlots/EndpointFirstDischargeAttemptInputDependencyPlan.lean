import R2004DLeanEndpointFirstDischargeAttemptInputSlots.EndpointFirstDischargeAttemptInputSlots

namespace R2004DLeanEndpointFirstDischargeAttemptInputSlots

open R2003DLeanEndpointFirstDischargeAttemptBoundary
open R2002DLeanEndpointFirstCertificatePayloadSlots
open R2001DLeanEndpointFirstDischargeCertificateInterface
open R2000DLeanEndpointConcreteDischargeObligationSlots
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
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    {CM : EndpointFirstDischargeCertificateDependencyMap CI}
    {PS : MainAnchoredEndpointFirstCertificatePayloadSlots CM}
    {PD : EndpointFirstCertificatePayloadDependencyPlan PS}
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}


/-- Dependency kinds for the attempt-input layer. -/
inductive EndpointFirstDischargeAttemptInputDependencyKind where
  | attemptAuditToInputSlots
  | attemptBoundaryToInputSlots
  | endpointEstimateInputToInputSlots
  | proofKernelInputToInputSlots
  | certificateInputToInputSlots
  | dischargeAuditInputToInputSlots
  | nonClaimBoundaryToInputSlots
  deriving DecidableEq, Repr

/-- A dependency edge into the attempt-input slots. -/
structure EndpointFirstDischargeAttemptInputDependencyItem
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    (IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA) where
  kind : EndpointFirstDischargeAttemptInputDependencyKind
  dependencyIndex : Nat
  sourceCarrier : Type
  targetCarrier : Type
  attachedToInputSlots : Prop
  preservesAttemptDependencyAudit : Prop
  preservesAttemptBoundary : Prop
  recordsDependencyOnly : Prop
  suppliesExecutionInputHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency plan for the attempt-input layer. -/
structure EndpointFirstDischargeAttemptInputDependencyPlan
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    (IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA) where
  attemptAuditToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  attemptBoundaryToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  endpointEstimateInputToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  proofKernelInputToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  certificateInputToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  dischargeAuditInputToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  nonClaimBoundaryToInputSlots : EndpointFirstDischargeAttemptInputDependencyItem IS
  inputDependencyPlanCarrier : Type
  inputSlotsCarrier : Type
  recordsInputDependencyPlan : Prop
  preservesAttemptDependencyAudit : Prop
  preservesAttemptBoundary : Prop
  noDischargeAttemptStartedHere : Prop
  noPayloadTermSuppliedHere : Prop
  noCertificateTermSuppliedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the dependency plan to the input slots. -/
def endpoint_first_discharge_attempt_input_dependency_plan_to_input_slots
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    (_IP : EndpointFirstDischargeAttemptInputDependencyPlan IS) :
    MainAnchoredEndpointFirstDischargeAttemptInputSlots AA :=
  IS

/-- Forget the dependency plan to the R2003D attempt boundary. -/
def endpoint_first_discharge_attempt_input_dependency_plan_to_attempt_boundary
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    (IP : EndpointFirstDischargeAttemptInputDependencyPlan IS) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_attempt_input_slots_to_attempt_boundary
    (endpoint_first_discharge_attempt_input_dependency_plan_to_input_slots IP)

/-- Record that the input dependency plan does not execute or discharge here. -/
def endpoint_first_discharge_attempt_input_dependency_plan_records_no_execution_here
    {AB : MainAnchoredEndpointFirstDischargeAttemptBoundary PD}
    {AA : EndpointFirstDischargeAttemptDependencyAudit AB}
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    (IP : EndpointFirstDischargeAttemptInputDependencyPlan IS) : Prop :=
  IP.nonClaimBoundary ∧
  IP.noDischargeAttemptStartedHere ∧
  IP.noPayloadTermSuppliedHere ∧
  IP.noCertificateTermSuppliedHere ∧
  IP.noConcreteEndpointLemmaProofSuppliedHere ∧
  IP.noConcreteEndpointLemmaDischargedHere ∧
  IP.noEndpointKernelExecutedHere ∧
  IP.noEndpointEstimateClosedHere ∧
  IP.noExplicitFormulaClosedHere ∧
  IP.noRHClosedHere

end R2004DLeanEndpointFirstDischargeAttemptInputSlots
