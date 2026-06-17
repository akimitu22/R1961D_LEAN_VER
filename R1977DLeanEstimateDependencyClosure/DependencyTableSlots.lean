import R1976DLeanFiniteAbelEstimateGates

namespace R1977DLeanEstimateDependencyClosure

open R1976DLeanFiniteAbelEstimateGates
open R1975DLeanFiniteAbelNormalization
open R1974DLeanFiniteAbelComponents
open R1973DLeanFiniteAbelIdentity
open R1972DLeanToyAbelModel
open R1971DLeanAbelBoundarySkeleton
open R1970DLeanFirstFormalizationTarget
open R1962DLeanAnalyticRealization

/--
R1977D endpoint dependency table.

This table records which previously named finite-Abel objects an eventual
endpoint estimate must cite.  It is an obligation/dependency table, not an
endpoint-estimate proof.
-/
structure EndpointEstimateDependencyTableSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelEstimateGatePlan A) where
  endpointGate : EndpointEstimateGateSlot P.normalizationPlan
  endpointDependencyCarrier : Type
  endpointLocalReductionCarrier : Type
  endpointUsesFiniteSumNormalization : Prop
  endpointUsesEndpointBoundaryRouting : Prop
  endpointUsesEndpointCorrection : Prop
  endpointUsesParameterUniformity : Prop
  endpointDependencyTableRegistered : Prop
  endpointDependencyTableClosed : Prop
  provesConcreteEndpointEstimateHere : Bool
  provesConcreteLiCoefficientSignHere : Bool
  nonClaimBoundary : Prop

/--
R1977D boundary-error dependency table.

This table makes explicit that a boundary-error estimate must depend on the
boundary-error gate, boundary-error normalization, component-level boundary term,
and skeleton-level boundary placeholder.
-/
structure BoundaryErrorDependencyTableSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelEstimateGatePlan A) where
  boundaryErrorGate : BoundaryErrorEstimateGateSlot P.normalizationPlan
  boundaryDependencyCarrier : Type
  boundaryComparisonDependencyCarrier : Type
  boundaryUsesBoundaryErrorNormalization : Prop
  boundaryUsesBoundaryErrorTerm : Prop
  boundaryUsesBoundaryCompatibilityShell : Prop
  boundaryUsesAbelBoundarySkeleton : Prop
  boundaryDependencyTableRegistered : Prop
  boundaryDependencyTableClosed : Prop
  provesConcreteBoundaryErrorEstimateHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1977D remainder/uniformity dependency table.

This combines finite summation remainders and Abel-parameter uniformity because
those targets usually interact in the finite-to-boundary passage.
-/
structure RemainderUniformityDependencyTableSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelEstimateGatePlan A) where
  remainderGate : SummationRemainderGateSlot P.normalizationPlan
  uniformityGate : AbelParameterUniformityGateSlot P.normalizationPlan
  remainderUniformityCarrier : Type
  remainderUsesFiniteSumOperator : Prop
  remainderUsesFiniteSumNormalization : Prop
  uniformityUsesWeightSystem : Prop
  uniformityUsesWeightNormalization : Prop
  uniformityUsesBoundaryCompatibility : Prop
  jointDependencyTableRegistered : Prop
  jointDependencyTableClosed : Prop
  provesConcreteRemainderEstimateHere : Bool
  provesConcreteUniformityEstimateHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  nonClaimBoundary : Prop

/--
R1977D closure/audit table.

This records that the endpoint, boundary-error, remainder, and uniformity
dependency tables all feed the previously verified estimate-gate plan while not
claiming the missing analytic estimates.
-/
structure EstimateDependencyClosureTableSlot
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelEstimateGatePlan A) where
  endpointDependenciesClosed : Prop
  boundaryErrorDependenciesClosed : Prop
  remainderUniformityDependenciesClosed : Prop
  feedsR1976EstimateGates : Prop
  feedsR1975NormalizationPlan : Prop
  feedsR1974ComponentPlan : Prop
  feedsR1973FiniteIdentityShell : Prop
  feedsR1971AbelBoundarySkeleton : Prop
  feedsR1962AnalyticRealizationTarget : Prop
  provesConcreteEndpointEstimateHere : Bool
  provesConcreteBoundaryErrorEstimateHere : Bool
  provesConcreteUniformityEstimateHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  provesRHHere : Bool
  nonClaimBoundary : Prop

/--
R1977D estimate dependency closure plan.

This is a larger consolidation step than R1976D: it turns the four estimate gates
into explicit dependency tables and one closure table, so that the next analytic
work can target named obligations rather than implicit comments.
-/
structure EstimateDependencyClosurePlan (A : AnalyticRealizationObligations) where
  estimateGatePlan : FiniteAbelEstimateGatePlan A
  endpointDependencyTable : EndpointEstimateDependencyTableSlot estimateGatePlan
  boundaryErrorDependencyTable : BoundaryErrorDependencyTableSlot estimateGatePlan
  remainderUniformityDependencyTable : RemainderUniformityDependencyTableSlot estimateGatePlan
  closureTable : EstimateDependencyClosureTableSlot estimateGatePlan
  dependencyTablesFeedEstimateGates : Prop
  dependencyTablesPreserveNormalizationBridge : Prop
  dependencyTablesPreserveFiniteComponentBridge : Prop
  dependencyTablesPreserveFiniteIdentityShellBridge : Prop
  dependencyTablesPreserveActualLiTargetBridge : Prop
  noConcreteAnalyticEstimateClaimedHere : Prop
  nonClaimBoundary : Prop

/-- Forget R1977D dependency closure back to the R1976D estimate-gate plan. -/
def dependency_closure_to_estimate_gate_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    FiniteAbelEstimateGatePlan A :=
  P.estimateGatePlan

/-- R1977D still yields the R1975D normalization plan. -/
def dependency_closure_to_normalization_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    FiniteAbelNormalizationPlan A :=
  finite_abel_estimate_gates_to_normalization_plan P.estimateGatePlan

/-- R1977D still yields the R1974D finite component plan. -/
def dependency_closure_to_component_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    FiniteAbelComponentPlan A :=
  finite_abel_estimate_gates_to_component_plan P.estimateGatePlan

/-- R1977D still yields the R1973D finite identity shell plan. -/
def dependency_closure_to_identity_shell_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    FiniteAbelIdentityShellPlan A :=
  finite_abel_estimate_gates_to_identity_shell_plan P.estimateGatePlan

/-- R1977D still yields the R1972D toy Abel model plan. -/
def dependency_closure_to_toy_abel_model_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    ToyAnalyticAbelModelPlan A :=
  finite_abel_estimate_gates_to_toy_abel_model_plan P.estimateGatePlan

/-- R1977D still yields the R1971D Abel-boundary skeleton. -/
def dependency_closure_to_abel_boundary_skeleton_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    AbelBoundaryDefinitionSkeletonPlan A :=
  finite_abel_estimate_gates_to_abel_boundary_skeleton P.estimateGatePlan

/-- R1977D still yields the R1970D minimal first target plan. -/
def dependency_closure_to_minimal_first_target_plan
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    MinimalFirstFormalizationPlan A :=
  finite_abel_estimate_gates_to_minimal_first_target_plan P.estimateGatePlan

/-- R1977D still yields R1963D pre-target slots. -/
def dependency_closure_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (P : EstimateDependencyClosurePlan A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A :=
  finite_abel_estimate_gates_to_pre_target_slots P.estimateGatePlan

/-- Endpoint dependency table records no concrete endpoint estimate. -/
theorem endpoint_dependency_table_records_no_concrete_endpoint_estimate
    {A : AnalyticRealizationObligations}
    {P : FiniteAbelEstimateGatePlan A}
    (E : EndpointEstimateDependencyTableSlot P)
    (h : E.provesConcreteEndpointEstimateHere = false) :
    E.provesConcreteEndpointEstimateHere = false := by
  exact h

/-- Boundary-error dependency table records no concrete boundary limit. -/
theorem boundary_error_dependency_table_records_no_boundary_limit
    {A : AnalyticRealizationObligations}
    {P : FiniteAbelEstimateGatePlan A}
    (B : BoundaryErrorDependencyTableSlot P)
    (h : B.provesConcreteBoundaryLimitHere = false) :
    B.provesConcreteBoundaryLimitHere = false := by
  exact h

/-- Closure table records that no RH proof is produced here. -/
theorem closure_table_records_no_rh_proof
    {A : AnalyticRealizationObligations}
    {P : FiniteAbelEstimateGatePlan A}
    (C : EstimateDependencyClosureTableSlot P)
    (h : C.provesRHHere = false) :
    C.provesRHHere = false := by
  exact h

end R1977DLeanEstimateDependencyClosure
