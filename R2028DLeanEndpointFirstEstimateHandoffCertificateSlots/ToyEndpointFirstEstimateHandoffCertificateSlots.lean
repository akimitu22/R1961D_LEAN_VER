import R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.EndpointFirstEstimateHandoffCertificateBridge
import R2027DLeanEndpointFirstEstimateHandoffBoundary.ToyEndpointFirstEstimateHandoffBoundary

namespace R2028DLeanEndpointFirstEstimateHandoffCertificateSlots

open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Toy constructor for the R2028D endpoint-estimate handoff-certificate slots layer. -/
def toy_endpoint_first_estimate_handoff_certificate_slots
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstEstimateHandoffCertificateSlots
      (toy_endpoint_first_estimate_handoff_boundary h) :=
  { estimateHandoffCertificateStageCount := 6
    estimateHandoffCertificateItem :=
      { kind := EndpointFirstEstimateHandoffCertificateKind.nonClaimEstimateCertificateCarrier
        itemIndex := 0
        estimateHandoffBoundaryCarrier := Unit
        estimateCertificateHeaderCarrier := Unit
        estimateInputCertificateSlotCarrier := Unit
        estimateProofNotYetProvidedCarrier := Unit
        laterExplicitFormulaHandoffCarrier := Unit
        attachedToEstimateHandoffBoundary := True
        recordsEndpointEstimateHandoffCertificateSlotsOnly := True
        provesEndpointEstimateHere := false
        provesExplicitFormulaHere := false
        provesRHHere := false
        actualLiTarget := h }
    inheritedEstimateHandoffBoundary := Unit
    endpointEstimateHandoffCertificateCarrier := Unit
    recordsOnlyEndpointEstimateHandoffCertificateSlots := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_estimate_handoff_certificate_slots_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_estimate_handoff_certificate_slots_to_actual_li_target
    (toy_endpoint_first_estimate_handoff_certificate_slots h)

end R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
