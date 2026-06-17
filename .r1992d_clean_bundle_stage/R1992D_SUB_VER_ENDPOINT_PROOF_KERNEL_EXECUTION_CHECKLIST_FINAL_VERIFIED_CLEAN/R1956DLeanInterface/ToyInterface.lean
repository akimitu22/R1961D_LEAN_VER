import R1956DLeanInterface.InterfaceTheorems
import R1955DLeanScaffold.ToyScaffold

namespace R1956DLeanInterface

open R1949DLean
open R1955DLeanScaffold

def toyStandardInputInterface : AnalyticInputInterface :=
  { interfaceName := "toy standard input"
    carrier := Unit
    objectDeclared := True
    standardAnchorDeclared := True
    manuscriptAnchorDeclared := True }

def toyManuscriptInputInterface : AnalyticInputInterface :=
  { interfaceName := "toy manuscript input"
    carrier := Unit
    objectDeclared := True
    standardAnchorDeclared := True
    manuscriptAnchorDeclared := True }

def toyAnalyticOutputInterface : AnalyticOutputInterface :=
  { interfaceName := "toy standard analytic output"
    conclusionTarget := toyStandardLiScaffold.standardContext.standardAnalyticConclusion
    conclusionDeclared := True
    outputIsStandardFacing := True }

def toyCompatibilityInterface : CompatibilityInterface :=
  { interfaceName := "toy compatibility flow"
    sourceCompatible := True
    targetCompatible := True
    estimateFlowRecorded := True }

def toyPreformalAnalyticInterface :
    PreformalAnalyticInterface toyStandardLiScaffold toyManuscriptAnalyticScaffold :=
  { standardInput := toyStandardInputInterface
    manuscriptInput := toyManuscriptInputInterface
    analyticOutput := toyAnalyticOutputInterface
    bridgeCompatibility := toyCompatibilityInterface
    liKernelEstimate := liKernelEstimateSlot
    finiteLiCompatibilityEstimate := finiteLiCompatibilitySlot
    abelBoundaryEstimate := abelBoundaryEstimateSlot
    explicitFormulaPrimeEstimate := explicitFormulaPrimeSlot
    explicitFormulaZeroEstimate := explicitFormulaZeroSlot
    endpointBoundaryEstimate := endpointBoundarySlot
    scaleTopologyEstimate := scaleTopologyEstimateSlot
    uniformLittleOhEstimate := uniformLittleOhEstimateSlot
    terminalClassificationEstimate := terminalClassificationSlot
    obstructionLedgerEstimate := obstructionLedgerSlot
    conclusionTransferEstimate := conclusionTransferSlot
    zetaAnchor := zetaFunctionAnchor
    liCriterionAnchor := liCriterionAnchor
    explicitFormulaAnchor := explicitFormulaAnchor
    scaleEstimateAnchor := scaleEstimateAnchor
    refinedAxioms := toyRefinedBridgeAxioms }

def toyPreformalAnalyticInterfaceReady :
    PreformalAnalyticInterfaceReady toyPreformalAnalyticInterface := by
  dsimp [PreformalAnalyticInterfaceReady, toyPreformalAnalyticInterface,
    AnalyticInputInterfaceReady, AnalyticOutputInterfaceReady, CompatibilityInterfaceReady,
    EstimateSlotPendingFormalization, MathlibAnchorDeclaredExternal,
    toyStandardInputInterface, toyManuscriptInputInterface, toyAnalyticOutputInterface,
    toyCompatibilityInterface, liKernelEstimateSlot, finiteLiCompatibilitySlot,
    abelBoundaryEstimateSlot, explicitFormulaPrimeSlot, explicitFormulaZeroSlot,
    endpointBoundarySlot, scaleTopologyEstimateSlot, uniformLittleOhEstimateSlot,
    terminalClassificationSlot, obstructionLedgerSlot, conclusionTransferSlot,
    zetaFunctionAnchor, liCriterionAnchor, explicitFormulaAnchor, scaleEstimateAnchor]
  repeat constructor

def toyAnalyticInterfaceAxioms :
    AnalyticInterfaceAxioms toyStandardLiScaffold toyManuscriptAnalyticScaffold :=
  { interface := toyPreformalAnalyticInterface
    interfaceReady := toyPreformalAnalyticInterfaceReady }

theorem toy_analytic_interface_assembles_refined_axioms :
    Nonempty (RefinedBridgeAxioms toyStandardLiScaffold toyManuscriptAnalyticScaffold) := by
  exact analytic_interface_assembles_refined_bridge_axioms
    toyStandardLiScaffold toyManuscriptAnalyticScaffold toyAnalyticInterfaceAxioms

theorem toy_analytic_interface_runs_no_escape_standard_conclusion :
    toyStandardLiScaffold.standardContext.standardAnalyticConclusion := by
  exact analytic_interface_conditional_no_escape_to_standard_conclusion
    toyStandardLiScaffold
    toyManuscriptAnalyticScaffold
    toyAnalyticInterfaceAxioms
    toyAbelIdentityAxioms
    toySameObjectPreservationAxioms
    toySupportExhaustionAxioms
    toyLayerRealizationAxioms
    toyGeneratorRealizationAxioms
    toyTerminalExtensionAxioms
    toyAbelReady
    trivial
    trivial

theorem toy_analytic_interface_runs_terminal_extension_standard_conclusion
    (hAttempt : toyTheory.AttemptsToKill toyOperation toyTerminal) :
    toyStandardLiScaffold.standardContext.standardAnalyticConclusion := by
  exact analytic_interface_conditional_kill_attempt_to_standard_conclusion
    toyStandardLiScaffold
    toyManuscriptAnalyticScaffold
    toyAnalyticInterfaceAxioms
    toyAbelIdentityAxioms
    toySameObjectPreservationAxioms
    toySupportExhaustionAxioms
    toyLayerRealizationAxioms
    toyGeneratorRealizationAxioms
    toyTerminalExtensionAxioms
    toyAbelReady
    trivial
    trivial
    hAttempt

end R1956DLeanInterface
