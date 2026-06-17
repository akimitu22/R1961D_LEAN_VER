import R1987DLeanEndpointProofKernelInterface.EndpointKernelDependencyInterface
import R1986DLeanEndpointStatementGroup.EndpointStatementGroupBridge

namespace R1987DLeanEndpointProofKernelInterface

open R1986DLeanEndpointStatementGroup
open R1985DLeanEndpointFirstImplementationBlock
open R1984DLeanManuscriptObligationImplementationQueue
open R1983DLeanMainManuscriptAnchoredVerificationSpine
open R1982DLeanProofObligationExecutionPlan
open R1980DLeanConcreteEstimateStatements
open R1979DLeanConcreteEstimateBlueprint
open R1962DLeanAnalyticRealization

/-- R1987D bridge back to the R1986D endpoint statement group. -/
def endpoint_proof_kernel_to_endpoint_statement_group
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    MainAnchoredEndpointStatementGroup B :=
  endpoint_proof_kernel_interface_to_statement_group K

/-- R1987D bridge back to the R1984D manuscript-obligation queue. -/
def endpoint_proof_kernel_to_endpoint_queue
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    MainAnchoredFirstObligationImplementationQueue M :=
  endpoint_proof_kernel_interface_to_queue K

/--
Main R1987D bridge: the endpoint proof-kernel interface inherits the actual-Li
 target through the R1986D endpoint statement group.  This is not a proof of an
endpoint estimate.
-/
theorem endpoint_proof_kernel_interface_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {P : ConcreteEstimateBlueprintPlan A}
    {S : ConcreteEstimateStatementBank P}
    {E : ConcreteProofObligationExecutionPlan S}
    {M : MainManuscriptAnchorSpine E}
    {Q : MainAnchoredFirstObligationImplementationQueue M}
    {B : MainAnchoredEndpointFirstImplementationBlock Q}
    {G : MainAnchoredEndpointStatementGroup B}
    (K : MainAnchoredEndpointProofKernelInterface G) :
    A.actualLiTarget := by
  exact R1986DLeanEndpointStatementGroup.endpoint_statement_group_to_actual_li_target
    (endpoint_proof_kernel_to_endpoint_statement_group K)

/-- R1987D non-claim certificate. -/
structure EndpointProofKernelInterfaceCertificate where
  recordsEndpointProofKernelInterface : Bool
  recordsEndpointKernelDependencyInterface : Bool
  preservesR1986EndpointStatementGroup : Bool
  preservesR1985EndpointBlock : Bool
  preservesR1984ManuscriptQueue : Bool
  preservesR1983MainManuscriptSpine : Bool
  preservesHistoricalMainLeanCheckSpine : Bool
  preparesEndpointProofKernelInterface : Bool
  opensConcreteEndpointProofFileHere : Bool
  provesEndpointEstimateHere : Bool
  provesBoundaryErrorEstimateHere : Bool
  provesRemainderUniformityHere : Bool
  provesSignTransferHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  claimsFullAnalyticFormalization : Bool
  claimsFullRHFormalization : Bool

/-- R1987D records the endpoint proof-kernel interface without proving it. -/
def r1987EndpointProofKernelInterfaceCertificate :
    EndpointProofKernelInterfaceCertificate :=
  { recordsEndpointProofKernelInterface := true
    recordsEndpointKernelDependencyInterface := true
    preservesR1986EndpointStatementGroup := true
    preservesR1985EndpointBlock := true
    preservesR1984ManuscriptQueue := true
    preservesR1983MainManuscriptSpine := true
    preservesHistoricalMainLeanCheckSpine := true
    preparesEndpointProofKernelInterface := true
    opensConcreteEndpointProofFileHere := false
    provesEndpointEstimateHere := false
    provesBoundaryErrorEstimateHere := false
    provesRemainderUniformityHere := false
    provesSignTransferHere := false
    provesRealAbelBoundaryIdentityHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    claimsFullAnalyticFormalization := false
    claimsFullRHFormalization := false }

/-- R1987D records the endpoint proof-kernel interface. -/
theorem r1987_twenty_sixth_step_records_endpoint_proof_kernel_interface :
    r1987EndpointProofKernelInterfaceCertificate.recordsEndpointProofKernelInterface = true := by
  rfl

/-- R1987D records the endpoint kernel dependency interface. -/
theorem r1987_twenty_sixth_step_records_endpoint_kernel_dependency_interface :
    r1987EndpointProofKernelInterfaceCertificate.recordsEndpointKernelDependencyInterface = true := by
  rfl

/-- R1987D does not prove the endpoint estimate. -/
theorem r1987_twenty_sixth_step_is_kernel_interface_not_endpoint_estimate_proof :
    r1987EndpointProofKernelInterfaceCertificate.provesEndpointEstimateHere = false := by
  rfl

/-- R1987D does not claim RH formalization. -/
theorem r1987_twenty_sixth_step_does_not_claim_rh_formalization :
    r1987EndpointProofKernelInterfaceCertificate.claimsFullRHFormalization = false := by
  rfl

end R1987DLeanEndpointProofKernelInterface
