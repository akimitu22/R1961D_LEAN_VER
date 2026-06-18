import R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots

namespace R2021DLeanEndpointFirstProofKernelInvocationBoundary

open R2018DLeanEndpointFirstExecutableAttemptInputSlots
open R2017DLeanEndpointFirstExecutableAttemptShellBoundary

open R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots
open R2019DLeanEndpointFirstExecutableAttemptStartBoundary
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
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    {IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI}

/-- Stages in the first proof-kernel invocation-boundary layer. -/
inductive EndpointFirstProofKernelInvocationStage where
  | inheritExecutableAttemptStartCertificateAudit
  | bindProofKernelInvocationHeader
  | bindPrestartWitnessSlot
  | bindStartReadinessSlot
  | bindLaterKernelRunBoundary
  | recordNoProofKernelInvocationed
  deriving DecidableEq, Repr

/-- Kinds of proof-kernel invocation-boundary records. -/
inductive EndpointFirstProofKernelInvocationKind where
  | attemptStartCertificateAuditInput
  | proofKernelInvocationHeaderCarrier
  | prestartWitnessCarrier
  | startReadinessCarrier
  | laterKernelRunBoundaryCarrier
  | nonClaimProofKernelInvocationBoundary
  deriving DecidableEq, Repr

/-- One proof-kernel invocation-boundary item, still before start execution. -/
structure EndpointFirstProofKernelInvocationItem
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    (IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI) where
  kind : EndpointFirstProofKernelInvocationKind
  itemIndex : Nat
  attemptStartCertificateAuditCarrier : Type
  attemptStartCertificateSlotsCarrier : Type
  proofKernelInvocationBoundaryCarrier : Type
  prestartWitnessCarrier : Type
  startReadinessCarrier : Type
  laterKernelRunCarrier : Type
  attachedToExecutableAttemptStartCertificateAudit : Prop
  attachedToExecutableAttemptStartCertificateSlots : Prop
  recordsProofKernelInvocationBoundaryOnly : Prop
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- First proof-kernel invocation boundary, still before starting the attempt. -/
structure MainAnchoredEndpointFirstProofKernelInvocationBoundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    (IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI) where
  stage : EndpointFirstProofKernelInvocationStage
  primaryProofKernelInvocationKind : EndpointFirstProofKernelInvocationKind
  attemptStartCertificateAuditInput : EndpointFirstProofKernelInvocationItem IA
  proofKernelInvocationHeaderSlot : EndpointFirstProofKernelInvocationItem IA
  prestartWitnessSlot : EndpointFirstProofKernelInvocationItem IA
  startReadinessSlot : EndpointFirstProofKernelInvocationItem IA
  laterKernelRunBoundarySlot : EndpointFirstProofKernelInvocationItem IA
  nonClaimProofKernelInvocationBoundary : EndpointFirstProofKernelInvocationItem IA
  proofKernelInvocationBoundaryCarrier : Type
  attemptStartCertificateAuditCarrier : Type
  attemptStartCertificateSlotsCarrier : Type
  proofKernelInvocationHeaderRecorded : Prop
  prestartWitnessRecorded : Prop
  startReadinessRecorded : Prop
  laterKernelRunBoundaryRecorded : Prop
  allProofKernelInvocationItemsRecorded : Prop
  noProofKernelInvocationedHere : Prop
  noWitnessValidatedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R2021D invocation boundary to the R2018D input dependency audit. -/
def endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_certificate_dependency_audit
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    {IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI}
    (_ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA) :
    EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI :=
  IA

/-- Forget R2021D invocation boundary to R2018D proof-kernel invocation-certificate slots. -/
def endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_certificate_slots
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    {IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA) :
    MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA :=
  R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots.endpoint_first_executable_attempt_start_certificate_dependency_audit_to_slots
    (endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_certificate_dependency_audit ST)

/-- Forget R2021D invocation boundary to R2017D attempt start boundary. -/
def endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_boundary
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    {IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA) :
    MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0 :=
  R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots.endpoint_first_executable_attempt_start_certificate_slots_to_attempt_start_boundary
    (endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_certificate_slots ST)

/-- Record that R2021D records only the invocation boundary and does not invoke or execute the proof kernel. -/
def endpoint_first_proof_kernel_invocation_boundary_records_no_execution_here
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH0 : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA0 : EndpointFirstExecutableAttemptShellDependencyAudit SH0}
    {AI0 : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA0}
    {IA0 : EndpointFirstExecutableAttemptInputDependencyAudit AI0}
    {SH : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA0}
    {SA : EndpointFirstExecutableAttemptStartDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA}
    {IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA) : Prop :=
  ST.nonClaimBoundary ∧
  ST.noProofKernelInvocationedHere ∧
  ST.noWitnessValidatedHere ∧
  ST.noExecutionWitnessSuppliedHere ∧
  ST.noEndpointKernelExecutedHere ∧
  ST.noConcreteEndpointLemmaDischargedHere ∧
  ST.noEndpointEstimateClosedHere ∧
  ST.noExplicitFormulaClosedHere ∧
  ST.noRHClosedHere ∧
  R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots.endpoint_first_executable_attempt_start_certificate_dependency_audit_records_no_execution_here
    (endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_certificate_dependency_audit ST)

end R2021DLeanEndpointFirstProofKernelInvocationBoundary
