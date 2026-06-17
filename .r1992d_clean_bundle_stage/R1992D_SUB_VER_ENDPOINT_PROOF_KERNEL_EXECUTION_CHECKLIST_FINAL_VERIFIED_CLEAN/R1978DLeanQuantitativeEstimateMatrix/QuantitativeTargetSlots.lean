import R1977DLeanEstimateDependencyClosure

namespace R1978DLeanQuantitativeEstimateMatrix

open R1977DLeanEstimateDependencyClosure
open R1976DLeanFiniteAbelEstimateGates
open R1975DLeanFiniteAbelNormalization
open R1974DLeanFiniteAbelComponents
open R1973DLeanFiniteAbelIdentity
open R1972DLeanToyAbelModel
open R1971DLeanAbelBoundarySkeleton
open R1970DLeanFirstFormalizationTarget
open R1962DLeanAnalyticRealization

/--
R1978D quantitative endpoint target slot.

This refines the R1977 endpoint dependency table into a quantitative target:
which scale, majorant, local reduction, and terminal smallness statement an
actual endpoint estimate must eventually provide.  It is not the proof of that
estimate.
-/
structure QuantitativeEndpointTargetSlot
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) where
  endpointDependencyTable : EndpointEstimateDependencyTableSlot P.estimateGatePlan
  endpointScaleCarrier : Type
  endpointMajorantCarrier : Type
  endpointLocalReductionCarrier : Type
  endpointScaleRegistered : Prop
  endpointMajorantRegistered : Prop
  endpointLocalReductionRegistered : Prop
  endpointTendsToZeroTarget : Prop
  endpointUniformInAbelParameterTarget : Prop
  endpointFeedsBoundaryPassage : Prop
  endpointTargetReadyForProof : Prop
  provesConcreteEndpointEstimateHere : Bool
  provesConcreteUniformityEstimateHere : Bool
  provesConcreteLiCoefficientSignHere : Bool
  nonClaimBoundary : Prop

/--
R1978D quantitative boundary-error target slot.

This slot names the boundary-error majorant, comparison scale, and limiting
compatibility target needed by a later concrete boundary-error estimate.
-/
structure QuantitativeBoundaryErrorTargetSlot
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) where
  boundaryDependencyTable : BoundaryErrorDependencyTableSlot P.estimateGatePlan
  boundaryErrorScaleCarrier : Type
  boundaryErrorMajorantCarrier : Type
  boundaryCompatibilityCarrier : Type
  boundaryErrorScaleRegistered : Prop
  boundaryErrorMajorantRegistered : Prop
  boundaryCompatibilityRegistered : Prop
  boundaryErrorTendsToZeroTarget : Prop
  boundaryErrorCompatibleWithSkeleton : Prop
  boundaryErrorFeedsAbelBoundaryLimit : Prop
  boundaryErrorTargetReadyForProof : Prop
  provesConcreteBoundaryErrorEstimateHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1978D quantitative remainder/uniformity target slot.

This is the joint target that names finite-remainder controls and Abel-parameter
uniformity controls at the same time, because those estimates must interact in
the finite-to-boundary passage.
-/
structure QuantitativeRemainderUniformityTargetSlot
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) where
  remainderUniformityDependencyTable : RemainderUniformityDependencyTableSlot P.estimateGatePlan
  finiteRemainderScaleCarrier : Type
  finiteRemainderMajorantCarrier : Type
  abelUniformityCarrier : Type
  parameterWindowCarrier : Type
  finiteRemainderScaleRegistered : Prop
  finiteRemainderMajorantRegistered : Prop
  abelUniformityRegistered : Prop
  parameterWindowRegistered : Prop
  remainderVanishesTarget : Prop
  uniformityWindowTarget : Prop
  jointRemainderUniformityReadyForProof : Prop
  provesConcreteRemainderEstimateHere : Bool
  provesConcreteUniformityEstimateHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  nonClaimBoundary : Prop

/--
R1978D sign-transfer target slot.

This slot records how the quantitative estimate targets are meant to connect
back to the actual Li target after later analytic estimates are supplied.  It is
a routing target, not a sign proof.
-/
structure QuantitativeSignTransferTargetSlot
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) where
  closureTable : EstimateDependencyClosureTableSlot P.estimateGatePlan
  signTransferCarrier : Type
  liCoefficientCarrier : Type
  finiteAbelIdentityCarrier : Type
  signTransferRegistered : Prop
  finiteIdentityInputRegistered : Prop
  estimateInputsRegistered : Prop
  signTransferFeedsActualLiTarget : Prop
  signTransferReadyForProof : Prop
  provesConcreteLiCoefficientSignHere : Bool
  provesCompleteFiniteAbelIdentityHere : Bool
  provesActualRHHere : Bool
  nonClaimBoundary : Prop

/--
R1978D quantitative estimate target matrix.

This is a larger matrix step: it refines dependency tables into proof-ready
quantitative targets for endpoint, boundary-error, remainder/uniformity, and
sign-transfer routing.  It remains a Lean-checked support layer.
-/
structure QuantitativeEstimateTargetMatrix (A : AnalyticRealizationObligations) where
  dependencyClosurePlan : EstimateDependencyClosurePlan A
  endpointTarget : QuantitativeEndpointTargetSlot dependencyClosurePlan
  boundaryErrorTarget : QuantitativeBoundaryErrorTargetSlot dependencyClosurePlan
  remainderUniformityTarget : QuantitativeRemainderUniformityTargetSlot dependencyClosurePlan
  signTransferTarget : QuantitativeSignTransferTargetSlot dependencyClosurePlan
  quantitativeTargetsRefineDependencyTables : Prop
  quantitativeTargetsFeedEstimateGates : Prop
  quantitativeTargetsFeedNormalization : Prop
  quantitativeTargetsFeedFiniteComponents : Prop
  quantitativeTargetsFeedFiniteIdentityShell : Prop
  quantitativeTargetsFeedActualLiBridge : Prop
  noConcreteEstimateClaimedHere : Prop
  noConcreteSignClaimedHere : Prop
  nonClaimBoundary : Prop

/-- Forget the R1978D matrix back to the R1977D dependency closure plan. -/
def quantitative_matrix_to_dependency_closure_plan
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    EstimateDependencyClosurePlan A :=
  M.dependencyClosurePlan

/-- R1978D yields the R1976D estimate-gate plan. -/
def quantitative_matrix_to_estimate_gate_plan
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    FiniteAbelEstimateGatePlan A :=
  finite_abel_dependency_closure_to_estimate_gate_plan M.dependencyClosurePlan

/-- R1978D yields the R1975D normalization plan. -/
def quantitative_matrix_to_normalization_plan
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    FiniteAbelNormalizationPlan A :=
  finite_abel_dependency_closure_to_normalization_plan M.dependencyClosurePlan

/-- R1978D yields the R1974D component plan. -/
def quantitative_matrix_to_component_plan
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    FiniteAbelComponentPlan A :=
  finite_abel_dependency_closure_to_component_plan M.dependencyClosurePlan

/-- R1978D yields the R1973D finite identity shell plan. -/
def quantitative_matrix_to_identity_shell_plan
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    FiniteAbelIdentityShellPlan A :=
  finite_abel_dependency_closure_to_identity_shell_plan M.dependencyClosurePlan

/-- R1978D yields the R1972D toy Abel model plan. -/
def quantitative_matrix_to_toy_abel_model_plan
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    ToyAnalyticAbelModelPlan A :=
  finite_abel_dependency_closure_to_toy_abel_model_plan M.dependencyClosurePlan

/-- R1978D yields the R1971D Abel-boundary skeleton plan. -/
def quantitative_matrix_to_abel_boundary_skeleton
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    AbelBoundaryDefinitionSkeletonPlan A :=
  finite_abel_dependency_closure_to_abel_boundary_skeleton M.dependencyClosurePlan

/-- R1978D yields R1963D realized pre-target slots. -/
def quantitative_matrix_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (M : QuantitativeEstimateTargetMatrix A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A :=
  finite_abel_dependency_closure_to_pre_target_slots M.dependencyClosurePlan

/-- Endpoint target records no endpoint estimate proof at this layer. -/
theorem quantitative_endpoint_target_records_no_concrete_endpoint_estimate
    {A : AnalyticRealizationObligations}
    {P : EstimateDependencyClosurePlan A}
    (E : QuantitativeEndpointTargetSlot P)
    (h : E.provesConcreteEndpointEstimateHere = false) :
    E.provesConcreteEndpointEstimateHere = false := by
  exact h

/-- Boundary-error target records no real Abel-boundary identity proof here. -/
theorem quantitative_boundary_target_records_no_real_boundary_identity
    {A : AnalyticRealizationObligations}
    {P : EstimateDependencyClosurePlan A}
    (B : QuantitativeBoundaryErrorTargetSlot P)
    (h : B.provesRealAbelBoundaryIdentityHere = false) :
    B.provesRealAbelBoundaryIdentityHere = false := by
  exact h

/-- Sign-transfer target records no RH proof here. -/
theorem quantitative_sign_transfer_target_records_no_rh_proof
    {A : AnalyticRealizationObligations}
    {P : EstimateDependencyClosurePlan A}
    (S : QuantitativeSignTransferTargetSlot P)
    (h : S.provesActualRHHere = false) :
    S.provesActualRHHere = false := by
  exact h

end R1978DLeanQuantitativeEstimateMatrix
