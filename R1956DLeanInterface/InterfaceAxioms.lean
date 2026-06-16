import R1956DLeanInterface.InterfaceObligations
import R1955DLeanScaffold.RefinedBridgeAxioms

namespace R1956DLeanInterface

open R1955DLeanScaffold

structure PreformalAnalyticInterface
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  standardInput : AnalyticInputInterface
  manuscriptInput : AnalyticInputInterface
  analyticOutput : AnalyticOutputInterface
  bridgeCompatibility : CompatibilityInterface
  liKernelEstimate : EstimateSlot
  finiteLiCompatibilityEstimate : EstimateSlot
  abelBoundaryEstimate : EstimateSlot
  explicitFormulaPrimeEstimate : EstimateSlot
  explicitFormulaZeroEstimate : EstimateSlot
  endpointBoundaryEstimate : EstimateSlot
  scaleTopologyEstimate : EstimateSlot
  uniformLittleOhEstimate : EstimateSlot
  terminalClassificationEstimate : EstimateSlot
  obstructionLedgerEstimate : EstimateSlot
  conclusionTransferEstimate : EstimateSlot
  zetaAnchor : MathlibAnchor
  liCriterionAnchor : MathlibAnchor
  explicitFormulaAnchor : MathlibAnchor
  scaleEstimateAnchor : MathlibAnchor
  refinedAxioms : RefinedBridgeAxioms S M

def PreformalAnalyticInterfaceReady
    {S : StandardLiScaffold}
    {M : ManuscriptAnalyticScaffold S}
    (P : PreformalAnalyticInterface S M) : Prop :=
  AnalyticInputInterfaceReady P.standardInput ∧
  AnalyticInputInterfaceReady P.manuscriptInput ∧
  AnalyticOutputInterfaceReady P.analyticOutput ∧
  CompatibilityInterfaceReady P.bridgeCompatibility ∧
  EstimateSlotPendingFormalization P.liKernelEstimate ∧
  EstimateSlotPendingFormalization P.finiteLiCompatibilityEstimate ∧
  EstimateSlotPendingFormalization P.abelBoundaryEstimate ∧
  EstimateSlotPendingFormalization P.explicitFormulaPrimeEstimate ∧
  EstimateSlotPendingFormalization P.explicitFormulaZeroEstimate ∧
  EstimateSlotPendingFormalization P.endpointBoundaryEstimate ∧
  EstimateSlotPendingFormalization P.scaleTopologyEstimate ∧
  EstimateSlotPendingFormalization P.uniformLittleOhEstimate ∧
  EstimateSlotPendingFormalization P.terminalClassificationEstimate ∧
  EstimateSlotPendingFormalization P.obstructionLedgerEstimate ∧
  EstimateSlotPendingFormalization P.conclusionTransferEstimate ∧
  MathlibAnchorDeclaredExternal P.zetaAnchor ∧
  MathlibAnchorDeclaredExternal P.liCriterionAnchor ∧
  MathlibAnchorDeclaredExternal P.explicitFormulaAnchor ∧
  MathlibAnchorDeclaredExternal P.scaleEstimateAnchor

structure AnalyticInterfaceAxioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S) where
  interface : PreformalAnalyticInterface S M
  interfaceReady : PreformalAnalyticInterfaceReady interface

def analytic_interface_to_refined_bridge_axioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (IA : AnalyticInterfaceAxioms S M) :
    RefinedBridgeAxioms S M :=
  IA.interface.refinedAxioms

theorem preformal_interface_ready_unpacks
    {S : StandardLiScaffold}
    {M : ManuscriptAnalyticScaffold S}
    (P : PreformalAnalyticInterface S M)
    (h : PreformalAnalyticInterfaceReady P) :
    AnalyticInputInterfaceReady P.standardInput ∧
    AnalyticInputInterfaceReady P.manuscriptInput ∧
    AnalyticOutputInterfaceReady P.analyticOutput ∧
    CompatibilityInterfaceReady P.bridgeCompatibility ∧
    EstimateSlotPendingFormalization P.liKernelEstimate ∧
    EstimateSlotPendingFormalization P.finiteLiCompatibilityEstimate ∧
    EstimateSlotPendingFormalization P.abelBoundaryEstimate ∧
    EstimateSlotPendingFormalization P.explicitFormulaPrimeEstimate ∧
    EstimateSlotPendingFormalization P.explicitFormulaZeroEstimate ∧
    EstimateSlotPendingFormalization P.endpointBoundaryEstimate ∧
    EstimateSlotPendingFormalization P.scaleTopologyEstimate ∧
    EstimateSlotPendingFormalization P.uniformLittleOhEstimate ∧
    EstimateSlotPendingFormalization P.terminalClassificationEstimate ∧
    EstimateSlotPendingFormalization P.obstructionLedgerEstimate ∧
    EstimateSlotPendingFormalization P.conclusionTransferEstimate ∧
    MathlibAnchorDeclaredExternal P.zetaAnchor ∧
    MathlibAnchorDeclaredExternal P.liCriterionAnchor ∧
    MathlibAnchorDeclaredExternal P.explicitFormulaAnchor ∧
    MathlibAnchorDeclaredExternal P.scaleEstimateAnchor := by
  exact h

theorem analytic_interface_assembles_refined_bridge_axioms
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (IA : AnalyticInterfaceAxioms S M) :
    Nonempty (RefinedBridgeAxioms S M) := by
  exact ⟨analytic_interface_to_refined_bridge_axioms S M IA⟩

theorem analytic_interface_provides_ready_certificate
    (S : StandardLiScaffold)
    (M : ManuscriptAnalyticScaffold S)
    (IA : AnalyticInterfaceAxioms S M) :
    PreformalAnalyticInterfaceReady IA.interface := by
  exact IA.interfaceReady

end R1956DLeanInterface
