import R2019DLeanEndpointFirstExecutableAttemptStartBoundary.EndpointFirstExecutableAttemptStartBoundarySlots

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
    {ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA}

/-- Kinds in the dependency audit for executable-attempt start boundary. -/
inductive EndpointFirstExecutableAttemptStartDependencyKind where
  | attemptInputAuditDependency
  | attemptStartBoundaryDependency
  | prestartWitnessDependency
  | startReadinessDependency
  | laterKernelRunDependency
  | nonClaimDependency
  deriving DecidableEq, Repr

/-- One dependency item for R2019D. -/
structure EndpointFirstExecutableAttemptStartDependencyItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) where
  kind : EndpointFirstExecutableAttemptStartDependencyKind
  itemIndex : Nat
  attemptStartBoundaryCarrier : Type
  attemptInputAuditCarrier : Type
  recordsAttemptStartBoundaryDependency : Prop
  recordsPrestartWitnessDependency : Prop
  recordsStartReadinessDependency : Prop
  recordsLaterKernelRunDependency : Prop
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for R2019D executable-attempt start boundary. -/
structure EndpointFirstExecutableAttemptStartDependencyAudit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) where
  attemptInputAuditDependency : EndpointFirstExecutableAttemptStartDependencyItem ST
  attemptStartBoundaryDependency : EndpointFirstExecutableAttemptStartDependencyItem ST
  prestartWitnessDependency : EndpointFirstExecutableAttemptStartDependencyItem ST
  startReadinessDependency : EndpointFirstExecutableAttemptStartDependencyItem ST
  laterKernelRunDependency : EndpointFirstExecutableAttemptStartDependencyItem ST
  nonClaimDependency : EndpointFirstExecutableAttemptStartDependencyItem ST
  dependencyAuditCarrier : Type
  attemptStartBoundaryCarrier : Type
  attemptInputAuditCarrier : Type
  coversAllAttemptStartBoundaryItems : Prop
  preservesAttemptInputSlots : Prop
  preservesHistoricalCheckSpine : Prop
  noExecutableAttemptStartedHere : Prop
  noWitnessValidatedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R2019D dependency audit to the start boundary. -/
def endpoint_first_executable_attempt_start_dependency_audit_to_boundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    {ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA}
    (_SD : EndpointFirstExecutableAttemptStartDependencyAudit ST) :
    MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA :=
  ST

/-- Forget R2019D dependency audit to R2018D input slots. -/
def endpoint_first_executable_attempt_start_dependency_audit_to_attempt_input_slots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    {ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA}
    (SD : EndpointFirstExecutableAttemptStartDependencyAudit ST) :
    MainAnchoredEndpointFirstExecutableAttemptInputSlots SA :=
  endpoint_first_executable_attempt_start_boundary_to_attempt_input_slots
    (endpoint_first_executable_attempt_start_dependency_audit_to_boundary SD)

/-- Record that R2019D dependency audit remains non-executing. -/
def endpoint_first_executable_attempt_start_dependency_audit_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    {ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA}
    (SD : EndpointFirstExecutableAttemptStartDependencyAudit ST) : Prop :=
  SD.nonClaimBoundary ∧
  SD.noExecutableAttemptStartedHere ∧
  SD.noWitnessValidatedHere ∧
  SD.noEndpointKernelExecutedHere ∧
  SD.noConcreteEndpointLemmaDischargedHere ∧
  SD.noEndpointEstimateClosedHere ∧
  SD.noExplicitFormulaClosedHere ∧
  SD.noRHClosedHere ∧
  endpoint_first_executable_attempt_start_boundary_records_no_execution_here
    (endpoint_first_executable_attempt_start_dependency_audit_to_boundary SD)

end R2019DLeanEndpointFirstExecutableAttemptStartBoundary
