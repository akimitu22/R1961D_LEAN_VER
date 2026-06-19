import R2045DLeanEndpointFirstConcreteProofObligationBoundary.EndpointFirstConcreteProofObligationBoundaryBridge
import R2044DLeanEndpointProofObligationExecutionQueue.ToyEndpointProofObligationExecutionQueue

namespace R2045DLeanEndpointFirstConcreteProofObligationBoundary

open R2044DLeanEndpointProofObligationExecutionQueue
open R2043DLeanEndpointFinalVerificationBoundary
open R2042DLeanEndpointFinalSubmissionCertificateSlots
open R2041DLeanEndpointFinalSubmissionBoundary
open R2040DLeanEndpointFinalArchiveExportCertificateSlots
open R2039DLeanEndpointFinalArchiveExportBoundary
open R2038DLeanEndpointFinalPackageClosureCertificateSlots
open R2037DLeanEndpointFinalPackageClosureBoundary
open R2036DLeanEndpointFinalRHClaimCertificateSlots
open R2035DLeanEndpointFinalRHClaimBoundary
open R2034DLeanEndpointFinalTheoremHandoffCertificateSlots
open R2033DLeanEndpointFinalTheoremHandoffBoundary
open R2032DLeanEndpointFirstRHTargetIntegrationCertificateSlots
open R2031DLeanEndpointFirstRHTargetIntegrationBoundary
open R2030DLeanEndpointFirstExplicitFormulaHandoffCertificateSlots
open R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary
open R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Toy constructor for the R2045D first concrete proof-obligation boundary. -/
def toy_endpoint_first_concrete_proof_obligation_boundary
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteProofObligationBoundary
      (R2044DLeanEndpointProofObligationExecutionQueue.toy_endpoint_proof_obligation_execution_queue h) :=
  { firstConcreteProofBoundaryStageCount := 6
    firstConcreteProofBoundaryItem :=
      { selectedKind := EndpointProofObligationKind.endpointEstimateConcreteBound
        boundaryIndex := 0
        selectedObligation := True
        inputWitnessShape := Unit
        expectedDischargeShape := Unit
        firstProofKernelSubgoal := True
        attachedToProofObligationQueue := True
        startsActualProofWork := True
        dischargedHere := false
        provesEndpointEstimateHere := false
        provesExplicitFormulaHere := false
        provesFinalTheoremHere := false
        provesRHHere := false
        actualLiTarget := h }
    inheritedProofObligationQueue := Unit
    selectedEndpointEstimateObligation := True
    selectedExplicitFormulaObligation := True
    firstProofKernelSubgoal := True
    recordsFirstConcreteProofBoundary := True
    startsActualProofWork := True
    dischargesSelectedObligationHere := false
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesFinalTheoremHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_proof_obligation_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_proof_obligation_boundary_to_actual_li_target
    (toy_endpoint_first_concrete_proof_obligation_boundary h)

end R2045DLeanEndpointFirstConcreteProofObligationBoundary
