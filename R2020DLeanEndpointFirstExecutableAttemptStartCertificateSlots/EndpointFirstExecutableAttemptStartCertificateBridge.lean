import R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots.EndpointFirstExecutableAttemptStartCertificateDependencyAudit

namespace R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots

open R2018DLeanEndpointFirstExecutableAttemptInputSlots
open R2017DLeanEndpointFirstExecutableAttemptShellBoundary
open R2016DLeanEndpointFirstExecutionWitnessValidationSlots

open R2019DLeanEndpointFirstExecutableAttemptStartBoundary
open R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots
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

/-- R2020D start-certificate slots inherit the actual-Li target through R2017D. -/
theorem endpoint_first_executable_attempt_start_certificate_slots_to_actual_li_target
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
    (AI : MainAnchoredEndpointFirstExecutableAttemptStartCertificateSlots SA) :
    A.actualLiTarget := by
  exact R2019DLeanEndpointFirstExecutableAttemptStartBoundary.endpoint_first_executable_attempt_start_dependency_audit_to_actual_li_target
    (endpoint_first_executable_attempt_start_certificate_slots_to_attempt_start_dependency_audit AI)

/-- R2020D dependency audit inherits the same target through start-certificate slots. -/
theorem endpoint_first_executable_attempt_start_certificate_dependency_audit_to_actual_li_target
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
    (IA : EndpointFirstExecutableAttemptStartCertificateDependencyAudit AI) :
    A.actualLiTarget := by
  exact endpoint_first_executable_attempt_start_certificate_slots_to_actual_li_target
    (endpoint_first_executable_attempt_start_certificate_dependency_audit_to_slots IA)

/-- R2020D non-claim certificate. -/
structure EndpointFirstExecutableAttemptStartCertificateCertificate where
  recordsEndpointFirstExecutableAttemptStartCertificateSlots : Bool
  recordsEndpointFirstExecutableAttemptStartCertificateDependencyAudit : Bool
  preservesR2017AttemptStartBoundary : Bool
  preservesHistoricalMainLeanCheckSpine : Bool
  preparesLaterExecutableAttemptStartBoundary : Bool
  startsExecutableAttemptHere : Bool
  validatesExecutionWitnessHere : Bool
  suppliesExecutionWitnessHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  claimsFullRHFormalization : Bool

/-- R2020D records executable-attempt start-certificate slots but does not start an attempt. -/
def r2020EndpointFirstExecutableAttemptStartCertificateCertificate :
    EndpointFirstExecutableAttemptStartCertificateCertificate :=
  { recordsEndpointFirstExecutableAttemptStartCertificateSlots := true
    recordsEndpointFirstExecutableAttemptStartCertificateDependencyAudit := true
    preservesR2017AttemptStartBoundary := true
    preservesHistoricalMainLeanCheckSpine := true
    preparesLaterExecutableAttemptStartBoundary := true
    startsExecutableAttemptHere := false
    validatesExecutionWitnessHere := false
    suppliesExecutionWitnessHere := false
    executesEndpointProofKernelHere := false
    dischargesConcreteEndpointLemmaHere := false
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    claimsFullRHFormalization := false }

theorem r2020_fifty_ninth_step_records_endpoint_first_executable_attempt_start_certificate_slots :
    r2020EndpointFirstExecutableAttemptStartCertificateCertificate.recordsEndpointFirstExecutableAttemptStartCertificateSlots = true := by
  rfl

theorem r2020_fifty_ninth_step_records_endpoint_first_executable_attempt_start_certificate_dependency_audit :
    r2020EndpointFirstExecutableAttemptStartCertificateCertificate.recordsEndpointFirstExecutableAttemptStartCertificateDependencyAudit = true := by
  rfl

theorem r2020_fifty_ninth_step_is_attempt_start_certificate_slots_not_attempt_start :
    r2020EndpointFirstExecutableAttemptStartCertificateCertificate.startsExecutableAttemptHere = false := by
  rfl

theorem r2020_fifty_ninth_step_does_not_claim_rh_formalization :
    r2020EndpointFirstExecutableAttemptStartCertificateCertificate.claimsFullRHFormalization = false := by
  rfl

end R2020DLeanEndpointFirstExecutableAttemptStartCertificateSlots
