import R1963DLeanAnalyticDecomposition

namespace R1964DLeanAnalyticMicroTargets

open R1962DLeanAnalyticRealization
open R1963DLeanAnalyticDecomposition

/--
R1964D micro-target categories.  They refine the R1963D obligation profiles
without asserting any new zeta-theoretic theorem.
-/
inductive AnalyticMicroWorkKind where
  | actualObjectDefinition
  | wellPosednessAndDomain
  | normalizationAndScale
  | representationIdentity
  | explicitFormulaCompatibility
  | packetBound
  | limitAndLittleOhControl
  | ledgerCompatibility
  | residualExclusion
  | finalBridge
  deriving DecidableEq, Repr

/--
A small Lean-checkable target attached to one R1962D/R1963D analytic slot.
The Prop fields are placeholders for future concrete Li/zeta formalization;
this layer only records the micro-decomposition and the bridge shape.
-/
structure AnalyticMicroTargetProfile where
  parentSlot : AnalyticRealizationSlot
  workKind : AnalyticMicroWorkKind
  microStatement : Prop
  mathlibAnchor : Prop
  newFormalLemma : Prop
  feedsParentSlot : Prop
  nonClaimBoundary : Prop

/-- Micro-targets realizing the actual Li-kernel slot. -/
structure KernelMicroTargets (A : AnalyticRealizationObligations) where
  actualKernelDefined : Prop
  kernelWellPosedOnAdmissibleSide : Prop
  canonicalLiPhaseNormalization : Prop
  kernelRealizesSlot :
    actualKernelDefined →
    kernelWellPosedOnAdmissibleSide →
    canonicalLiPhaseNormalization →
    A.actualLiKernelRegistered

/-- Micro-targets realizing the actual Abel-boundary slot. -/
structure AbelBoundaryMicroTargets (A : AnalyticRealizationObligations) where
  actualBoundaryFunctionalDefined : Prop
  boundaryLimitExistsOnAdmissibleSide : Prop
  boundaryUsesSameScaleAsLiKernel : Prop
  boundaryRealizesSlot :
    actualBoundaryFunctionalDefined →
    boundaryLimitExistsOnAdmissibleSide →
    boundaryUsesSameScaleAsLiKernel →
    A.actualAbelBoundaryRegistered

/-- Micro-targets realizing the actual explicit-formula slot. -/
structure ExplicitFormulaMicroTargets (A : AnalyticRealizationObligations) where
  primeZeroObjectsRegistered : Prop
  explicitFormulaIdentityStated : Prop
  explicitFormulaCompatibleWithBoundary : Prop
  explicitFormulaRealizesSlot :
    primeZeroObjectsRegistered →
    explicitFormulaIdentityStated →
    explicitFormulaCompatibleWithBoundary →
    A.actualExplicitFormulaAvailable

/-- Micro-targets for the prime packet estimate. -/
structure PrimePacketMicroTargets (A : AnalyticRealizationObligations) where
  primePacketDefined : Prop
  primePacketBoundedAtBoundaryScale : Prop
  primePacketCompatibleWithExplicitFormula : Prop
  primePacketRealizesSlot :
    primePacketDefined →
    primePacketBoundedAtBoundaryScale →
    primePacketCompatibleWithExplicitFormula →
    A.primePacketEstimate

/-- Micro-targets for the zero packet estimate. -/
structure ZeroPacketMicroTargets (A : AnalyticRealizationObligations) where
  zeroPacketDefined : Prop
  zeroPacketBoundedAtBoundaryScale : Prop
  zeroPacketCompatibleWithExplicitFormula : Prop
  zeroPacketRealizesSlot :
    zeroPacketDefined →
    zeroPacketBoundedAtBoundaryScale →
    zeroPacketCompatibleWithExplicitFormula →
    A.zeroPacketEstimate

/-- Micro-targets for endpoint packet control. -/
structure EndpointPacketMicroTargets (A : AnalyticRealizationObligations) where
  endpointPacketDefined : Prop
  endpointRemainderControlled : Prop
  endpointCompatibleWithBoundaryScale : Prop
  endpointRealizesSlot :
    endpointPacketDefined →
    endpointRemainderControlled →
    endpointCompatibleWithBoundaryScale →
    A.endpointPacketEstimate

/-- Micro-targets for scale-error and little-oh control. -/
structure ScaleErrorMicroTargets (A : AnalyticRealizationObligations) where
  scaleErrorTermDefined : Prop
  littleOhAtBoundaryScale : Prop
  noHiddenScaleDrift : Prop
  scaleErrorRealizesSlot :
    scaleErrorTermDefined →
    littleOhAtBoundaryScale →
    noHiddenScaleDrift →
    A.scaleErrorAndLittleOhEstimate

/-- Micro-targets for obstruction-ledger compatibility. -/
structure ObstructionLedgerMicroTargets (A : AnalyticRealizationObligations) where
  obstructionLedgerDefined : Prop
  allPacketEntriesRegistered : Prop
  ledgerCompatibleWithR1961PacketLayer : Prop
  obstructionRealizesSlot :
    obstructionLedgerDefined →
    allPacketEntriesRegistered →
    ledgerCompatibleWithR1961PacketLayer →
    A.obstructionLedgerCompatibility

/-- Micro-targets for excluding hidden residual packet terms. -/
structure ResidualMicroTargets (A : AnalyticRealizationObligations) where
  residualPacketDefined : Prop
  residualAbsorbedOrExcluded : Prop
  terminalNoHiddenResidualAtTargetScale : Prop
  residualRealizesSlot :
    residualPacketDefined →
    residualAbsorbedOrExcluded →
    terminalNoHiddenResidualAtTargetScale →
    A.terminalNoHiddenResidual

/--
A full R1964D micro-target system for the remaining analytic realization layer.
It refines the nine pre-target slots isolated in R1963D.
-/
structure AnalyticMicroTargetSystem (A : AnalyticRealizationObligations) where
  kernel : KernelMicroTargets A
  boundary : AbelBoundaryMicroTargets A
  explicitFormula : ExplicitFormulaMicroTargets A
  prime : PrimePacketMicroTargets A
  zero : ZeroPacketMicroTargets A
  endpoint : EndpointPacketMicroTargets A
  scale : ScaleErrorMicroTargets A
  obstruction : ObstructionLedgerMicroTargets A
  residual : ResidualMicroTargets A

end R1964DLeanAnalyticMicroTargets
