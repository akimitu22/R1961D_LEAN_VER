import R2017DLeanEndpointFirstExecutableAttemptShellBoundary

namespace R2018DLeanEndpointFirstExecutableAttemptInputSlots

open R2017DLeanEndpointFirstExecutableAttemptShellBoundary
open R2016DLeanEndpointFirstExecutionWitnessValidationSlots
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
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}

variable
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}

/-- Stages in the first executable-attempt input-slot layer. -/
inductive EndpointFirstExecutableAttemptInputStage where
  | inheritAttemptShellAudit
  | bindAttemptInputHeader
  | bindWitnessValidationReference
  | bindAttemptParameterSlot
  | bindAttemptPrestartSlot
  | bindLaterAttemptStartBoundary
  | recordNoAttemptStarted
  deriving DecidableEq, Repr

/-- Kinds of executable-attempt input records. -/
inductive EndpointFirstExecutableAttemptInputKind where
  | attemptShellAuditInput
  | attemptInputHeaderCarrier
  | witnessValidationReferenceCarrier
  | attemptParameterSlot
  | attemptPrestartSlot
  | laterAttemptStartBoundaryCarrier
  | nonClaimAttemptInputSlots
  deriving DecidableEq, Repr

/-- One executable-attempt input item, still before any executable attempt is started. -/
structure EndpointFirstExecutableAttemptInputItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    (SA : EndpointFirstExecutableAttemptShellDependencyAudit SH) where
  kind : EndpointFirstExecutableAttemptInputKind
  itemIndex : Nat
  attemptShellAuditCarrier : Type
  attemptShellBoundaryCarrier : Type
  attemptInputCarrier : Type
  witnessValidationReferenceCarrier : Type
  attemptParameterCarrier : Type
  attemptPrestartCarrier : Type
  laterAttemptStartCarrier : Type
  attachedToAttemptShellAudit : Prop
  attachedToAttemptShellBoundary : Prop
  recordsAttemptInputSlotsOnly : Prop
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First executable-attempt input slots, still before the executable attempt starts. -/
structure MainAnchoredEndpointFirstExecutableAttemptInputSlots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    (SA : EndpointFirstExecutableAttemptShellDependencyAudit SH) where
  stage : EndpointFirstExecutableAttemptInputStage
  primaryAttemptInputKind : EndpointFirstExecutableAttemptInputKind
  attemptShellAuditInput : EndpointFirstExecutableAttemptInputItem SA
  attemptInputHeaderSlot : EndpointFirstExecutableAttemptInputItem SA
  witnessValidationReferenceSlot : EndpointFirstExecutableAttemptInputItem SA
  attemptParameterSlot : EndpointFirstExecutableAttemptInputItem SA
  attemptPrestartSlot : EndpointFirstExecutableAttemptInputItem SA
  laterAttemptStartBoundarySlot : EndpointFirstExecutableAttemptInputItem SA
  nonClaimAttemptInputSlots : EndpointFirstExecutableAttemptInputItem SA
  attemptInputSlotsCarrier : Type
  attemptShellAuditCarrier : Type
  attemptShellBoundaryCarrier : Type
  attemptInputHeaderRecorded : Prop
  witnessValidationReferenceRecorded : Prop
  attemptParameterSlotRecorded : Prop
  attemptPrestartSlotRecorded : Prop
  laterAttemptStartBoundaryRecorded : Prop
  allAttemptInputItemsRecorded : Prop
  noExecutableAttemptStartedHere : Prop
  noWitnessValidatedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R2018D input slots to the R2017D executable-attempt shell dependency audit. -/
def endpoint_first_executable_attempt_input_slots_to_attempt_shell_dependency_audit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    (_AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA) :
    EndpointFirstExecutableAttemptShellDependencyAudit SH :=
  SA

/-- Forget R2018D input slots to the R2017D executable-attempt shell boundary. -/
def endpoint_first_executable_attempt_input_slots_to_attempt_shell_boundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    (AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA) :
    MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA :=
  R2017DLeanEndpointFirstExecutableAttemptShellBoundary.endpoint_first_executable_attempt_shell_dependency_audit_to_boundary
    (endpoint_first_executable_attempt_input_slots_to_attempt_shell_dependency_audit AI)

/-- Forget R2018D input slots to R2016D validation slots through R2017D. -/
def endpoint_first_executable_attempt_input_slots_to_witness_validation_slots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    (AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA) :
    MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD :=
  R2017DLeanEndpointFirstExecutableAttemptShellBoundary.endpoint_first_executable_attempt_shell_boundary_to_witness_validation_slots
    (endpoint_first_executable_attempt_input_slots_to_attempt_shell_boundary AI)

/-- Record that R2018D creates only input slots and does not start an attempt. -/
def endpoint_first_executable_attempt_input_slots_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    (AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA) : Prop :=
  AI.nonClaimBoundary ∧
  AI.noExecutableAttemptStartedHere ∧
  AI.noWitnessValidatedHere ∧
  AI.noExecutionWitnessSuppliedHere ∧
  AI.noEndpointKernelExecutedHere ∧
  AI.noConcreteEndpointLemmaDischargedHere ∧
  AI.noEndpointEstimateClosedHere ∧
  AI.noExplicitFormulaClosedHere ∧
  AI.noRHClosedHere ∧
  R2017DLeanEndpointFirstExecutableAttemptShellBoundary.endpoint_first_executable_attempt_shell_dependency_audit_records_no_execution_here
    (endpoint_first_executable_attempt_input_slots_to_attempt_shell_dependency_audit AI)

end R2018DLeanEndpointFirstExecutableAttemptInputSlots
