import R2016DLeanEndpointFirstExecutionWitnessValidationSlots

namespace R2017DLeanEndpointFirstExecutableAttemptShellBoundary

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

/-- Stages in the first executable-attempt shell boundary layer. -/
inductive EndpointFirstExecutableAttemptShellStage where
  | inheritWitnessValidationAudit
  | bindAttemptShellHeader
  | bindWitnessValidationCarrier
  | bindAttemptInputCarrier
  | bindLaterAttemptStartBoundary
  | recordNoAttemptStarted
  deriving DecidableEq, Repr

/-- Kinds of executable-attempt shell records. -/
inductive EndpointFirstExecutableAttemptShellKind where
  | witnessValidationAuditInput
  | attemptShellHeaderCarrier
  | witnessValidationCarrier
  | attemptInputCarrier
  | laterAttemptStartBoundary
  | nonClaimExecutableAttemptShell
  deriving DecidableEq, Repr

/-- One executable-attempt shell item, still before an executable attempt starts. -/
structure EndpointFirstExecutableAttemptShellItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    (VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV) where
  kind : EndpointFirstExecutableAttemptShellKind
  itemIndex : Nat
  validationAuditCarrier : Type
  validationSlotsCarrier : Type
  attemptShellCarrier : Type
  attemptInputCarrier : Type
  laterAttemptStartCarrier : Type
  attachedToWitnessValidationAudit : Prop
  attachedToWitnessValidationSlots : Prop
  recordsAttemptShellOnly : Prop
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First executable-attempt shell boundary, still not an executable attempt. -/
structure MainAnchoredEndpointFirstExecutableAttemptShellBoundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    (VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV) where
  stage : EndpointFirstExecutableAttemptShellStage
  primaryAttemptShellKind : EndpointFirstExecutableAttemptShellKind
  witnessValidationAuditInput : EndpointFirstExecutableAttemptShellItem VA
  attemptShellHeaderSlot : EndpointFirstExecutableAttemptShellItem VA
  witnessValidationCarrierSlot : EndpointFirstExecutableAttemptShellItem VA
  attemptInputCarrierSlot : EndpointFirstExecutableAttemptShellItem VA
  laterAttemptStartBoundary : EndpointFirstExecutableAttemptShellItem VA
  nonClaimExecutableAttemptShell : EndpointFirstExecutableAttemptShellItem VA
  executableAttemptShellCarrier : Type
  witnessValidationAuditCarrier : Type
  witnessValidationSlotsCarrier : Type
  attemptShellHeaderRecorded : Prop
  witnessValidationCarrierRecorded : Prop
  attemptInputCarrierRecorded : Prop
  laterAttemptStartBoundaryRecorded : Prop
  allAttemptShellItemsRecorded : Prop
  noExecutableAttemptStartedHere : Prop
  noWitnessValidatedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget attempt shell boundary to R2016D validation dependency audit. -/
def endpoint_first_executable_attempt_shell_boundary_to_witness_validation_dependency_audit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    (_SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA) :
    EndpointFirstExecutionWitnessValidationDependencyAudit WV :=
  VA

/-- Forget attempt shell boundary to R2016D validation slots. -/
def endpoint_first_executable_attempt_shell_boundary_to_witness_validation_slots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    (SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA) :
    MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD :=
  R2016DLeanEndpointFirstExecutionWitnessValidationSlots.endpoint_first_execution_witness_validation_dependency_audit_to_slots
    (endpoint_first_executable_attempt_shell_boundary_to_witness_validation_dependency_audit SH)

/-- Forget attempt shell boundary to R2015D witness packet boundary. -/
def endpoint_first_executable_attempt_shell_boundary_to_witness_packet_boundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    (SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA) :
    MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA :=
  R2016DLeanEndpointFirstExecutionWitnessValidationSlots.endpoint_first_execution_witness_validation_slots_to_witness_packet_boundary
    (endpoint_first_executable_attempt_shell_boundary_to_witness_validation_slots SH)

/-- Record that R2017D creates only the shell boundary and does not start it. -/
def endpoint_first_executable_attempt_shell_boundary_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    (SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA) : Prop :=
  SH.nonClaimBoundary ∧
  SH.noExecutableAttemptStartedHere ∧
  SH.noWitnessValidatedHere ∧
  SH.noExecutionWitnessSuppliedHere ∧
  SH.noEndpointKernelExecutedHere ∧
  SH.noConcreteEndpointLemmaDischargedHere ∧
  SH.noEndpointEstimateClosedHere ∧
  SH.noExplicitFormulaClosedHere ∧
  SH.noRHClosedHere ∧
  R2016DLeanEndpointFirstExecutionWitnessValidationSlots.endpoint_first_execution_witness_validation_dependency_audit_records_no_execution_here
    (endpoint_first_executable_attempt_shell_boundary_to_witness_validation_dependency_audit SH)

end R2017DLeanEndpointFirstExecutableAttemptShellBoundary
