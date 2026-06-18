import R2019DLeanEndpointFirstExecutableAttemptStartBoundary.EndpointFirstExecutableAttemptStartDependencyAudit

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

/-- R2019D start boundary inherits the actual-Li target through R2018D. -/
theorem endpoint_first_executable_attempt_start_boundary_to_actual_li_target
    {WB : MainAnchoredEndpointFirstExecutionWitnessPacketBoundary RRA}
    {WD : EndpointFirstExecutionWitnessPacketDependencyAudit WB}
    {WV : MainAnchoredEndpointFirstExecutionWitnessValidationSlots WD}
    {VA : EndpointFirstExecutionWitnessValidationDependencyAudit WV}
    {SH : MainAnchoredEndpointFirstExecutableAttemptShellBoundary VA}
    {SA : EndpointFirstExecutableAttemptShellDependencyAudit SH}
    {AI : MainAnchoredEndpointFirstExecutableAttemptInputSlots SA}
    {IA : EndpointFirstExecutableAttemptInputDependencyAudit AI}
    (ST : MainAnchoredEndpointFirstExecutableAttemptStartBoundary IA) :
    A.actualLiTarget := by
  exact R2018DLeanEndpointFirstExecutableAttemptInputSlots.endpoint_first_executable_attempt_input_dependency_audit_to_actual_li_target
    (endpoint_first_executable_attempt_start_boundary_to_attempt_input_dependency_audit ST)

/-- R2019D dependency audit inherits the same target through start boundary. -/
theorem endpoint_first_executable_attempt_start_dependency_audit_to_actual_li_target
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
    A.actualLiTarget := by
  exact endpoint_first_executable_attempt_start_boundary_to_actual_li_target
    (endpoint_first_executable_attempt_start_dependency_audit_to_boundary SD)

/-- R2019D non-claim certificate. -/
structure EndpointFirstExecutableAttemptStartCertificate where
  recordsEndpointFirstExecutableAttemptStartBoundary : Bool
  recordsEndpointFirstExecutableAttemptStartDependencyAudit : Bool
  preservesR2018AttemptInputSlots : Bool
  preservesHistoricalMainLeanCheckSpine : Bool
  preparesLaterEndpointKernelRunBoundary : Bool
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  claimsFullRHFormalization : Bool

/-- R2019D records an executable-attempt start boundary but does not start the attempt. -/
def r2019EndpointFirstExecutableAttemptStartCertificate :
    EndpointFirstExecutableAttemptStartCertificate :=
  { recordsEndpointFirstExecutableAttemptStartBoundary := true
    recordsEndpointFirstExecutableAttemptStartDependencyAudit := true
    preservesR2018AttemptInputSlots := true
    preservesHistoricalMainLeanCheckSpine := true
    preparesLaterEndpointKernelRunBoundary := true
    startsExecutableAttemptHere := false
    validatesExecutionWitnessHere := false
    suppliesExecutionWitnessHere := false
    executesEndpointProofKernelHere := false
    dischargesConcreteEndpointLemmaHere := false
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    claimsFullRHFormalization := false }

theorem r2019_fifty_eighth_step_records_endpoint_first_executable_attempt_start_boundary :
    r2019EndpointFirstExecutableAttemptStartCertificate.recordsEndpointFirstExecutableAttemptStartBoundary = true := by
  rfl

theorem r2019_fifty_eighth_step_records_endpoint_first_executable_attempt_start_dependency_audit :
    r2019EndpointFirstExecutableAttemptStartCertificate.recordsEndpointFirstExecutableAttemptStartDependencyAudit = true := by
  rfl

theorem r2019_fifty_eighth_step_is_attempt_start_boundary_not_attempt_start :
    r2019EndpointFirstExecutableAttemptStartCertificate.startsExecutableAttemptHere = false := by
  rfl

theorem r2019_fifty_eighth_step_does_not_claim_rh_formalization :
    r2019EndpointFirstExecutableAttemptStartCertificate.claimsFullRHFormalization = false := by
  rfl

end R2019DLeanEndpointFirstExecutableAttemptStartBoundary
