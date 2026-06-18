import R2014DLeanEndpointFirstRehearsalResultSlots.EndpointFirstRehearsalResultSlots

namespace R2014DLeanEndpointFirstRehearsalResultSlots

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


/-- Kinds of dependency-audit records for R2014D rehearsal-result slots. -/
inductive EndpointFirstRehearsalResultDependencyKind where
  | resultSlotsInput
  | rehearsalAuditCarrier
  | rehearsalBoundaryCarrier
  | laterWitnessPacketCarrier
  | nonClaimDependencyBoundary
  deriving DecidableEq, Repr

/-- One dependency-audit item for R2014D. -/
structure EndpointFirstRehearsalResultDependencyItem
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    (RS : MainAnchoredEndpointFirstRehearsalResultSlots REA) where
  kind : EndpointFirstRehearsalResultDependencyKind
  itemIndex : Nat
  resultSlotCarrier : Type
  rehearsalAuditCarrier : Type
  rehearsalBoundaryCarrier : Type
  recordsDependencyOnly : Prop
  materializesDryRunResultHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/-- Dependency audit for R2014D rehearsal-result slots. -/
structure EndpointFirstRehearsalResultDependencyAudit
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    (RS : MainAnchoredEndpointFirstRehearsalResultSlots REA) where
  resultSlotsInput : EndpointFirstRehearsalResultDependencyItem RS
  rehearsalAuditItem : EndpointFirstRehearsalResultDependencyItem RS
  rehearsalBoundaryItem : EndpointFirstRehearsalResultDependencyItem RS
  laterWitnessPacketItem : EndpointFirstRehearsalResultDependencyItem RS
  nonClaimDependencyBoundary : EndpointFirstRehearsalResultDependencyItem RS
  allDependenciesRecorded : Prop
  noDryRunResultMaterializedHere : Prop
  noExecutionWitnessSuppliedHere : Prop
  noEndpointKernelExecutedHere : Prop
  noConcreteEndpointLemmaDischargedHere : Prop
  noEndpointEstimateClosedHere : Prop
  noExplicitFormulaClosedHere : Prop
  noRHClosedHere : Prop
  nonClaimBoundary : Prop

/-- Forget dependency audit to R2014D result slots. -/
def endpoint_first_rehearsal_result_dependency_audit_to_slots
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    {RS : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    (_RD : EndpointFirstRehearsalResultDependencyAudit RS) :
    MainAnchoredEndpointFirstRehearsalResultSlots REA :=
  RS

/-- Forget dependency audit to R2013D rehearsal dependency audit. -/
def endpoint_first_rehearsal_result_dependency_audit_to_rehearsal_dependency_audit
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    {RS : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    (RD : EndpointFirstRehearsalResultDependencyAudit RS) :
    EndpointFirstDischargeExecutionRehearsalDependencyAudit REH :=
  endpoint_first_rehearsal_result_slots_to_rehearsal_dependency_audit
    (endpoint_first_rehearsal_result_dependency_audit_to_slots RD)

/-- Record that R2014D dependency audit remains non-executing. -/
def endpoint_first_rehearsal_result_dependency_audit_records_no_execution_here
    {REH : MainAnchoredEndpointFirstDischargeExecutionRehearsalBoundary HA}
    {REA : EndpointFirstDischargeExecutionRehearsalDependencyAudit REH}
    {RS : MainAnchoredEndpointFirstRehearsalResultSlots REA}
    (RD : EndpointFirstRehearsalResultDependencyAudit RS) : Prop :=
  RD.nonClaimBoundary ∧
  RD.noDryRunResultMaterializedHere ∧
  RD.noExecutionWitnessSuppliedHere ∧
  RD.noEndpointKernelExecutedHere ∧
  RD.noConcreteEndpointLemmaDischargedHere ∧
  RD.noEndpointEstimateClosedHere ∧
  RD.noExplicitFormulaClosedHere ∧
  RD.noRHClosedHere ∧
  endpoint_first_rehearsal_result_slots_records_no_execution_here
    (endpoint_first_rehearsal_result_dependency_audit_to_slots RD)

end R2014DLeanEndpointFirstRehearsalResultSlots
