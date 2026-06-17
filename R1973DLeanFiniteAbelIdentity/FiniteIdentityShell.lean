import R1972DLeanToyAbelModel

namespace R1973DLeanFiniteAbelIdentity

open R1972DLeanToyAbelModel
open R1971DLeanAbelBoundarySkeleton
open R1970DLeanFirstFormalizationTarget
open R1962DLeanAnalyticRealization

/--
R1973D finite Abel-transform identity shell.

This is still a shell, not the concrete analytic finite Abel identity.  It
records the carriers and registration checks needed for a later theorem proving
that the finite surrogate transform has the intended left/right identity form.
-/
structure FiniteAbelTransformIdentityShell
    {A : AnalyticRealizationObligations}
    (P : ToyAnalyticAbelModelPlan A) where
  finiteInputCarrier : Type
  finiteOutputCarrier : Type
  identityLeftCarrier : Type
  identityRightCarrier : Type
  finiteTransformCarrier : Type
  finiteInputRegistered : Prop
  finiteOutputRegistered : Prop
  leftSideRegistered : Prop
  rightSideRegistered : Prop
  transformCarrierRegistered : Prop
  finiteIdentityStatementShell : Prop
  sameFiniteScaleDiscipline : Prop
  compatibleWithR1972FiniteSurrogate : Prop
  compatibleWithR1972ToyModel : Prop
  noHiddenNormalizationInFiniteIdentity : Prop
  provesConcreteFiniteIdentityHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1973D boundary-compatibility lemma shell.

The shell records how a later finite identity proof should connect to the
boundary-limit placeholder introduced in R1972D.  No concrete boundary limit is
proved in this layer.
-/
structure BoundaryCompatibilityLemmaShell
    {A : AnalyticRealizationObligations}
    (P : ToyAnalyticAbelModelPlan A)
    (S : FiniteAbelTransformIdentityShell P) where
  boundaryParameterCarrier : Type
  boundaryComparisonCarrier : Type
  compatibilityStatementShell : Prop
  finiteIdentityFeedsBoundaryPlaceholder : Prop
  compatibleWithR1972BoundaryLimitPlaceholder : Prop
  preservesSameScaleLimitShell : Prop
  preservesNoHiddenRenormalizationShell : Prop
  preservesR1971TargetStatementShell : Prop
  provesConcreteBoundaryCompatibilityHere : Bool
  provesConcreteBoundaryLimitHere : Bool
  provesRealAbelBoundaryIdentityHere : Bool
  nonClaimBoundary : Prop

/--
R1973D finite Abel identity plan: attach a finite identity shell and a boundary
compatibility shell to the R1972D toy Abel model plan.
-/
structure FiniteAbelIdentityShellPlan (A : AnalyticRealizationObligations) where
  toyAbelModelPlan : ToyAnalyticAbelModelPlan A
  finiteIdentityShell : FiniteAbelTransformIdentityShell toyAbelModelPlan
  boundaryCompatibilityShell : BoundaryCompatibilityLemmaShell toyAbelModelPlan finiteIdentityShell
  preservesR1972ToyModel : Prop
  preservesFiniteSurrogate : Prop
  preservesBoundaryLimitPlaceholder : Prop
  preservesR1971SkeletonBridge : Prop
  preservesActualLiTargetBridge : Prop
  nonClaimBoundary : Prop

/-- The finite identity shell remains attached to the R1972D toy Abel model plan. -/
def finite_identity_shell_to_toy_abel_model_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) :
    ToyAnalyticAbelModelPlan A :=
  P.toyAbelModelPlan

/-- The finite identity shell still yields the R1971D skeleton plan. -/
def finite_identity_shell_to_skeleton_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) :
    AbelBoundaryDefinitionSkeletonPlan A :=
  toyAbelModelPlanToSkeletonPlan P.toyAbelModelPlan

/-- The finite identity shell still yields the R1970D minimal first-target plan. -/
def finite_identity_shell_to_minimal_first_target_plan
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) :
    MinimalFirstFormalizationPlan A :=
  toy_abel_model_to_minimal_first_target_plan P.toyAbelModelPlan

/-- The finite identity shell still yields R1963D pre-target slots. -/
def finite_identity_shell_to_pre_target_slots
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) :
    R1963DLeanAnalyticDecomposition.RealizedAnalyticPreTargetSlots A :=
  toy_abel_model_to_pre_target_slots P.toyAbelModelPlan

/-- The finite identity shell stays attached to the Abel-boundary first target. -/
theorem finite_identity_shell_target_is_abel_boundary_definition
    {A : AnalyticRealizationObligations}
    (P : FiniteAbelIdentityShellPlan A) :
    P.toyAbelModelPlan.skeletonPlan.definitionSkeleton.selectedTarget =
      FirstFormalizationTargetKind.abelBoundaryDefinition := by
  exact P.toyAbelModelPlan.skeletonPlan.definitionSkeleton.selectedTargetIsAbelDefinition

/-- The finite identity shell explicitly records that it is not a concrete finite identity proof. -/
theorem finite_identity_shell_records_non_concrete_identity
    {A : AnalyticRealizationObligations}
    {P : ToyAnalyticAbelModelPlan A}
    (S : FiniteAbelTransformIdentityShell P)
    (h : S.provesConcreteFiniteIdentityHere = false) :
    S.provesConcreteFiniteIdentityHere = false := by
  exact h

/-- The boundary compatibility shell explicitly records that it is not a boundary-limit proof. -/
theorem boundary_compatibility_shell_records_no_boundary_limit_proof
    {A : AnalyticRealizationObligations}
    {P : ToyAnalyticAbelModelPlan A}
    {S : FiniteAbelTransformIdentityShell P}
    (B : BoundaryCompatibilityLemmaShell P S)
    (h : B.provesConcreteBoundaryLimitHere = false) :
    B.provesConcreteBoundaryLimitHere = false := by
  exact h

/-- The boundary compatibility shell explicitly records that it is not the real Abel-boundary identity. -/
theorem boundary_compatibility_shell_records_no_real_identity_proof
    {A : AnalyticRealizationObligations}
    {P : ToyAnalyticAbelModelPlan A}
    {S : FiniteAbelTransformIdentityShell P}
    (B : BoundaryCompatibilityLemmaShell P S)
    (h : B.provesRealAbelBoundaryIdentityHere = false) :
    B.provesRealAbelBoundaryIdentityHere = false := by
  exact h

end R1973DLeanFiniteAbelIdentity
