import R1962DLeanAnalyticRealization

namespace R1963DLeanAnalyticDecomposition

open R1962DLeanAnalyticRealization

/--
R1963D decomposes each remaining analytic-realization slot into a stable
formalization profile.  These categories are work kinds, not new analytic
claims.
-/
inductive AnalyticWorkKind where
  | actualObjectRegistration
  | explicitFormulaBridge
  | packetEstimate
  | scaleAndLimitControl
  | obstructionCompatibility
  | residualExclusion
  | finalTargetConnection
  deriving DecidableEq, Repr

/-- A coarse status marker for the current stage of each analytic obligation. -/
inductive FormalizationStatus where
  | targetLanguageOnly
  | abstractBridgeVerified
  | requiresMathlibAnchor
  | requiresNewAnalyticFormalization
  deriving DecidableEq, Repr

/--
A Lean-checkable profile for one analytic obligation.

The Prop fields are intentionally separated:
* `actualDefinition` asks for the concrete mathematical object;
* `targetTheorem` asks for the theorem/estimate to be proved about it;
* `mathlibDependency` records dependence on existing or future library facts;
* `newLemmaNeeded` records new formalized analysis still required;
* `connectsToR1962Obligations` and `connectsToR1961PacketLayer` record the
  bridge into the already verified abstract packet layer.
-/
structure ObligationProfile where
  slot : AnalyticRealizationSlot
  workKind : AnalyticWorkKind
  status : FormalizationStatus
  actualDefinition : Prop
  targetTheorem : Prop
  mathlibDependency : Prop
  newLemmaNeeded : Prop
  connectsToR1962Obligations : Prop
  connectsToR1961PacketLayer : Prop
  nonClaimBoundary : Prop

/-- Does this slot ultimately require concrete analytic formalization beyond the abstract bridge? -/
def requiresConcreteAnalysis : AnalyticRealizationSlot → Bool
  | AnalyticRealizationSlot.actualLiKernel => true
  | AnalyticRealizationSlot.actualAbelBoundary => true
  | AnalyticRealizationSlot.actualExplicitFormula => true
  | AnalyticRealizationSlot.primePacketEstimate => true
  | AnalyticRealizationSlot.zeroPacketEstimate => true
  | AnalyticRealizationSlot.endpointPacketEstimate => true
  | AnalyticRealizationSlot.scaleErrorAndLittleOhEstimate => true
  | AnalyticRealizationSlot.obstructionLedgerCompatibility => true
  | AnalyticRealizationSlot.terminalNoHiddenResidual => true
  | AnalyticRealizationSlot.actualLiTarget => false

/-- Does this slot feed directly into one of the R1961D packet controls? -/
def feedsPacketControl : AnalyticRealizationSlot → Bool
  | AnalyticRealizationSlot.primePacketEstimate => true
  | AnalyticRealizationSlot.zeroPacketEstimate => true
  | AnalyticRealizationSlot.endpointPacketEstimate => true
  | AnalyticRealizationSlot.scaleErrorAndLittleOhEstimate => true
  | AnalyticRealizationSlot.obstructionLedgerCompatibility => true
  | AnalyticRealizationSlot.terminalNoHiddenResidual => true
  | _ => false

/-- Does this slot provide common anchoring data for all packet estimates? -/
def providesCommonAnchor : AnalyticRealizationSlot → Bool
  | AnalyticRealizationSlot.actualLiKernel => true
  | AnalyticRealizationSlot.actualAbelBoundary => true
  | AnalyticRealizationSlot.actualExplicitFormula => true
  | _ => false

/-- A canonical profile for each R1962D analytic-realization slot. -/
def profileOfSlot : AnalyticRealizationSlot → ObligationProfile
  | AnalyticRealizationSlot.actualLiKernel =>
      { slot := AnalyticRealizationSlot.actualLiKernel
        workKind := AnalyticWorkKind.actualObjectRegistration
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.actualAbelBoundary =>
      { slot := AnalyticRealizationSlot.actualAbelBoundary
        workKind := AnalyticWorkKind.actualObjectRegistration
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.actualExplicitFormula =>
      { slot := AnalyticRealizationSlot.actualExplicitFormula
        workKind := AnalyticWorkKind.explicitFormulaBridge
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.primePacketEstimate =>
      { slot := AnalyticRealizationSlot.primePacketEstimate
        workKind := AnalyticWorkKind.packetEstimate
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.zeroPacketEstimate =>
      { slot := AnalyticRealizationSlot.zeroPacketEstimate
        workKind := AnalyticWorkKind.packetEstimate
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.endpointPacketEstimate =>
      { slot := AnalyticRealizationSlot.endpointPacketEstimate
        workKind := AnalyticWorkKind.packetEstimate
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.scaleErrorAndLittleOhEstimate =>
      { slot := AnalyticRealizationSlot.scaleErrorAndLittleOhEstimate
        workKind := AnalyticWorkKind.scaleAndLimitControl
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.obstructionLedgerCompatibility =>
      { slot := AnalyticRealizationSlot.obstructionLedgerCompatibility
        workKind := AnalyticWorkKind.obstructionCompatibility
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.terminalNoHiddenResidual =>
      { slot := AnalyticRealizationSlot.terminalNoHiddenResidual
        workKind := AnalyticWorkKind.residualExclusion
        status := FormalizationStatus.requiresNewAnalyticFormalization
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := True
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }
  | AnalyticRealizationSlot.actualLiTarget =>
      { slot := AnalyticRealizationSlot.actualLiTarget
        workKind := AnalyticWorkKind.finalTargetConnection
        status := FormalizationStatus.abstractBridgeVerified
        actualDefinition := True
        targetTheorem := True
        mathlibDependency := True
        newLemmaNeeded := False
        connectsToR1962Obligations := True
        connectsToR1961PacketLayer := True
        nonClaimBoundary := True }

/-- Every R1962D analytic-realization slot has a canonical decomposition profile. -/
theorem every_slot_has_profile (s : AnalyticRealizationSlot) :
    ∃ p : ObligationProfile, p.slot = s := by
  exact ⟨profileOfSlot s, by cases s <;> rfl⟩

/-- The canonical profile remembers the slot it profiles. -/
theorem profile_slot_matches (s : AnalyticRealizationSlot) :
    (profileOfSlot s).slot = s := by
  cases s <;> rfl

/-- Each profile explicitly carries the non-claim boundary. -/
theorem profile_non_claim_boundary (s : AnalyticRealizationSlot) :
    (profileOfSlot s).nonClaimBoundary := by
  cases s <;> trivial

/-- Packet-estimate slots are exactly marked as feeding the packet layer. -/
theorem prime_packet_feeds_packet_control :
    feedsPacketControl AnalyticRealizationSlot.primePacketEstimate = true := by
  rfl

theorem zero_packet_feeds_packet_control :
    feedsPacketControl AnalyticRealizationSlot.zeroPacketEstimate = true := by
  rfl

theorem endpoint_packet_feeds_packet_control :
    feedsPacketControl AnalyticRealizationSlot.endpointPacketEstimate = true := by
  rfl

theorem scale_packet_feeds_packet_control :
    feedsPacketControl AnalyticRealizationSlot.scaleErrorAndLittleOhEstimate = true := by
  rfl

/-- Common anchor slots are explicitly separated from packet estimates. -/
theorem actual_li_kernel_provides_common_anchor :
    providesCommonAnchor AnalyticRealizationSlot.actualLiKernel = true := by
  rfl

theorem actual_abel_boundary_provides_common_anchor :
    providesCommonAnchor AnalyticRealizationSlot.actualAbelBoundary = true := by
  rfl

theorem actual_explicit_formula_provides_common_anchor :
    providesCommonAnchor AnalyticRealizationSlot.actualExplicitFormula = true := by
  rfl

end R1963DLeanAnalyticDecomposition
