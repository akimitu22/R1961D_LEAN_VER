import R2014DLeanEndpointFirstRehearsalResultSlots

namespace R2015DLeanEndpointFirstExecutionWitnessPacketBoundary

open R2014DLeanEndpointFirstRehearsalResultSlots
open R2013DLeanEndpointFirstDischargeExecutionRehearsalBoundary
open R2012DLeanEndpointFirstExecutionHandoffPayloadSlots
open R2011DLeanEndpointFirstDischargeExecutionHandoffBoundary
open R2010DLeanEndpointFirstWitnessValidationSlots
open R2009DLeanEndpointFirstDischargeWitnessHandoffInterface
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
    {RS : MainAnchoredEndpointFirstDischargeDryRunResultSlots TA}
    {RA : EndpointFirstDischargeDryRunResultDependencyAudit RS}
    {WI : MainAnchoredEndpointFirstDischargeWitnessHandoffInterface RA}
    {WA : EndpointFirstDischargeWitnessHandoffDependencyAudit WI}
    {VS : MainAnchoredEndpointFirstWitnessValidationSlots WA}
    {VA : EndpointFirstWitnessValidationDependencyAudit VS}
    {EB : MainAnchoredEndpointFirstDischargeExecutionHandoffBoundary VA}
    {EA : EndpointFirstDischargeExecutionHandoffDependencyAudit EB}
    {HS : MainAnchoredEndpointFirstExecutionHandoffPayloadSlots EA}
    {HA : EndpointFirstExecutionHandoffPayloadDependencyAudit HS}
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
variable
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}


/-- Stages in the first execution-witness packet boundary layer. -/
inductive EndpointFirstExecutionWitnessPacketStage where
  | inheritRehearsalResultAudit
  | bindPacketHeader
  | bindWitnessPacketSlot
  | bindPayloadPacketSlot
  | bindLaterExecutableAttemptBoundary
  | recordNoExecutionBoundary
  deriving DecidableEq, Repr

/-- Kinds of first execution-witness packet records. -/
inductive EndpointFirstExecutionWitnessPacketKind where
  | rehearsalResultAuditInput
  | packetHeaderCarrier
  | witnessPacketSlot
  | payloadPacketSlot
  | laterExecutableAttemptBoundary
  | nonClaimWitnessPacketBoundary
  deriving DecidableEq, Repr

/-- One execution-witness packet item, still before execution. -/
structure EndpointFirstExecutionWitnessPacketItem
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    (RRA : EndpointFirstRehearsalResultDependencyAudit RR) where
  kind : EndpointFirstExecutionWitnessPacketKind
  itemIndex : Nat
  rehearsalResultAuditCarrier : Type
  rehearsalResultSlotsCarrier : Type
  packetHeaderCarrier : Type
  witnessPacketCarrier : Type
  payloadPacketCarrier : Type
  laterExecutableAttemptCarrier : Type
  attachedToRehearsalResultAudit : Prop
  attachedToRehearsalResultSlots : Prop
  recordsWitnessPacketBoundaryOnly : Prop
  suppliesExecutionWitnessHere : Bool
  materializesDryRunResultHere : Bool
  startsExecutableAttemptHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Execution-witness packet boundary before a real executable attempt. -/
structure MainAnchoredEndpointFirstExecutionWitnessPacketBoundary
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    (RRA : EndpointFirstRehearsalResultDependencyAudit RR) where
  stage : EndpointFirstExecutionWitnessPacketStage
  primaryPacketKind : EndpointFirstExecutionWitnessPacketKind
  rehearsalResultAuditInput : EndpointFirstExecutionWitnessPacketItem RRA
  packetHeaderSlot : EndpointFirstExecutionWitnessPacketItem RRA
  witnessPacketSlot : EndpointFirstExecutionWitnessPacketItem RRA
  payloadPacketSlot : EndpointFirstExecutionWitnessPacketItem RRA
  laterExecutableAttemptBoundary : EndpointFirstExecutionWitnessPacketItem RRA
  nonClaimWitnessPacketBoundary : EndpointFirstExecutionWitnessPacketItem RRA
  witnessPacketBoundaryCarrier : Type
  rehearsalResultAuditCarrier : Type
  rehearsalResultSlotsCarrier : Type
  packetHeaderRecorded : Prop
  witnessPacketSlotRecorded : Prop
  payloadPacketSlotRecorded : Prop
  laterExecutableAttemptBoundaryRecorded : Prop
  allPacketItemsRecorded : Prop
  noExecutionWitnessSuppliedHere : Prop
  noDryRunResultMaterializedHere : Prop
  noExecutableAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget witness packet boundary to R2014D rehearsal-result dependency audit. -/
def endpoint_first_execution_witness_packet_boundary_to_rehearsal_result_dependency_audit
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    (_WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA) :
    EndpointFirstRehearsalResultDependencyAudit RR :=
  RRA

/-- Forget witness packet boundary to R2014D rehearsal-result slots. -/
def endpoint_first_execution_witness_packet_boundary_to_rehearsal_result_slots
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    (WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA) :
    MainAnchoredEndpointFirstRehearsalResultSlots REA :=
  endpoint_first_rehearsal_result_dependency_audit_to_slots
    (endpoint_first_execution_witness_packet_boundary_to_rehearsal_result_dependency_audit WB)

/-- Forget witness packet boundary to R2013D rehearsal boundary. -/
def endpoint_first_execution_witness_packet_boundary_to_rehearsal_boundary
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    (WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA) :
    MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA :=
  endpoint_first_rehearsal_result_slots_to_rehearsal_boundary
    (endpoint_first_execution_witness_packet_boundary_to_rehearsal_result_slots WB)

/-- Record that R2015D does not supply witnesses or execute here. -/
def endpoint_first_execution_witness_packet_boundary_records_no_execution_here
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    (WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA) : Prop :=
  WB.nonClaimBoundary ∧
  WB.noExecutionWitnessSuppliedHere ∧
  WB.noDryRunResultMaterializedHere ∧
  WB.noExecutableAttemptStartedHere ∧
  WB.noEndpointKernelExecutedHere ∧
  WB.noConcreteEndpointLemmaDischargedHere ∧
  WB.noEndpointEstimateClosedHere ∧
  WB.noExplicitFormulaClosedHere ∧
  WB.noRHClosedHere ∧
  endpoint_first_rehearsal_result_dependency_audit_records_no_execution_here
    (endpoint_first_execution_witness_packet_boundary_to_rehearsal_result_dependency_audit WB)

end R2015DLeanEndpointFirstExecutionWitnessPacketBoundary
