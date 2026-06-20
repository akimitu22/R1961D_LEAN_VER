import R2087DLeanEndpointFirstConcreteObligationActualLiTargetDischarge
import R1966DLeanSourceCategories.SourceBridge

namespace R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge

structure ActualLiKernelSourceEvidence
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations)
    (S : R1966DLeanSourceCategories.ConcreteAnalyticSourceSystem A) : Prop where
  objectSource : S.liKernelObjectSource
  wellPosedSource : S.liKernelWellPosedSource
  normalizationSource : S.liKernelNormalizationSource

theorem actual_li_kernel_registered_from_source_evidence
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations)
    (S : R1966DLeanSourceCategories.ConcreteAnalyticSourceSystem A)
    (evidence : ActualLiKernelSourceEvidence A S) :
    A.actualLiKernelRegistered :=
  S.liKernelSourceRealizes
    evidence.objectSource
    evidence.wellPosedSource
    evidence.normalizationSource

end R2088DLeanEndpointFirstConcreteObligationActualLiKernelSourceDischarge
