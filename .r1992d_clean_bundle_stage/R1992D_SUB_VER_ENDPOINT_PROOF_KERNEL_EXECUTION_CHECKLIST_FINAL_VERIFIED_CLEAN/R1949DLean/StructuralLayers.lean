import R1949DLean.Basic

namespace R1949DLean

inductive StructuralLayer where
  | kernel
  | phase
  | tangent
  | phaseCell
  | abelBoundary
  | explicitFormula
  | density
  | residual
  | scaleTopology
  | obstructionQuotient
  deriving Repr, DecidableEq

structure StructuralSupport where
  layer : StructuralLayer

structure LayerRealizationContext where
  RealizesLayer : Generator → StructuralLayer → Prop

def LayerRealizable (Ctx : LayerRealizationContext) (L : StructuralLayer) : Prop :=
  ∃ G : Generator, Ctx.RealizesLayer G L

structure LayerRealizationAxioms (Ctx : LayerRealizationContext) where
  kernelRealizable : LayerRealizable Ctx StructuralLayer.kernel
  phaseRealizable : LayerRealizable Ctx StructuralLayer.phase
  tangentRealizable : LayerRealizable Ctx StructuralLayer.tangent
  phaseCellRealizable : LayerRealizable Ctx StructuralLayer.phaseCell
  abelBoundaryRealizable : LayerRealizable Ctx StructuralLayer.abelBoundary
  explicitFormulaRealizable : LayerRealizable Ctx StructuralLayer.explicitFormula
  densityRealizable : LayerRealizable Ctx StructuralLayer.density
  residualRealizable : LayerRealizable Ctx StructuralLayer.residual
  scaleTopologyRealizable : LayerRealizable Ctx StructuralLayer.scaleTopology
  obstructionQuotientRealizable : LayerRealizable Ctx StructuralLayer.obstructionQuotient

theorem listed_layer_realizable_from_axioms
    (Ctx : LayerRealizationContext)
    (LR : LayerRealizationAxioms Ctx)
    (L : StructuralLayer) :
    LayerRealizable Ctx L := by
  cases L with
  | kernel => exact LR.kernelRealizable
  | phase => exact LR.phaseRealizable
  | tangent => exact LR.tangentRealizable
  | phaseCell => exact LR.phaseCellRealizable
  | abelBoundary => exact LR.abelBoundaryRealizable
  | explicitFormula => exact LR.explicitFormulaRealizable
  | density => exact LR.densityRealizable
  | residual => exact LR.residualRealizable
  | scaleTopology => exact LR.scaleTopologyRealizable
  | obstructionQuotient => exact LR.obstructionQuotientRealizable

theorem structural_support_layer_realizable
    (Ctx : LayerRealizationContext)
    (LR : LayerRealizationAxioms Ctx)
    (S : StructuralSupport) :
    LayerRealizable Ctx S.layer := by
  exact listed_layer_realizable_from_axioms Ctx LR S.layer

end R1949DLean
