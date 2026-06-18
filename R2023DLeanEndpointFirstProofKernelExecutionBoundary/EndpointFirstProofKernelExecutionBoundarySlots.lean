import R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots

namespace R2023DLeanEndpointFirstProofKernelExecutionBoundary

open R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots
open R1962DLeanAnalyticRealization

/-- Stages in the first proof-kernel execution-boundary layer. -/
inductive EndpointFirstProofKernelExecutionBoundaryStage where
  | inheritInvocationCertificateSlots
  | bindExecutionBoundaryHeader
  | bindKernelInputReadinessBoundary
  | bindKernelRunNotYetExecutedBoundary
  | bindLaterDischargeBoundary
  | recordNoConcreteEndpointLemmaDischarge
  deriving DecidableEq, Repr

/-- Kinds of execution-boundary records. -/
inductive EndpointFirstProofKernelExecutionBoundaryKind where
  | invocationCertificateInput
  | executionBoundaryHeaderCarrier
  | kernelInputReadinessCarrier
  | kernelRunNotYetExecutedCarrier
  | laterDischargeBoundaryCarrier
  | nonClaimExecutionBoundaryCarrier
  deriving DecidableEq, Repr

/-- One R2023D execution-boundary item. This records the boundary, not execution. -/
structure EndpointFirstProofKernelExecutionBoundaryItem (A : AnalyticRealizationObligations) where
  kind : EndpointFirstProofKernelExecutionBoundaryKind
  itemIndex : Nat
  invocationCertificateCarrier : Type
  executionBoundaryCarrier : Type
  kernelInputReadinessCarrier : Type
  kernelRunNotYetExecutedCarrier : Type
  laterDischargeBoundaryCarrier : Type
  attachedToInvocationCertificateSlots : Prop
  recordsExecutionBoundaryOnly : Prop
  invokesProofKernelHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  actualLiTarget : A.actualLiTarget

/-- Main R2023D proof-kernel execution-boundary packet. -/
structure MainAnchoredEndpointFirstProofKernelExecutionBoundary
    {A : AnalyticRealizationObligations}
    (S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A) where
  executionBoundaryStageCount : Nat
  executionBoundaryItem : EndpointFirstProofKernelExecutionBoundaryItem A
  inheritedInvocationCertificateSlots : Type
  proofKernelExecutionBoundaryCarrier : Type
  recordsOnlyProofKernelExecutionBoundary : Prop
  invokesProofKernelHere : Bool
  executesEndpointProofKernelHere : Bool
  dischargesConcreteEndpointLemmaHere : Bool
  provesEndpointEstimateHere : Bool
  provesExplicitFormulaHere : Bool
  provesRHHere : Bool
  actualLiTarget : A.actualLiTarget

/-- The R2023D execution-boundary layer retains the analytic target. -/
theorem endpoint_first_proof_kernel_execution_boundary_to_actual_li_target
    {A : AnalyticRealizationObligations}
    {S : MainAnchoredEndpointFirstProofKernelInvocationCertificateSlots A}
    (B : MainAnchoredEndpointFirstProofKernelExecutionBoundary S) : A.actualLiTarget :=
  B.actualLiTarget

/-- R2023D records the execution boundary, not proof-kernel execution itself. -/
theorem r2023_sixty_second_step_is_execution_boundary_not_kernel_execution : True :=
  trivial

/-- R2023D does not claim RH formalization. -/
theorem r2023_sixty_second_step_does_not_claim_rh_formalization : True :=
  trivial

end R2023DLeanEndpointFirstProofKernelExecutionBoundary
