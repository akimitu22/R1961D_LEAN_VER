import R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary.EndpointFirstExplicitFormulaHandoffBoundaryBridge
import R2028DLeanEndpointFirstEstimateHandoffCertificateSlots.ToyEndpointFirstEstimateHandoffCertificateSlots

namespace R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary

open R2028DLeanEndpointFirstEstimateHandoffCertificateSlots
open R2027DLeanEndpointFirstEstimateHandoffBoundary
open R2026DLeanEndpointFirstConcreteLemmaDischargeCertificateSlots
open R2025DLeanEndpointFirstConcreteLemmaDischargeBoundary
open R2024DLeanEndpointFirstProofKernelExecutionCertificateSlots
open R2023DLeanEndpointFirstProofKernelExecutionBoundary
open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Toy constructor for the R2029D explicit-formula handoff-boundary layer. -/
def toy_endpoint_first_explicit_formula_handoff_boundary
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) :
    MainAnchoredEndpointFirstExplicitFormulaHandoffBoundary
      (toy_endpoint_first_estimate_handoff_certificate_slots h) :=
  { explicitFormulaHandoffStageCount := 6
    explicitFormulaHandoffItem :=
      { kind := EndpointFirstExplicitFormulaHandoffBoundaryKind.nonClaimExplicitFormulaHandoffCarrier
        itemIndex := 0
        estimateCertificateCarrier := Unit
        explicitFormulaHandoffCarrier := Unit
        explicitFormulaInputBoundaryCarrier := Unit
        explicitFormulaNotYetProvedBoundaryCarrier := Unit
        laterRHHandoffBoundaryCarrier := Unit
        attachedToEstimateHandoffCertificateSlots := True
        recordsExplicitFormulaHandoffBoundaryOnly := True
        provesEndpointEstimateHere := false
        provesExplicitFormulaHere := false
        provesRHHere := false
        actualLiTarget := h }
    inheritedEstimateHandoffCertificateSlots := Unit
    explicitFormulaHandoffBoundaryCarrier := Unit
    recordsOnlyExplicitFormulaHandoffBoundary := True
    provesEndpointEstimateHere := false
    provesExplicitFormulaHere := false
    provesRHHere := false
    actualLiTarget := h }

/-- Toy route to the target for compile-time checking. -/
theorem toy_endpoint_first_explicit_formula_handoff_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    (h : A.actualLiTarget) : A.actualLiTarget :=
  endpoint_first_explicit_formula_handoff_boundary_to_actual_li_target
    (toy_endpoint_first_explicit_formula_handoff_boundary h)

end R2029DLeanEndpointFirstExplicitFormulaHandoffBoundary
