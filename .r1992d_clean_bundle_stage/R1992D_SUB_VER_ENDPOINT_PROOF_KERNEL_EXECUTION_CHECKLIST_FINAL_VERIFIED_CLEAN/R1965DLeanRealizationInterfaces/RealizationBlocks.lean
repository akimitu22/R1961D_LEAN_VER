import R1964DLeanAnalyticMicroTargets

namespace R1965DLeanRealizationInterfaces

open R1962DLeanAnalyticRealization
open R1964DLeanAnalyticMicroTargets

/--
R1965D block kinds.  These are realization-interface blocks, one level closer
than R1964D micro-targets to the eventual concrete Li/zeta formalization.
They do not assert that the analytic content has already been proved.
-/
inductive RealizationInterfaceBlockKind where
  | actualLiKernelBlock
  | abelBoundaryBlock
  | explicitFormulaBlock
  | primePacketBlock
  | zeroPacketBlock
  | endpointPacketBlock
  | scaleErrorBlock
  | obstructionLedgerBlock
  | residualExclusionBlock
  | finalAssemblyBlock
  deriving DecidableEq, Repr

/--
A review-facing profile for one realization-interface block.
The fields are intentionally propositional targets: later versions can replace
these targets by concrete Li/zeta definitions and theorems.
-/
structure RealizationInterfaceProfile where
  blockKind : RealizationInterfaceBlockKind
  parentSlot : AnalyticRealizationSlot
  actualDefinitionLayer : Prop
  wellPosednessLayer : Prop
  normalizationLayer : Prop
  theoremLayer : Prop
  feedsMicroTargetLayer : Prop
  nonClaimBoundary : Prop

/-- Interface block for the actual Li kernel. -/
structure ActualLiKernelInterface (A : AnalyticRealizationObligations) where
  actualObjectDefinition : Prop
  wellPosednessAndDomain : Prop
  normalizationAndScale : Prop
  realizesKernelSlot :
    actualObjectDefinition →
    wellPosednessAndDomain →
    normalizationAndScale →
    A.actualLiKernelRegistered

namespace ActualLiKernelInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (K : ActualLiKernelInterface A) : KernelMicroTargets A :=
  { actualKernelDefined := K.actualObjectDefinition
    kernelWellPosedOnAdmissibleSide := K.wellPosednessAndDomain
    canonicalLiPhaseNormalization := K.normalizationAndScale
    kernelRealizesSlot := K.realizesKernelSlot }

end ActualLiKernelInterface

/-- Interface block for the actual Abel-boundary functional. -/
structure AbelBoundaryInterface (A : AnalyticRealizationObligations) where
  actualBoundaryDefinition : Prop
  boundaryWellPosednessAndLimit : Prop
  sameScaleAsLiKernel : Prop
  realizesBoundarySlot :
    actualBoundaryDefinition →
    boundaryWellPosednessAndLimit →
    sameScaleAsLiKernel →
    A.actualAbelBoundaryRegistered

namespace AbelBoundaryInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (B : AbelBoundaryInterface A) : AbelBoundaryMicroTargets A :=
  { actualBoundaryFunctionalDefined := B.actualBoundaryDefinition
    boundaryLimitExistsOnAdmissibleSide := B.boundaryWellPosednessAndLimit
    boundaryUsesSameScaleAsLiKernel := B.sameScaleAsLiKernel
    boundaryRealizesSlot := B.realizesBoundarySlot }

end AbelBoundaryInterface

/-- Interface block for the explicit-formula connection. -/
structure ExplicitFormulaInterface (A : AnalyticRealizationObligations) where
  primeZeroObjectsRegistered : Prop
  explicitFormulaIdentity : Prop
  boundaryCompatibility : Prop
  realizesExplicitFormulaSlot :
    primeZeroObjectsRegistered →
    explicitFormulaIdentity →
    boundaryCompatibility →
    A.actualExplicitFormulaAvailable

namespace ExplicitFormulaInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (E : ExplicitFormulaInterface A) : ExplicitFormulaMicroTargets A :=
  { primeZeroObjectsRegistered := E.primeZeroObjectsRegistered
    explicitFormulaIdentityStated := E.explicitFormulaIdentity
    explicitFormulaCompatibleWithBoundary := E.boundaryCompatibility
    explicitFormulaRealizesSlot := E.realizesExplicitFormulaSlot }

end ExplicitFormulaInterface

/-- Interface block for the prime packet estimate. -/
structure PrimePacketEstimateInterface (A : AnalyticRealizationObligations) where
  packetObjectDefined : Prop
  packetEstimateAtBoundaryScale : Prop
  explicitFormulaCompatibility : Prop
  realizesPrimePacketSlot :
    packetObjectDefined →
    packetEstimateAtBoundaryScale →
    explicitFormulaCompatibility →
    A.primePacketEstimate

namespace PrimePacketEstimateInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (P : PrimePacketEstimateInterface A) : PrimePacketMicroTargets A :=
  { primePacketDefined := P.packetObjectDefined
    primePacketBoundedAtBoundaryScale := P.packetEstimateAtBoundaryScale
    primePacketCompatibleWithExplicitFormula := P.explicitFormulaCompatibility
    primePacketRealizesSlot := P.realizesPrimePacketSlot }

end PrimePacketEstimateInterface

/-- Interface block for the zero packet estimate. -/
structure ZeroPacketEstimateInterface (A : AnalyticRealizationObligations) where
  packetObjectDefined : Prop
  packetEstimateAtBoundaryScale : Prop
  explicitFormulaCompatibility : Prop
  realizesZeroPacketSlot :
    packetObjectDefined →
    packetEstimateAtBoundaryScale →
    explicitFormulaCompatibility →
    A.zeroPacketEstimate

namespace ZeroPacketEstimateInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (Z : ZeroPacketEstimateInterface A) : ZeroPacketMicroTargets A :=
  { zeroPacketDefined := Z.packetObjectDefined
    zeroPacketBoundedAtBoundaryScale := Z.packetEstimateAtBoundaryScale
    zeroPacketCompatibleWithExplicitFormula := Z.explicitFormulaCompatibility
    zeroPacketRealizesSlot := Z.realizesZeroPacketSlot }

end ZeroPacketEstimateInterface

/-- Interface block for endpoint packet control. -/
structure EndpointPacketEstimateInterface (A : AnalyticRealizationObligations) where
  endpointObjectDefined : Prop
  endpointRemainderEstimate : Prop
  boundaryScaleCompatibility : Prop
  realizesEndpointPacketSlot :
    endpointObjectDefined →
    endpointRemainderEstimate →
    boundaryScaleCompatibility →
    A.endpointPacketEstimate

namespace EndpointPacketEstimateInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (E : EndpointPacketEstimateInterface A) : EndpointPacketMicroTargets A :=
  { endpointPacketDefined := E.endpointObjectDefined
    endpointRemainderControlled := E.endpointRemainderEstimate
    endpointCompatibleWithBoundaryScale := E.boundaryScaleCompatibility
    endpointRealizesSlot := E.realizesEndpointPacketSlot }

end EndpointPacketEstimateInterface

/-- Interface block for scale-error and little-oh control. -/
structure ScaleErrorInterface (A : AnalyticRealizationObligations) where
  scaleErrorObjectDefined : Prop
  littleOhEstimate : Prop
  noHiddenScaleDrift : Prop
  realizesScaleErrorSlot :
    scaleErrorObjectDefined →
    littleOhEstimate →
    noHiddenScaleDrift →
    A.scaleErrorAndLittleOhEstimate

namespace ScaleErrorInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (S : ScaleErrorInterface A) : ScaleErrorMicroTargets A :=
  { scaleErrorTermDefined := S.scaleErrorObjectDefined
    littleOhAtBoundaryScale := S.littleOhEstimate
    noHiddenScaleDrift := S.noHiddenScaleDrift
    scaleErrorRealizesSlot := S.realizesScaleErrorSlot }

end ScaleErrorInterface

/-- Interface block for obstruction-ledger compatibility. -/
structure ObstructionLedgerInterface (A : AnalyticRealizationObligations) where
  ledgerDefined : Prop
  packetEntriesRegistered : Prop
  compatibleWithR1961PacketLayer : Prop
  realizesObstructionSlot :
    ledgerDefined →
    packetEntriesRegistered →
    compatibleWithR1961PacketLayer →
    A.obstructionLedgerCompatibility

namespace ObstructionLedgerInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (O : ObstructionLedgerInterface A) : ObstructionLedgerMicroTargets A :=
  { obstructionLedgerDefined := O.ledgerDefined
    allPacketEntriesRegistered := O.packetEntriesRegistered
    ledgerCompatibleWithR1961PacketLayer := O.compatibleWithR1961PacketLayer
    obstructionRealizesSlot := O.realizesObstructionSlot }

end ObstructionLedgerInterface

/-- Interface block for terminal no-hidden-residual control. -/
structure ResidualExclusionInterface (A : AnalyticRealizationObligations) where
  residualObjectDefined : Prop
  residualAbsorbedOrExcluded : Prop
  terminalNoHiddenResidualAtTargetScale : Prop
  realizesResidualSlot :
    residualObjectDefined →
    residualAbsorbedOrExcluded →
    terminalNoHiddenResidualAtTargetScale →
    A.terminalNoHiddenResidual

namespace ResidualExclusionInterface

def toMicroTargets {A : AnalyticRealizationObligations}
    (R : ResidualExclusionInterface A) : ResidualMicroTargets A :=
  { residualPacketDefined := R.residualObjectDefined
    residualAbsorbedOrExcluded := R.residualAbsorbedOrExcluded
    terminalNoHiddenResidualAtTargetScale := R.terminalNoHiddenResidualAtTargetScale
    residualRealizesSlot := R.realizesResidualSlot }

end ResidualExclusionInterface

end R1965DLeanRealizationInterfaces
