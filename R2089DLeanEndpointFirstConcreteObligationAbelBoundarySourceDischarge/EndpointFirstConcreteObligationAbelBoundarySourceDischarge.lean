import R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge

namespace R2089DLeanEndpointFirstConcreteObligationAbelBoundarySourceDischarge

structure AbelBoundarySourceEvidence
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations)
    (S : R1966DLeanSourceCategories.ConcreteAnalyticSourceSystem A) : Prop where
  objectSource : S.abelBoundaryObjectSource
  limitSource : S.abelBoundaryLimitSource
  sameScaleSource : S.abelBoundarySameScaleSource

theorem abel_boundary_registered_from_source_evidence
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations)
    (S : R1966DLeanSourceCategories.ConcreteAnalyticSourceSystem A)
    (evidence : AbelBoundarySourceEvidence A S) :
    A.actualAbelBoundaryRegistered :=
  S.abelBoundarySourceRealizes
    evidence.objectSource
    evidence.limitSource
    evidence.sameScaleSource

theorem actual_li_kernel_and_abel_boundary_registered_from_source_evidence
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations)
    (S : R1966DLeanSourceCategories.ConcreteAnalyticSourceSystem A)
    (kernelEvidence :
      R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge.ActualLiKernelSourceEvidence A S)
    (boundaryEvidence : AbelBoundarySourceEvidence A S) :
    A.actualLiKernelRegistered ∧ A.actualAbelBoundaryRegistered :=
  ⟨R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge.actual_li_kernel_registered_from_source_evidence
      A S kernelEvidence,
    abel_boundary_registered_from_source_evidence A S boundaryEvidence⟩

end R2089DLeanEndpointFirstConcreteObligationAbelBoundarySourceDischarge
