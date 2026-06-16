import R1955DLeanScaffold.RefinedBridgeObligations
import R1954DLeanBridge.BridgeTheorems

namespace R1955DLeanScaffold

open R1949DLean
open R1954DLeanBridge

structure LiKernelBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  liCoefficientFamilyReady : S.hasLiCoefficientFamily
  liKernelObjectReady : S.hasLiKernelObject
  finiteLiObjectReady : FiniteLiObjectReady M.finiteLiObject

structure AbelBoundaryBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  abelRegularizationObjectReady : S.hasAbelRegularizationObject
  abelBoundaryObjectReady : AbelBoundaryObjectReady M.abelBoundaryObject

structure ExplicitFormulaBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  zeroDataObjectReady : S.hasZeroDataObject
  primePacketObjectReady : S.hasPrimePacketObject
  endpointBoundaryObjectReady : S.hasEndpointBoundaryObject
  explicitFormulaPacketsReady : ExplicitFormulaPacketObjectReady M.explicitFormulaPacketObject
  coherentClosureObjectReady : CoherentClosureObjectReady M.coherentClosureObject

structure ScaleTopologyBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  scaleTopologyObjectReady : S.hasScaleTopologyObject
  manuscriptScaleTopologyReady : ScaleTopologyObjectReady M.scaleTopologyObject

structure TerminalPacketBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  terminalPacketReady : TerminalPacketObjectReady M.terminalPacketObject
  terminalPacketMatchesStandardZeroData : S.hasZeroDataObject

structure ObstructionQuotientBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  standardObstructionQuotientReady : S.hasObstructionQuotientObject
  manuscriptObstructionQuotientReady : ObstructionQuotientObjectReady M.obstructionQuotientObject

structure LiTargetConclusionBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  noEscapeToLiCriterionTarget :
    M.bridgeContext.bookkeeping.finiteToAbelClosureNecessity →
    M.bridgeContext.theory.InGeneratedClosure M.bridgeContext.operation →
    (¬ M.bridgeContext.theory.InternallyKills M.bridgeContext.operation M.bridgeContext.terminalClass) →
    S.standardContext.liCriterionTarget
  liCriterionTargetToStandardConclusion :
    S.standardContext.liCriterionTarget → S.standardContext.standardAnalyticConclusion
  terminalExtensionToStandardConclusion :
    M.bridgeContext.theory.TerminalIdealExtension M.bridgeContext.terminalClass →
    S.standardContext.standardAnalyticConclusion


structure RefinedBridgeAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  standardScaffoldReady : StandardLiScaffoldReady S
  manuscriptScaffoldReady : ManuscriptAnalyticScaffoldReady M
  liKernelBridge : LiKernelBridgeAxioms S M
  abelBoundaryBridge : AbelBoundaryBridgeAxioms S M
  explicitFormulaBridge : ExplicitFormulaBridgeAxioms S M
  scaleTopologyBridge : ScaleTopologyBridgeAxioms S M
  terminalPacketBridge : TerminalPacketBridgeAxioms S M
  obstructionQuotientBridge : ObstructionQuotientBridgeAxioms S M
  liTargetConclusionBridge : LiTargetConclusionBridgeAxioms S M


def refined_bridge_axioms_to_r1954_bridge_axioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M) :
    BridgeAxioms S.standardContext M.bridgeContext :=
  { standardReady := (standard_li_scaffold_ready_unpacks S RA.standardScaffoldReady).left
    manuscriptReady := (manuscript_analytic_scaffold_ready_unpacks M RA.manuscriptScaffoldReady).left
    noEscapeToLiCriterionTarget := RA.liTargetConclusionBridge.noEscapeToLiCriterionTarget
    liCriterionTargetToStandardConclusion := RA.liTargetConclusionBridge.liCriterionTargetToStandardConclusion
    terminalExtensionToStandardConclusion := RA.liTargetConclusionBridge.terminalExtensionToStandardConclusion }


theorem refined_bridge_axioms_assemble_r1954_bridge_axioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M) :
    Nonempty (BridgeAxioms S.standardContext M.bridgeContext) := by
  exact ⟨refined_bridge_axioms_to_r1954_bridge_axioms S M RA⟩


theorem refined_bridge_axioms_provide_standard_scaffold_readiness
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M) :
    StandardLiScaffoldReady S := by
  exact RA.standardScaffoldReady


theorem refined_bridge_axioms_provide_manuscript_scaffold_readiness
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M) :
    ManuscriptAnalyticScaffoldReady M := by
  exact RA.manuscriptScaffoldReady


theorem refined_bridge_axioms_provide_r1954_standard_readiness
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M) :
    StandardRHReady S.standardContext := by
  exact (standard_li_scaffold_ready_unpacks S RA.standardScaffoldReady).left


theorem refined_bridge_axioms_provide_r1954_manuscript_readiness
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (RA : RefinedBridgeAxioms S M) :
    ManuscriptBridgeReady M.bridgeContext := by
  exact (manuscript_analytic_scaffold_ready_unpacks M RA.manuscriptScaffoldReady).left

end R1955DLeanScaffold
