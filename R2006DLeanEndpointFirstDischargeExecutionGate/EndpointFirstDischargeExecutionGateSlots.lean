import R2005DLeanEndpointFirstDischargeExecutionPrecheck

namespace R2006DLeanEndpointFirstDischargeExecutionGate

open R2005DLeanEndpointFirstDischargeExecutionPrecheck
open R2004DLeanEndpointFirstDischargeAttemptInputSlots
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
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}


/-- Stages in the first-discharge execution-gate layer. -/
inductive EndpointFirstDischargeExecutionGateStage where
  | inheritExecutionPrecheckAudit
  | bindGateInputs
  | bindGateCertificate
  | bindGateTraceCarrier
  | recordLaterRunBoundary
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of execution-gate records. -/
inductive EndpointFirstDischargeExecutionGateKind where
  | executionPrecheckAuditInput
  | gateInputPresence
  | gateCertificatePresence
  | gateTraceCarrier
  | laterRunGate
  | nonClaimGateBoundary
  deriving DecidableEq, Repr

/-- A gate item before any first-discharge execution run. -/
structure EndpointFirstDischargeExecutionGateItem
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    (PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC) where
  kind : EndpointFirstDischargeExecutionGateKind
  itemIndex : Nat
  precheckDependencyAuditCarrier : Type
  executionPrecheckCarrier : Type
  attemptBoundaryCarrier : Type
  gateInputCarrier : Type
  gateCertificateCarrier : Type
  gateTraceCarrier : Type
  laterRunGateCarrier : Type
  attachedToPrecheckAudit : Prop
  attachedToExecutionPrecheck : Prop
  attachedToAttemptBoundary : Prop
  recordsGateOnly : Prop
  opensExecutionGateHere : Bool
  startsDischargeAttemptHere : Bool
  runsExecutionPrecheckHere : Bool
  executesEndpointProofKernelHere : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First-discharge execution gate, still before actual execution. -/
structure MainAnchoredEndpointFirstDischargeExecutionGate
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    (PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC) where
  stage : EndpointFirstDischargeExecutionGateStage
  primaryGateKind : EndpointFirstDischargeExecutionGateKind
  precheckAuditInput : EndpointFirstDischargeExecutionGateItem PA
  gateInputPresence : EndpointFirstDischargeExecutionGateItem PA
  gateCertificatePresence : EndpointFirstDischargeExecutionGateItem PA
  gateTraceCarrierItem : EndpointFirstDischargeExecutionGateItem PA
  laterRunGate : EndpointFirstDischargeExecutionGateItem PA
  nonClaimGateBoundary : EndpointFirstDischargeExecutionGateItem PA
  gateCarrier : Type
  precheckAuditCarrier : Type
  executionPrecheckCarrier : Type
  attemptBoundaryCarrier : Type
  gateInputsRecorded : Prop
  gateCertificateRecorded : Prop
  gateTraceCarrierRecorded : Prop
  allGateItemsRecorded : Prop
  noGateOpenedHere : Prop
  noDischargeAttemptStartedHere : Prop
  noExecutionPrecheckRunHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the execution gate to the R2005D precheck dependency audit. -/
def endpoint_first_discharge_execution_gate_to_precheck_dependency_audit
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    (_EG : MainAnchoredEndpointFirstDischargeExecutionGate PA) :
    EndpointFirstDischargeExecutionPrecheckDependencyAudit PC :=
  PA

/-- Forget the execution gate to the R2005D precheck. -/
def endpoint_first_discharge_execution_gate_to_precheck
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    (EG : MainAnchoredEndpointFirstDischargeExecutionGate PA) :
    MainAnchoredEndpointFirstDischargeExecutionPrecheck IP :=
  endpoint_first_discharge_execution_precheck_dependency_audit_to_precheck
    (endpoint_first_discharge_execution_gate_to_precheck_dependency_audit EG)

/-- Forget the execution gate to the R2003D attempt boundary. -/
def endpoint_first_discharge_execution_gate_to_attempt_boundary
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    (EG : MainAnchoredEndpointFirstDischargeExecutionGate PA) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_execution_precheck_dependency_audit_to_attempt_boundary
    (endpoint_first_discharge_execution_gate_to_precheck_dependency_audit EG)

/-- Record that the execution gate does not execute or discharge here. -/
def endpoint_first_discharge_execution_gate_records_no_execution_here
    {PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP}
    {PA : EndpointFirstDischargeExecutionPrecheckDependencyAudit PC}
    (EG : MainAnchoredEndpointFirstDischargeExecutionGate PA) : Prop :=
  EG.nonClaimBoundary ∧
  EG.noGateOpenedHere ∧
  EG.noDischargeAttemptStartedHere ∧
  EG.noExecutionPrecheckRunHere ∧
  EG.noEndpointKernelExecutedHere ∧
  EG.noConcreteEndpointLemmaProofSuppliedHere ∧
  EG.noConcreteEndpointLemmaDischargedHere ∧
  EG.noEndpointEstimateClosedHere ∧
  EG.noExplicitFormulaClosedHere ∧
  EG.noRHClosedHere

end R2006DLeanEndpointFirstDischargeExecutionGate
