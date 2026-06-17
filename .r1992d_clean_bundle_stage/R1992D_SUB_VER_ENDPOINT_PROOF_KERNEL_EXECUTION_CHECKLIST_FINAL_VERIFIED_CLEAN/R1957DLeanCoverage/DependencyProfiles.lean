import R1957DLeanCoverage.CoverageCertificates

namespace R1957DLeanCoverage

open R1956DLeanInterface
open R1955DLeanScaffold

structure InterfaceTheoremDependencyProfile where
  theoremName : String
  obligationLabels : List InterfaceObligationLabel
  estimateSlots : List EstimateSlot
  mathlibAnchorList : List MathlibAnchor
  refinedTargets : List RefinedBridgeObligationLabel
  usesDeclaredInterfaceAxioms : Bool
  projectsToR1955RefinedAxioms : Bool
  reachesR1954BridgeConditionally : Bool

def analyticInterfaceNoEscapeProfile : InterfaceTheoremDependencyProfile :=
  { theoremName := "analytic_interface_conditional_no_escape_to_standard_conclusion"
    obligationLabels := interfaceObligationLabels
    estimateSlots := analyticEstimateSlots
    mathlibAnchorList := mathlibAnchors
    refinedTargets := interfaceProjectionToRefinedLabels
    usesDeclaredInterfaceAxioms := true
    projectsToR1955RefinedAxioms := true
    reachesR1954BridgeConditionally := true }

def analyticInterfaceKillAttemptProfile : InterfaceTheoremDependencyProfile :=
  { theoremName := "analytic_interface_conditional_kill_attempt_to_standard_conclusion"
    obligationLabels := interfaceObligationLabels
    estimateSlots := analyticEstimateSlots
    mathlibAnchorList := mathlibAnchors
    refinedTargets := interfaceProjectionToRefinedLabels
    usesDeclaredInterfaceAxioms := true
    projectsToR1955RefinedAxioms := true
    reachesR1954BridgeConditionally := true }

theorem analytic_interface_no_escape_profile_records_complete_interface :
    analyticInterfaceNoEscapeProfile.obligationLabels = interfaceObligationLabels ∧
    analyticInterfaceNoEscapeProfile.estimateSlots = analyticEstimateSlots ∧
    analyticInterfaceNoEscapeProfile.mathlibAnchorList = mathlibAnchors ∧
    analyticInterfaceNoEscapeProfile.refinedTargets = interfaceProjectionToRefinedLabels ∧
    analyticInterfaceNoEscapeProfile.usesDeclaredInterfaceAxioms = true ∧
    analyticInterfaceNoEscapeProfile.projectsToR1955RefinedAxioms = true ∧
    analyticInterfaceNoEscapeProfile.reachesR1954BridgeConditionally = true := by
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  · rfl

theorem analytic_interface_kill_attempt_profile_records_complete_interface :
    analyticInterfaceKillAttemptProfile.obligationLabels = interfaceObligationLabels ∧
    analyticInterfaceKillAttemptProfile.estimateSlots = analyticEstimateSlots ∧
    analyticInterfaceKillAttemptProfile.mathlibAnchorList = mathlibAnchors ∧
    analyticInterfaceKillAttemptProfile.refinedTargets = interfaceProjectionToRefinedLabels ∧
    analyticInterfaceKillAttemptProfile.usesDeclaredInterfaceAxioms = true ∧
    analyticInterfaceKillAttemptProfile.projectsToR1955RefinedAxioms = true ∧
    analyticInterfaceKillAttemptProfile.reachesR1954BridgeConditionally = true := by
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  · rfl

end R1957DLeanCoverage
