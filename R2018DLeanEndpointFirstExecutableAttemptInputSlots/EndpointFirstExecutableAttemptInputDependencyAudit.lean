import R2018DLeanEndpointFirstExecutableAttemptInputSlots.EndpointFirstExecutableAttemptInputSlots

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
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}

/-- Kinds in the dependency audit for executable-attempt input slots. -/
inductive EndpointFirstExecutableAttemptInputDependencyKind where
  | attemptShellAuditDependency
  | attemptInputSlotsDependency
  | witnessValidationReferenceDependency
  | attemptParameterDependency
  | laterAttemptStartBoundaryDependency
  | nonClaimDependency
  deriving DecidableEq, Repr

/-- One dependency item for R2018D. -/
structure EndpointFirstExecutableAttemptInputDependencyItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    (AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA) where
  kind : EndpointFirstExecutableAttemptInputDependencyKind
  itemIndex : Nat
  attemptInputSlotsCarrier : Type
  attemptShellAuditCarrier : Type
  recordsAttemptInputDependency : Prop
  recordsWitnessValidationReferenceDependency : Prop
  recordsAttemptParameterDependency : Prop
  recordsLaterAttemptStartBoundaryDependency : Prop
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for R2018D executable-attempt input slots. -/
structure EndpointFirstExecutableAttemptInputDependencyAudit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    (AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA) where
  attemptShellAuditDependency : EndpointFirstExecutableAttemptInputDependencyItem AI
  attemptInputSlotsDependency : EndpointFirstExecutableAttemptInputDependencyItem AI
  witnessValidationReferenceDependency : EndpointFirstExecutableAttemptInputDependencyItem AI
  attemptParameterDependency : EndpointFirstExecutableAttemptInputDependencyItem AI
  laterAttemptStartBoundaryDependency : EndpointFirstExecutableAttemptInputDependencyItem AI
  nonClaimDependency : EndpointFirstExecutableAttemptInputDependencyItem AI
  dependencyAuditCarrier : Type
  attemptInputSlotsCarrier : Type
  attemptShellAuditCarrier : Type
  coversAllAttemptInputSlots : Prop
  preservesAttemptShellBoundary : Prop
  preservesHistoricalCheckSpine : Prop
  noExecutableAttemptStartedHere : Prop
  noWitnessValidatedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R2018D dependency audit to the input slots. -/
def endpoint_first_executable_attempt_input_dependency_audit_to_slots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    (_IA : EndpointFirstExecutableAttemptInputDependencyAudit AI) :
    MainAnchoredEndpointFirstExecutableAttemptInputSlots SA :=
  AI

/-- Forget R2018D dependency audit to the R2017D shell dependency audit. -/
def endpoint_first_executable_attempt_input_dependency_audit_to_attempt_shell_dependency_audit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    (IA : EndpointFirstExecutableAttemptInputDependencyAudit AI) :
    EndpointFirstExecutableAttemptShellDependencyAudit SH :=
  endpoint_first_executable_attempt_input_slots_to_attempt_shell_dependency_audit
    (endpoint_first_executable_attempt_input_dependency_audit_to_slots IA)

/-- Record that R2018D dependency audit remains non-executing. -/
def endpoint_first_executable_attempt_input_dependency_audit_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    (IA : EndpointFirstExecutableAttemptInputDependencyAudit AI) : Prop :=
  IA.nonClaimBoundary ∧
  IA.noExecutableAttemptStartedHere ∧
  IA.noWitnessValidatedHere ∧
  IA.noEndpointKernelExecutedHere ∧
  IA.noConcreteEndpointLemmaDischargedHere ∧
  IA.noEndpointEstimateClosedHere ∧
  IA.noExplicitFormulaClosedHere ∧
  IA.noRHClosedHere ∧
  endpoint_first_executable_attempt_input_slots_records_no_execution_here
    (endpoint_first_executable_attempt_input_dependency_audit_to_slots IA)

end R2018DLeanEndpointFirstExecutableAttemptInputSlots
