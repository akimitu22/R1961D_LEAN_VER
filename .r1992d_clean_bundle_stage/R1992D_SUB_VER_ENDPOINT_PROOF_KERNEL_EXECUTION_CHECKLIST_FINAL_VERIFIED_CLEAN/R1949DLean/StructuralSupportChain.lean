import R1949DLean.AssumptionPackages

namespace R1949DLean

theorem structural_support_exists
    (Th : Theory)
    (SE : SupportExhaustionAxioms Th)
    (T : CoherentOperation)
    (hCoh : Th.InCoherentClosure T) :
    ∃ S : StructuralSupport, Th.HasStructuralSupport T S := by
  exact SE.coordinateSupportExhaustion T hCoh

theorem generator_realized_from_support
    (Th : Theory)
    (LR : LayerRealizationAxioms Th.layerCtx)
    (GR : GeneratorRealizationAxioms Th)
    (T : CoherentOperation)
    (S : StructuralSupport)
    (hSupp : Th.HasStructuralSupport T S) :
    Th.GeneratorRealized T := by
  have hLayer : LayerRealizable Th.layerCtx S.layer :=
    structural_support_layer_realizable Th.layerCtx LR S
  exact GR.supportActionGeneratorRealization T S hSupp hLayer

theorem coherent_closure_normal_form_chain
    (Th : Theory)
    (SE : SupportExhaustionAxioms Th)
    (LR : LayerRealizationAxioms Th.layerCtx)
    (GR : GeneratorRealizationAxioms Th)
    (T : CoherentOperation)
    (hCoh : Th.InCoherentClosure T) :
    Th.InGeneratedClosure T := by
  have hExists := structural_support_exists Th SE T hCoh
  cases hExists with
  | intro S hSupp =>
    have hReal : Th.GeneratorRealized T :=
      generator_realized_from_support Th LR GR T S hSupp
    exact GR.generatorRealizationEntersGeneratedClosure T hReal

end R1949DLean
