import R2001DLeanEndpointFirstDischargeCertificateInterface.EndpointFirstDischargeCertificateDependencyMap

namespace R2001DLeanEndpointFirstDischargeCertificateInterface

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


/--
Main R2001D bridge: the first discharge certificate interface inherits the
actual-Li target through the R2000D concrete-discharge obligation slots.  This
records a certificate interface only and does not supply a proof certificate.
-/
theorem endpoint_first_discharge_certificate_interface_to_actual_li_target
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    (CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD) :
    A.actualLiTarget := by
  exact endpoint_concrete_discharge_obligation_dependency_table_to_actual_li_target
    (endpoint_first_discharge_certificate_interface_to_obligation_table CI)

/-- The dependency map inherits the same target through the certificate interface. -/
theorem endpoint_first_discharge_certificate_dependency_map_to_actual_li_target
    {BP : MainAnchoredEndpointExecutableProofKernelBodyPlan KS}
    {DI : MainAnchoredEndpointFirstConcreteDischargeInterface BP}
    {DD : EndpointFirstConcreteDischargeDependencyInterface DI}
    {OS : MainAnchoredEndpointConcreteDischargeObligationSlots DD}
    {OD : EndpointConcreteDischargeObligationDependencyTable OS}
    {CI : MainAnchoredEndpointFirstDischargeCertificateInterface OD}
    (CM : EndpointFirstDischargeCertificateDependencyMap CI) :
    A.actualLiTarget := by
  exact endpoint_first_discharge_certificate_interface_to_actual_li_target
    (endpoint_first_discharge_certificate_dependency_map_to_certificate_interface CM)

/-- R2001D non-claim certificate. -/
structure EndpointFirstDischargeCertificateInterfaceCertificate where
  recordsEndpointFirstDischargeCertificateInterface : Bool
  recordsEndpointFirstDischargeCertificateDependencyMap : Bool
  preservesR2000ConcreteDischargeObligationSlots : Bool
  preservesR1999FirstConcreteDischargeInterface : Bool
  preservesR1998ExecutableProofKernelBodyPlan : Bool
  preservesHistoricalMainLeanCheckSpine : Bool
  preparesLaterFirstDischargeCertificate : Bool
  suppliesConcreteEndpointLemmaProofHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  executesEndpointProofKernelHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  claimsFullAnalyticFormalization : Bool
  claimsFullRHFormalization : Bool

/-- R2001D records a first discharge certificate interface without supplying the certificate here. -/
def r2001EndpointFirstDischargeCertificateInterfaceCertificate :
    EndpointFirstDischargeCertificateInterfaceCertificate :=
  { recordsEndpointFirstDischargeCertificateInterface := true
    recordsEndpointFirstDischargeCertificateDependencyMap := true
    preservesR2000ConcreteDischargeObligationSlots := true
    preservesR1999FirstConcreteDischargeInterface := true
    preservesR1998ExecutableProofKernelBodyPlan := true
    preservesHistoricalMainLeanCheckSpine := true
    preparesLaterFirstDischargeCertificate := true
    suppliesConcreteEndpointLemmaProofHere := false
    dischargesConcreteEndpointLemmaHere := false
    executesEndpointProofKernelHere := false
    provesEndpointEstimateHere := false
    provesBoundaryErrorEstimateHere := false
    provesRemainderUniformityHere := false
    provesSignTransferHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    claimsFullAnalyticFormalization := false
    claimsFullRHFormalization := false }

theorem r2001_fortieth_step_records_endpoint_first_discharge_certificate_interface :
    r2001EndpointFirstDischargeCertificateInterfaceCertificate.recordsEndpointFirstDischargeCertificateInterface = true := by
  rfl

theorem r2001_fortieth_step_records_endpoint_first_discharge_certificate_dependency_map :
    r2001EndpointFirstDischargeCertificateInterfaceCertificate.recordsEndpointFirstDischargeCertificateDependencyMap = true := by
  rfl

theorem r2001_fortieth_step_is_certificate_interface_not_concrete_discharge :
    r2001EndpointFirstDischargeCertificateInterfaceCertificate.dischargesConcreteEndpointLemmaHere = false := by
  rfl

theorem r2001_fortieth_step_does_not_claim_rh_formalization :
    r2001EndpointFirstDischargeCertificateInterfaceCertificate.claimsFullRHFormalization = false := by
  rfl

end R2001DLeanEndpointFirstDischargeCertificateInterface
