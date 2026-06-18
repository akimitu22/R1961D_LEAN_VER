import R2018DLeanEndpointFirstExecutableAttemptInputSlots

namespace R2019DLeanEndpointFirstExecutableAttemptStartBoundary

open R2018DLeanEndpointFirstExecutableAttemptInputSlots
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
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}

/-- Stages in the first executable-attempt start-boundary layer. -/
inductive EndpointFirstExecutableAttemptStartStage where
  | inheritAttemptInputAudit
  | bindAttemptStartHeader
  | bindPrestartWitnessSlot
  | bindStartReadinessSlot
  | bindLaterKernelRunBoundary
  | recordNoAttemptStarted
  deriving DecidableEq, Repr

/-- Kinds of executable-attempt start-boundary records. -/
inductive EndpointFirstExecutableAttemptStartKind where
  | attemptInputAuditInput
  | attemptStartHeaderCarrier
  | prestartWitnessCarrier
  | startReadinessCarrier
  | laterKernelRunBoundaryCarrier
  | nonClaimAttemptStartBoundary
  deriving DecidableEq, Repr

/-- One executable-attempt start-boundary item, still before start execution. -/
structure EndpointFirstExecutableAttemptStartItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    (IA : EndpointFirstExecutableAttemptInputDependencyAudit AI) where
  kind : EndpointFirstExecutableAttemptStartKind
  itemIndex : Nat
  attemptInputAuditCarrier : Type
  attemptInputSlotsCarrier : Type
  attemptStartBoundaryCarrier : Type
  prestartWitnessCarrier : Type
  startReadinessCarrier : Type
  laterKernelRunCarrier : Type
  attachedToAttemptInputAudit : Prop
  attachedToAttemptInputSlots : Prop
  recordsAttemptStartBoundaryOnly : Prop
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First executable-attempt start boundary, still before starting the attempt. -/
structure MainAnchoredEndpointFirstExecutableAttemptStartBoundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    (IA : EndpointFirstExecutableAttemptInputDependencyAudit AI) where
  stage : EndpointFirstExecutableAttemptStartStage
  primaryAttemptStartKind : EndpointFirstExecutableAttemptStartKind
  attemptInputAuditInput : EndpointFirstExecutableAttemptStartItem IA
  attemptStartHeaderSlot : EndpointFirstExecutableAttemptStartItem IA
  prestartWitnessSlot : EndpointFirstExecutableAttemptStartItem IA
  startReadinessSlot : EndpointFirstExecutableAttemptStartItem IA
  laterKernelRunBoundarySlot : EndpointFirstExecutableAttemptStartItem IA
  nonClaimAttemptStartBoundary : EndpointFirstExecutableAttemptStartItem IA
  attemptStartBoundaryCarrier : Type
  attemptInputAuditCarrier : Type
  attemptInputSlotsCarrier : Type
  attemptStartHeaderRecorded : Prop
  prestartWitnessRecorded : Prop
  startReadinessRecorded : Prop
  laterKernelRunBoundaryRecorded : Prop
  allAttemptStartItemsRecorded : Prop
  noExecutableAttemptStartedHere : Prop
  noWitnessValidatedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R2019D start boundary to the R2018D input dependency audit. -/
def endpoint_first_executable_attempt_start_boundary_to_attempt_input_dependency_audit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (_ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) :
    EndpointFirstExecutableAttemptInputDependencyAudit AI :=
  IA

/-- Forget R2019D start boundary to R2018D attempt input slots. -/
def endpoint_first_executable_attempt_start_boundary_to_attempt_input_slots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) :
    MainAnchoredEndpointFirstExecutableAttemptInputSlots SA :=
  R2018DLeanEndpointFirstExecutableAttemptInputSlots.endpoint_first_executable_attempt_input_dependency_audit_to_slots
    (endpoint_first_executable_attempt_start_boundary_to_attempt_input_dependency_audit ST)

/-- Forget R2019D start boundary to R2017D attempt shell boundary. -/
def endpoint_first_executable_attempt_start_boundary_to_attempt_shell_boundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) :
    MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA :=
  R2018DLeanEndpointFirstExecutableAttemptInputSlots.endpoint_first_executable_attempt_input_slots_to_attempt_shell_boundary
    (endpoint_first_executable_attempt_start_boundary_to_attempt_input_slots ST)

/-- Record that R2019D records only the start boundary and does not start the attempt. -/
def endpoint_first_executable_attempt_start_boundary_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) : Prop :=
  ST.nonClaimBoundary ∧
  ST.noExecutableAttemptStartedHere ∧
  ST.noWitnessValidatedHere ∧
  ST.noExecutionWitnessSuppliedHere ∧
  ST.noEndpointKernelExecutedHere ∧
  ST.noConcreteEndpointLemmaDischargedHere ∧
  ST.noEndpointEstimateClosedHere ∧
  ST.noExplicitFormulaClosedHere ∧
  ST.noRHClosedHere ∧
  R2018DLeanEndpointFirstExecutableAttemptInputSlots.endpoint_first_executable_attempt_input_dependency_audit_records_no_execution_here
    (endpoint_first_executable_attempt_start_boundary_to_attempt_input_dependency_audit ST)

end R2019DLeanEndpointFirstExecutableAttemptStartBoundary
