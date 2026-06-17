import R2004DLeanEndpointFirstDischargeAttemptInputSlots

namespace R2005DLeanEndpointFirstDischargeExecutionPrecheck

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
variable
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}


/-- Stages in the first-discharge execution-precheck layer. -/
inductive EndpointFirstDischargeExecutionPrecheckStage where
  | inheritInputDependencyPlan
  | verifyEndpointEstimateInputPresence
  | verifyProofKernelInputPresence
  | verifyCertificateInputPresence
  | verifyAuditInputPresence
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of execution precheck slots. -/
inductive EndpointFirstDischargeExecutionPrecheckKind where
  | inputDependencyPlanInput
  | endpointEstimateInputPresence
  | proofKernelInputPresence
  | certificateInputPresence
  | dischargeAuditInputPresence
  | laterExecutionGate
  | nonClaimPrecheckBoundary
  deriving DecidableEq, Repr

/-- A precheck item for a later first discharge execution. -/
structure EndpointFirstDischargeExecutionPrecheckItem
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    (IP : EndpointFirstDischargeAttemptInputDependencyPlan IS) where
  kind : EndpointFirstDischargeExecutionPrecheckKind
  itemIndex : Nat
  inputDependencyPlanCarrier : Type
  inputSlotsCarrier : Type
  endpointEstimateInputCarrier : Type
  proofKernelInputCarrier : Type
  certificateInputCarrier : Type
  auditInputCarrier : Type
  laterExecutionGateCarrier : Type
  attachedToInputDependencyPlan : Prop
  attachedToInputSlots : Prop
  recordsPrecheckOnly : Prop
  readyForLaterExecutionAttempt : Prop
  startsDischargeAttemptHere : Bool
  runsExecutionPrecheckHere : Bool
  executesEndpointProofKernelHere : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
First-discharge execution precheck.

This layer records input-presence prechecks before a later execution attempt.
It does not run the endpoint proof kernel or discharge a concrete lemma.
-/
structure MainAnchoredEndpointFirstDischargeExecutionPrecheck
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    (IP : EndpointFirstDischargeAttemptInputDependencyPlan IS) where
  stage : EndpointFirstDischargeExecutionPrecheckStage
  primaryPrecheckKind : EndpointFirstDischargeExecutionPrecheckKind
  inputDependencyPlanInput : EndpointFirstDischargeExecutionPrecheckItem IP
  endpointEstimateInputPresence : EndpointFirstDischargeExecutionPrecheckItem IP
  proofKernelInputPresence : EndpointFirstDischargeExecutionPrecheckItem IP
  certificateInputPresence : EndpointFirstDischargeExecutionPrecheckItem IP
  dischargeAuditInputPresence : EndpointFirstDischargeExecutionPrecheckItem IP
  laterExecutionGate : EndpointFirstDischargeExecutionPrecheckItem IP
  nonClaimPrecheckBoundary : EndpointFirstDischargeExecutionPrecheckItem IP
  precheckCarrier : Type
  inputDependencyPlanCarrier : Type
  inputSlotsCarrier : Type
  endpointEstimateInputPresenceRecorded : Prop
  proofKernelInputPresenceRecorded : Prop
  certificateInputPresenceRecorded : Prop
  auditInputPresenceRecorded : Prop
  allExecutionPrecheckItemsRecorded : Prop
  noDischargeAttemptStartedHere : Prop
  noExecutionPrecheckRunHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaProofSuppliedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the execution precheck to the R2004D input dependency plan. -/
def endpoint_first_discharge_execution_precheck_to_input_dependency_plan
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    (_PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP) :
    EndpointFirstDischargeAttemptInputDependencyPlan IS :=
  IP

/-- Forget the execution precheck to the R2004D input slots. -/
def endpoint_first_discharge_execution_precheck_to_input_slots
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    (PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP) :
    MainAnchoredEndpointFirstDischargeAttemptInputSlots AA :=
  endpoint_first_discharge_attempt_input_dependency_plan_to_input_slots
    (endpoint_first_discharge_execution_precheck_to_input_dependency_plan PC)

/-- Forget the execution precheck to the R2003D attempt boundary. -/
def endpoint_first_discharge_execution_precheck_to_attempt_boundary
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    (PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP) :
    MainAnchoredEndpointFirstDischargeAttemptBoundary PD :=
  endpoint_first_discharge_attempt_input_dependency_plan_to_attempt_boundary
    (endpoint_first_discharge_execution_precheck_to_input_dependency_plan PC)

/-- Record that the precheck layer does not execute or discharge here. -/
def endpoint_first_discharge_execution_precheck_records_no_execution_here
    {IS : MainAnchoredEndpointFirstDischargeAttemptInputSlots AA}
    {IP : EndpointFirstDischargeAttemptInputDependencyPlan IS}
    (PC : MainAnchoredEndpointFirstDischargeExecutionPrecheck IP) : Prop :=
  PC.nonClaimBoundary ∧
  PC.noDischargeAttemptStartedHere ∧
  PC.noExecutionPrecheckRunHere ∧
  PC.noEndpointKernelExecutedHere ∧
  PC.noConcreteEndpointLemmaProofSuppliedHere ∧
  PC.noConcreteEndpointLemmaDischargedHere ∧
  PC.noEndpointEstimateClosedHere ∧
  PC.noExplicitFormulaClosedHere ∧
  PC.noRHClosedHere

end R2005DLeanEndpointFirstDischargeExecutionPrecheck
