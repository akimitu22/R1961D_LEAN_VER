import R2085DLeanEndpointFirstConcreteObligationEndpointClosedTargetExtraction

namespace R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence

/--
Proofs of exactly the nine analytic premises used by
`AnalyticRealizationObligations.targetFromAnalyticObligations`.
No field assumes `A.actualLiTarget`.
-/
structure NonCircularAnalyticEvidence
    (A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations) : Prop where
  actualLiKernelRegistered : A.actualLiKernelRegistered
  actualAbelBoundaryRegistered : A.actualAbelBoundaryRegistered
  actualExplicitFormulaAvailable : A.actualExplicitFormulaAvailable
  primePacketEstimate : A.primePacketEstimate
  zeroPacketEstimate : A.zeroPacketEstimate
  endpointPacketEstimate : A.endpointPacketEstimate
  scaleErrorAndLittleOhEstimate : A.scaleErrorAndLittleOhEstimate
  obstructionLedgerCompatibility : A.obstructionLedgerCompatibility
  terminalNoHiddenResidual : A.terminalNoHiddenResidual

theorem non_circular_analytic_evidence_has_no_target_assumption
    {A : R1962DLeanAnalyticRealization.AnalyticRealizationObligations}
    (evidence : NonCircularAnalyticEvidence A) :
    A.actualLiKernelRegistered ∧
      A.actualAbelBoundaryRegistered ∧
      A.actualExplicitFormulaAvailable ∧
      A.primePacketEstimate ∧
      A.zeroPacketEstimate ∧
      A.endpointPacketEstimate ∧
      A.scaleErrorAndLittleOhEstimate ∧
      A.obstructionLedgerCompatibility ∧
      A.terminalNoHiddenResidual :=
  ⟨evidence.actualLiKernelRegistered,
    evidence.actualAbelBoundaryRegistered,
    evidence.actualExplicitFormulaAvailable,
    evidence.primePacketEstimate,
    evidence.zeroPacketEstimate,
    evidence.endpointPacketEstimate,
    evidence.scaleErrorAndLittleOhEstimate,
    evidence.obstructionLedgerCompatibility,
    evidence.terminalNoHiddenResidual⟩

end R2086DLeanEndpointFirstConcreteObligationNonCircularAnalyticEvidence
