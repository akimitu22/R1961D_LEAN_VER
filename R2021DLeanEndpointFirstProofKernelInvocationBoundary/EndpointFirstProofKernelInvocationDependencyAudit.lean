import R2021DLeanEndpointFirstProofKernelInvocationBoundary.EndpointFirstProofKernelInvocationBoundarySlots

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
    {ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA}

/-- Kinds in the dependency audit for proof-kernel invocation boundary. -/
inductive EndpointFirstProofKernelInvocationDependencyKind where
  | attemptStartCertificateAuditDependency
  | proofKernelInvocationBoundaryDependency
  | prestartWitnessDependency
  | startReadinessDependency
  | laterKernelRunDependency
  | nonClaimDependency
  deriving DecidableEq, Repr

/-- One dependency item for R2021D. -/
structure EndpointFirstProofKernelInvocationDependencyItem
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
    (ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA) where
  kind : EndpointFirstProofKernelInvocationDependencyKind
  itemIndex : Nat
  proofKernelInvocationBoundaryCarrier : Type
  attemptStartCertificateAuditCarrier : Type
  recordsProofKernelInvocationBoundaryDependency : Prop
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

/-- Dependency audit for R2021D proof-kernel invocation boundary. -/
structure EndpointFirstProofKernelInvocationDependencyAudit
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
    (ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA) where
  attemptStartCertificateAuditDependency : EndpointFirstProofKernelInvocationDependencyItem ST
  proofKernelInvocationBoundaryDependency : EndpointFirstProofKernelInvocationDependencyItem ST
  prestartWitnessDependency : EndpointFirstProofKernelInvocationDependencyItem ST
  startReadinessDependency : EndpointFirstProofKernelInvocationDependencyItem ST
  laterKernelRunDependency : EndpointFirstProofKernelInvocationDependencyItem ST
  nonClaimDependency : EndpointFirstProofKernelInvocationDependencyItem ST
  dependencyAuditCarrier : Type
  proofKernelInvocationBoundaryCarrier : Type
  attemptStartCertificateAuditCarrier : Type
  coversAllProofKernelInvocationBoundaryItems : Prop
  preservesExecutableAttemptStartCertificateSlots : Prop
  preservesHistoricalCheckSpine : Prop
  noProofKernelInvocationedHere : Prop
  noWitnessValidatedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R2021D dependency audit to the invocation boundary. -/
def endpoint_first_proof_kernel_invocation_dependency_audit_to_boundary
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
    {ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA}
    (_SD : EndpointFirstProofKernelInvocationDependencyAudit ST) :
    MainAnchoredEndpointFirstProofKernelInvocationBoundary IA :=
  ST

/-- Forget R2021D dependency audit to R2018D input slots. -/
def endpoint_first_proof_kernel_invocation_dependency_audit_to_attempt_start_certificate_slots
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
    {ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA}
    (SD : EndpointFirstProofKernelInvocationDependencyAudit ST) :
    MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA :=
  endpoint_first_proof_kernel_invocation_boundary_to_attempt_start_certificate_slots
    (endpoint_first_proof_kernel_invocation_dependency_audit_to_boundary SD)

/-- Record that R2021D dependency audit remains non-executing. -/
def endpoint_first_proof_kernel_invocation_dependency_audit_records_no_execution_here
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
    {ST : MainAnchoredEndpointFirstProofKernelInvocationBoundary IA}
    (SD : EndpointFirstProofKernelInvocationDependencyAudit ST) : Prop :=
  SD.nonClaimBoundary ∧
  SD.noProofKernelInvocationedHere ∧
  SD.noWitnessValidatedHere ∧
  SD.noEndpointKernelExecutedHere ∧
  SD.noConcreteEndpointLemmaDischargedHere ∧
  SD.noEndpointEstimateClosedHere ∧
  SD.noExplicitFormulaClosedHere ∧
  SD.noRHClosedHere ∧
  endpoint_first_proof_kernel_invocation_boundary_records_no_execution_here
    (endpoint_first_proof_kernel_invocation_dependency_audit_to_boundary SD)

end R2021DLeanEndpointFirstProofKernelInvocationBoundary
