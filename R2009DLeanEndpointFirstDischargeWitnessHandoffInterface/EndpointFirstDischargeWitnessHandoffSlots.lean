import R2008DLeanEndpointFirstDischargeDryRunResultSlots

namespace R2009DLeanEndpointFirstDischargeWitnessHandoffInterface

open R2008DLeanEndpointFirstDischargeDryRunResultSlots
open R2007DLeanEndpointFirstDischargeDryRunTrace
open R2006DLeanEndpointFirstDischargeExecutionGate
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
    {GATE : MainAnchoredEndpointFirstDischargeExecutionGate PA}
    {GA : EndpointFirstDischargeExecutionGateDependencyAudit GATE}
    {TR : MainAnchoredEndpointFirstDischargeDryRunTrace GA}
    {TA : EndpointFirstDischargeDryRunTraceDependencyAudit TR}
variable
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}


/-- Stages in the first-discharge witness handoff layer. -/
inductive EndpointFirstDischargeWitnessHandoffStage where
  | inheritDryRunResultAudit
  | bindWitnessHandoffHeader
  | bindWitnessPayloadCarrier
  | bindCertificateHandoffCarrier
  | bindLaterDischargeRunBoundary
  | recordNoWitnessBoundary
  deriving DecidableEq, Repr

/-- Kinds of witness handoff records. -/
inductive EndpointFirstDischargeWitnessHandoffKind where
  | resultAuditInput
  | handoffHeaderCarrier
  | witnessPayloadCarrier
  | certificateHandoffCarrier
  | laterDischargeRunBoundary
  | nonClaimHandoffBoundary
  deriving DecidableEq, Repr

/-- A witness handoff item before any actual witness is supplied. -/
structure EndpointFirstDischargeWitnessHandoffItem
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    (RA : EndpointFirstDischargeDryRunResultDependencyAudit RS) where
  kind : EndpointFirstDischargeWitnessHandoffKind
  itemIndex : Nat
  resultAuditCarrier : Type
  resultSlotsCarrier : Type
  dryRunTraceCarrier : Type
  witnessHandoffHeaderCarrier : Type
  witnessPayloadCarrier : Type
  certificateHandoffCarrier : Type
  laterDischargeRunCarrier : Type
  attachedToResultAudit : Prop
  attachedToResultSlots : Prop
  recordsWitnessHandoffOnly : Prop
  suppliesEndpointWitnessHere : Bool
  runsWitnessHandoffHere : Bool
  startsDischargeAttemptHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First-discharge witness handoff interface, still before witness supply. -/
structure MainAnchoredEndpointFirstDischargeWitnessHandoffInterface
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    (RA : EndpointFirstDischargeDryRunResultDependencyAudit RS) where
  stage : EndpointFirstDischargeWitnessHandoffStage
  primaryHandoffKind : EndpointFirstDischargeWitnessHandoffKind
  resultAuditInput : EndpointFirstDischargeWitnessHandoffItem RA
  handoffHeaderCarrierItem : EndpointFirstDischargeWitnessHandoffItem RA
  witnessPayloadCarrierItem : EndpointFirstDischargeWitnessHandoffItem RA
  certificateHandoffCarrierItem : EndpointFirstDischargeWitnessHandoffItem RA
  laterDischargeRunBoundary : EndpointFirstDischargeWitnessHandoffItem RA
  nonClaimHandoffBoundary : EndpointFirstDischargeWitnessHandoffItem RA
  witnessHandoffCarrier : Type
  resultAuditCarrier : Type
  resultSlotsCarrier : Type
  dryRunTraceCarrier : Type
  handoffHeaderRecorded : Prop
  witnessPayloadCarrierRecorded : Prop
  certificateHandoffCarrierRecorded : Prop
  laterDischargeRunBoundaryRecorded : Prop
  allHandoffItemsRecorded : Prop
  noEndpointWitnessSuppliedHere : Prop
  noWitnessHandoffRunHere : Prop
  noDischargeAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget handoff interface to the R2008D result dependency audit. -/
def endpoint_first_discharge_witness_handoff_interface_to_result_dependency_audit
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    (_WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA) :
    EndpointFirstDischargeDryRunResultDependencyAudit RS :=
  RA

/-- Forget handoff interface to the R2008D result slots. -/
def endpoint_first_discharge_witness_handoff_interface_to_result_slots
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    (WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA) :
    MainAnchoredEndpointFirstDischargeDryRunResultSlots TA :=
  endpoint_first_discharge_dry_run_result_dependency_audit_to_slots
    (endpoint_first_discharge_witness_handoff_interface_to_result_dependency_audit WI)

/-- Forget handoff interface to the R2007D dry-run trace. -/
def endpoint_first_discharge_witness_handoff_interface_to_dry_run_trace
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    (WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA) :
    MainAnchoredEndpointFirstDischargeDryRunTrace GA :=
  endpoint_first_discharge_dry_run_result_slots_to_trace
    (endpoint_first_discharge_witness_handoff_interface_to_result_slots WI)

/-- Record that the witness handoff interface does not supply a witness here. -/
def endpoint_first_discharge_witness_handoff_interface_records_no_witness_here
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    (WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA) : Prop :=
  WI.nonClaimBoundary ∧
  WI.noEndpointWitnessSuppliedHere ∧
  WI.noWitnessHandoffRunHere ∧
  WI.noDischargeAttemptStartedHere ∧
  WI.noEndpointKernelExecutedHere ∧
  WI.noConcreteEndpointLemmaDischargedHere ∧
  WI.noEndpointEstimateClosedHere ∧
  WI.noExplicitFormulaClosedHere ∧
  WI.noRHClosedHere

end R2009DLeanEndpointFirstDischargeWitnessHandoffInterface
