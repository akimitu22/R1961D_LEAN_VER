import R2015DLeanEndpointFirstExecutionWitnessPacketBoundary.EndpointFirstExecutionWitnessPacketSlots

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


/-- Kinds of dependency-audit records for R2015D witness packet boundary. -/
inductive EndpointFirstExecutionWitnessPacketDependencyKind where
  | witnessPacketBoundaryInput
  | rehearsalResultAuditCarrier
  | rehearsalResultSlotsCarrier
  | laterExecutableAttemptCarrier
  | nonClaimDependencyBoundary
  deriving DecidableEq, Repr

/-- One dependency-audit item for R2015D. -/
structure EndpointFirstExecutionWitnessPacketDependencyItem
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    (WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA) where
  kind : EndpointFirstExecutionWitnessPacketDependencyKind
  itemIndex : Nat
  witnessPacketBoundaryCarrier : Type
  rehearsalResultAuditCarrier : Type
  rehearsalResultSlotsCarrier : Type
  recordsDependencyOnly : Prop
  suppliesExecutionWitnessHere : Bool
  startsExecutableAttemptHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for R2015D witness packet boundary. -/
structure EndpointFirstExecutionWitnessPacketDependencyAudit
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    (WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA) where
  witnessPacketBoundaryInput : EndpointFirstExecutionWitnessPacketDependencyItem WB
  rehearsalResultAuditItem : EndpointFirstExecutionWitnessPacketDependencyItem WB
  rehearsalResultSlotsItem : EndpointFirstExecutionWitnessPacketDependencyItem WB
  laterExecutableAttemptItem : EndpointFirstExecutionWitnessPacketDependencyItem WB
  nonClaimDependencyBoundary : EndpointFirstExecutionWitnessPacketDependencyItem WB
  allDependenciesRecorded : Prop
  noExecutionWitnessSuppliedHere : Prop
  noExecutableAttemptStartedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget dependency audit to R2015D witness packet boundary. -/
def endpoint_first_execution_witness_packet_dependency_audit_to_boundary
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    (_WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB) :
    MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA :=
  WB

/-- Forget dependency audit to R2014D result slots. -/
def endpoint_first_execution_witness_packet_dependency_audit_to_rehearsal_result_slots
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    (WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB) :
    MainAnchoredEndpointFirstRehearsalResultSlots REA :=
  endpoint_first_execution_witness_packet_boundary_to_rehearsal_result_slots
    (endpoint_first_execution_witness_packet_dependency_audit_to_boundary WD)

/-- Record that R2015D dependency audit remains non-executing. -/
def endpoint_first_execution_witness_packet_dependency_audit_records_no_execution_here
    {RR : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    {RRA : EndpointFirstRehearsalResultDependencyAudit RR}
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    (WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB) : Prop :=
  WD.nonClaimBoundary ∧
  WD.noExecutionWitnessSuppliedHere ∧
  WD.noExecutableAttemptStartedHere ∧
  WD.noEndpointKernelExecutedHere ∧
  WD.noConcreteEndpointLemmaDischargedHere ∧
  WD.noEndpointEstimateClosedHere ∧
  WD.noExplicitFormulaClosedHere ∧
  WD.noRHClosedHere ∧
  endpoint_first_execution_witness_packet_boundary_records_no_execution_here
    (endpoint_first_execution_witness_packet_dependency_audit_to_boundary WD)

end R2015DLeanEndpointFirstExecutionWitnessPacketBoundary
