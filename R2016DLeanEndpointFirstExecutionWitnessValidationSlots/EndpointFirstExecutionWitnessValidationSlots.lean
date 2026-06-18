import R2015DLeanEndpointFirstExecutionWitnessPacketBoundary

namespace R2016DLeanEndpointFirstExecutionWitnessValidationSlots

open R2015DLeanEndpointFirstExecutionWitnessPacketBoundary
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


variable
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}

/-- Stages in the first execution-witness validation-slot layer. -/
inductive EndpointFirstExecutionWitnessValidationStage where
  | inheritWitnessPacketAudit
  | bindValidationHeader
  | bindWitnessFormatSlot
  | bindPayloadCompatibilitySlot
  | bindLaterExecutableAttemptShell
  | recordNoWitnessValidationExecution
  deriving DecidableEq, Repr

/-- Kinds of first execution-witness validation records. -/
inductive EndpointFirstExecutionWitnessValidationKind where
  | witnessPacketAuditInput
  | validationHeaderCarrier
  | witnessFormatSlot
  | payloadCompatibilitySlot
  | laterExecutableAttemptShell
  | nonClaimWitnessValidationBoundary
  deriving DecidableEq, Repr

/-- One execution-witness validation item, still before actual validation. -/
structure EndpointFirstExecutionWitnessValidationItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    (WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB) where
  kind : EndpointFirstExecutionWitnessValidationKind
  itemIndex : Nat
  witnessPacketAuditCarrier : Type
  witnessPacketBoundaryCarrier : Type
  validationHeaderCarrier : Type
  witnessFormatCarrier : Type
  payloadCompatibilityCarrier : Type
  laterAttemptShellCarrier : Type
  attachedToWitnessPacketAudit : Prop
  attachedToWitnessPacketBoundary : Prop
  recordsWitnessValidationSlotsOnly : Prop
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  materializesDryRunResultHere : Bool
  startsExecutableAttemptHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Execution-witness validation slots before real witness validation. -/
structure MainAnchoredEndpointFirstExecutionWitnessValidationSlots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    (WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB) where
  stage : EndpointFirstExecutionWitnessValidationStage
  primaryValidationKind : EndpointFirstExecutionWitnessValidationKind
  witnessPacketAuditInput : EndpointFirstExecutionWitnessValidationItem WD
  validationHeaderSlot : EndpointFirstExecutionWitnessValidationItem WD
  witnessFormatSlot : EndpointFirstExecutionWitnessValidationItem WD
  payloadCompatibilitySlot : EndpointFirstExecutionWitnessValidationItem WD
  laterExecutableAttemptShell : EndpointFirstExecutionWitnessValidationItem WD
  nonClaimWitnessValidationBoundary : EndpointFirstExecutionWitnessValidationItem WD
  validationSlotsCarrier : Type
  witnessPacketAuditCarrier : Type
  witnessPacketBoundaryCarrier : Type
  validationHeaderRecorded : Prop
  witnessFormatSlotRecorded : Prop
  payloadCompatibilitySlotRecorded : Prop
  laterExecutableAttemptShellRecorded : Prop
  allValidationItemsRecorded : Prop
  noWitnessValidatedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noDryRunResultMaterializedHere : Prop
  noExecutableAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget validation slots to the R2015D witness-packet dependency audit. -/
def endpoint_first_execution_witness_validation_slots_to_witness_packet_dependency_audit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    (_WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD) :
    EndpointFirstExecutionWitnessPacketDependencyAudit WB :=
  WD

/-- Forget validation slots to the R2015D witness-packet boundary. -/
def endpoint_first_execution_witness_validation_slots_to_witness_packet_boundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    (WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD) :
    MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA :=
  R2015DLeanEndpointFirstExecutionWitnessPacketBoundary.endpoint_first_execution_witness_packet_dependency_audit_to_boundary
    (endpoint_first_execution_witness_validation_slots_to_witness_packet_dependency_audit WV)

/-- Record that R2016D does not validate witnesses or execute here. -/
def endpoint_first_execution_witness_validation_slots_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    (WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD) : Prop :=
  WV.nonClaimBoundary ∧
  WV.noWitnessValidatedHere ∧
  WV.noExecutionWitnessSuppliedHere ∧
  WV.noDryRunResultMaterializedHere ∧
  WV.noExecutableAttemptStartedHere ∧
  WV.noEndpointKernelExecutedHere ∧
  WV.noConcreteEndpointLemmaDischargedHere ∧
  WV.noEndpointEstimateClosedHere ∧
  WV.noExplicitFormulaClosedHere ∧
  WV.noRHClosedHere ∧
  R2015DLeanEndpointFirstExecutionWitnessPacketBoundary.endpoint_first_execution_witness_packet_dependency_audit_records_no_execution_here
    (endpoint_first_execution_witness_validation_slots_to_witness_packet_dependency_audit WV)

end R2016DLeanEndpointFirstExecutionWitnessValidationSlots
