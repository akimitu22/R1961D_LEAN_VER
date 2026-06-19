import R2046DLeanEndpointFirstConcreteObligationDecompositionSlots.EndpointFirstConcreteObligationDecompositionBridge
import R2045DLeanEndpointFirstConcreteProofObligationBoundary.ToyEndpointFirstConcreteProofObligationBoundary

namespace R2046DLeanEndpointFirstConcreteObligationDecompositionSlots

open R2045DLeanEndpointFirstConcreteProofObligationBoundary
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

/-- Toy constructor for R2046D first concrete obligation decomposition slots. -/
def toy_endpoint_first_concrete_obligation_decomposition_slots
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstConcreteObligationDecompositionSlots
      (R2045DLeanEndpointFirstConcreteProofObligationBoundary.toy_endpoint_first_concrete_proof_obligation_boundary h) :=
  { decompositionStageCount := 7
    endpointEstimateSlot :=
      { slotName := "endpoint-estimate-concrete-bound"
        slotIndex := 0
        statement := True
        inputWitnessShape := Unit
        expectedOutputShape := Unit
        dependsOnEndpointEstimate := true
        dependsOnExplicitFormula := false
        dependsOnTransfer := false
        dependsOnFiniteAbelReduction := false
        dischargedHere := false
        actualLiTarget := h }
    explicitFormulaBridgeSlot :=
      { slotName := "explicit-formula-bridge"
        slotIndex := 1
        statement := True
        inputWitnessShape := Unit
        expectedOutputShape := Unit
        dependsOnEndpointEstimate := false
        dependsOnExplicitFormula := true
        dependsOnTransfer := false
        dependsOnFiniteAbelReduction := false
        dischargedHere := false
        actualLiTarget := h }
    transferSlot :=
      { slotName := "tauberian-transfer"
        slotIndex := 2
        statement := True
        inputWitnessShape := Unit
        expectedOutputShape := Unit
        dependsOnEndpointEstimate := true
        dependsOnExplicitFormula := true
        dependsOnTransfer := true
        dependsOnFiniteAbelReduction := false
        dischargedHere := false
        actualLiTarget := h }
    finiteAbelReductionSlot :=
      { slotName := "finite-abel-reduction"
        slotIndex := 3
        statement := True
        inputWitnessShape := Unit
        expectedOutputShape := Unit
        dependsOnEndpointEstimate := false
        dependsOnExplicitFormula := false
        dependsOnTransfer := true
        dependsOnFiniteAbelReduction := true
        dischargedHere := false
        actualLiTarget := h }
    inheritedFirstConcreteBoundary := Unit
    endpointEstimateStatement := True
    explicitFormulaBridgeStatement := True
    transferStatement := True
    finiteAbelReductionStatement := True
    recordsConcreteStatementDecomposition := True
    startsLemmaStatementBank := True
    dischargesEndpointEstimateHere := false
    dischargesExplicitFormulaHere := false
    dischargesTransferHere := false
    provesRHHere := false
    claimsFullRHFormalization := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_concrete_obligation_decomposition_slots_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_concrete_obligation_decomposition_slots_to_actual_li_target
    (toy_endpoint_first_concrete_proof_obligation_boundary h)
    (toy_endpoint_first_concrete_obligation_decomposition_slots h)

end R2046DLeanEndpointFirstConcreteObligationDecompositionSlots
