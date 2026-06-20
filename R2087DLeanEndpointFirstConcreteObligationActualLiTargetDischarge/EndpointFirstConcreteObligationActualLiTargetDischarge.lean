import R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence

namespace R2087DLeanEndpointFirstConcreteObligationActualLiTargetDischarge

def ActualLiTargetDischargeStatement
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) : Prop :=
  R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence.NonCircularAnalyticEvidence A →
    A.actualLiTarget

theorem actual_li_target_from_nine_analytic_components
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (actualLiKernelRegistered : A.actualLiKernelRegistered)
    (actualAbelBoundaryRegistered : A.actualAbelBoundaryRegistered)
    (actualExplicitFormulaAvailable : A.actualExplicitFormulaAvailable)
    (primePacketEstimate : A.primePacketEstimate)
    (zeroPacketEstimate : A.zeroPacketEstimate)
    (endpointPacketEstimate : A.endpointPacketEstimate)
    (scaleErrorAndLittleOhEstimate : A.scaleErrorAndLittleOhEstimate)
    (obstructionLedgerCompatibility : A.obstructionLedgerCompatibility)
    (terminalNoHiddenResidual : A.terminalNoHiddenResidual) :
    A.actualLiTarget :=
  A.targetFromAnalyticObligations
    actualLiKernelRegistered
    actualAbelBoundaryRegistered
    actualExplicitFormulaAvailable
    primePacketEstimate
    zeroPacketEstimate
    endpointPacketEstimate
    scaleErrorAndLittleOhEstimate
    obstructionLedgerCompatibility
    terminalNoHiddenResidual

theorem endpoint_first_concrete_obligation_actual_li_target_discharge
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) :
    ActualLiTargetDischargeStatement A :=
  fun evidence =>
    actual_li_target_from_nine_analytic_components
      evidence.actualLiKernelRegistered
      evidence.actualAbelBoundaryRegistered
      evidence.actualExplicitFormulaAvailable
      evidence.primePacketEstimate
      evidence.zeroPacketEstimate
      evidence.endpointPacketEstimate
      evidence.scaleErrorAndLittleOhEstimate
      evidence.obstructionLedgerCompatibility
      evidence.terminalNoHiddenResidual

theorem endpoint_first_concrete_obligation_actual_li_target_without_dependency_closure
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (evidence : R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence.NonCircularAnalyticEvidence A) :
    A.actualLiTarget :=
  endpoint_first_concrete_obligation_actual_li_target_discharge A evidence

end R2087DLeanEndpointFirstConcreteObligationActualLiTargetDischarge
