import R1973DLeanFiniteAbelIdentity

namespace R1974DLeanFiniteAbelComponents

open R1973DLeanFiniteAbelIdentity
open R1972DLeanToyAbelModel
open R1971DLeanAbelBoundarySkeleton
open R1970DLeanFirstFormalizationTarget
open R1962DLeanAnalyticRealization

/--
R1974D finite-sum operator slot.

This does not implement a concrete summation theorem.  It isolates the carrier
and registration data that a later finite Abel-transform identity proof must
fill in.
-/
structure FiniteSumOperatorSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) where
  indexCarrier : Type
  valueCarrier : Type
  partialSumCarrier : Type
  summandCarrier : Type
  finiteSupportRegistered : Prop
  summandRegistered : Prop
  partialSumRegistered : Prop
  finiteSumStatementShell : Prop
  compatibleWithFiniteIdentityShell : Prop
  compatibleWithToyAbelModel : Prop
  noInfiniteLimitUsedHere : Prop
  provesConcreteFiniteSummationTheoremHere : Bool
  provesConcreteFiniteAbelIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1974D weight-system slot for the finite surrogate Abel transform.
-/
structure FiniteAbelWeightSystemSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) where
  weightCarrier : Type
  scaleCarrier : Type
  weightNormalizationCarrier : Type
  weightRegistered : Prop
  scaleRegistered : Prop
  finiteScaleDiscipline : Prop
  compatibleWithR1973SameFiniteScale : Prop
  compatibleWithBoundaryCompatibilityShell : Prop
  noHiddenWeightRenormalization : Prop
  provesConcreteWeightEstimateHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1974D endpoint-correction slot.

The endpoint correction is separated from the finite sum and weight system so
that later endpoint estimates can be targeted without changing the R1973D shell.
-/
structure EndpointCorrectionSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) where
  endpointCarrier : Type
  correctionCarrier : Type
  endpointRegistered : Prop
  correctionRegistered : Prop
  correctionStatementShell : Prop
  compatibleWithFiniteSumOperator : Prop
  compatibleWithWeightSystem : Prop
  compatibleWithBoundaryPlaceholder : Prop
  noEndpointTermHiddenInNormalization : Prop
  provesConcreteEndpointEstimateHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  nonClaimBoundary : Prop

/--
R1974D boundary-error-term slot.

This is an error-term shell only.  It marks where the later finite-to-boundary
error control theorem must be installed.
-/
structure BoundaryErrorTermSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) where
  errorCarrier : Type
  comparisonCarrier : Type
  boundaryScaleCarrier : Type
  errorTermRegistered : Prop
  comparisonRegistered : Prop
  boundaryScaleRegistered : Prop
  boundaryErrorStatementShell : Prop
  feedsBoundaryCompatibilityShell : Prop
  compatibleWithEndpointCorrection : Prop
  compatibleWithR1972BoundaryLimitPlaceholder : Prop
  provesConcreteBoundaryErrorEstimateHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1974D component plan: decompose the R1973D finite identity shell into finite
sum operator, weight system, endpoint correction, and boundary error slots.
-/
structure FiniteAbelComponentPlan (A : AnalyticRealizationObligations) where
  identityShellPlan : FiniteAbelIdentityShellPlan A
  finiteSumOperator : FiniteSumOperatorSlot identityShellPlan
  weightSystem : FiniteAbelWeightSystemSlot identityShellPlan
  endpointCorrection : EndpointCorrectionSlot identityShellPlan
  boundaryErrorTerm : BoundaryErrorTermSlot identityShellPlan
  componentsFeedFiniteIdentityShell : Prop
  componentsFeedBoundaryCompatibilityShell : Prop
  preservesR1973IdentityShellBridge : Prop
  preservesR1972ToyModelBridge : Prop
  preservesActualLiTargetBridge : Prop
  noConcreteAnalyticTheoremClaimedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the component decomposition back to the R1973D finite identity shell plan. -/
def components_to_finite_identity_shell_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelComponentPlan A) :
    FiniteAbelIdentityShellPlan A :=
  P.identityShellPlan

/-- The component decomposition still yields the R1972D toy Abel model plan. -/
def components_to_toy_abel_model_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelComponentPlan A) :
    ToyAnalyticAbelModelPlan A :=
  finite_identity_shell_to_toy_abel_model_plan P.identityShellPlan

/-- The component decomposition still yields the R1971D skeleton plan. -/
def components_to_abel_boundary_skeleton_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelComponentPlan A) :
    AbelBoundaryDefinitionSkeletonPlan A :=
  finite_identity_shell_to_skeleton_plan P.identityShellPlan

/-- The component decomposition still yields the R1970D minimal first target plan. -/
def components_to_minimal_first_target_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelComponentPlan A) :
    MinimalFirstFormalizationPlan A :=
  finite_identity_shell_to_minimal_first_target_plan P.identityShellPlan

/-- The component decomposition still yields R1963D pre-target slots. -/
def components_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelComponentPlan A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A :=
  finite_identity_shell_to_pre_target_slots P.identityShellPlan

/-- The finite-sum operator slot records that it is not a concrete summation proof. -/
theorem finite_sum_operator_records_no_concrete_summation_theorem
    {A : AnalyticRealizationObligations}
    {P : FiniteAbelIdentityShellPlan A}
    (S : FiniteSumOperatorSlot P)
    (h : S.provesConcreteFiniteSummationTheoremHere = false) :
    S.provesConcreteFiniteSummationTheoremHere = false := by
  exact h

/-- The endpoint slot records that it is not a concrete endpoint estimate proof. -/
theorem endpoint_correction_records_no_concrete_endpoint_estimate
    {A : AnalyticRealizationObligations}
    {P : FiniteAbelIdentityShellPlan A}
    (E : EndpointCorrectionSlot P)
    (h : E.provesConcreteEndpointEstimateHere = false) :
    E.provesConcreteEndpointEstimateHere = false := by
  exact h

/-- The boundary-error slot records that it is not a concrete boundary-limit proof. -/
theorem boundary_error_term_records_no_concrete_boundary_limit
    {A : AnalyticRealizationObligations}
    {P : FiniteAbelIdentityShellPlan A}
    (B : BoundaryErrorTermSlot P)
    (h : B.provesConcreteBoundaryLimitHere = false) :
    B.provesConcreteBoundaryLimitHere = false := by
  exact h

end R1974DLeanFiniteAbelComponents
