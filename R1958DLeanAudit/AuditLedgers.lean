import R1958DLeanAudit.VersionAudit
import R1957DLeanCoverage.NoHiddenAssumptions

namespace R1958DLeanAudit

open R1956DLeanInterface
open R1955DLeanScaffold
open R1957DLeanCoverage

structure TheoremAuditLedgerEntry where
  theoremName : String
  dependencyProfileName : String
  declaredPathName : String
  usesOnlyDeclaredInterfaceAxioms : Bool
  projectsThroughR1955RefinedLayer : Bool
  reachesR1954BridgeConditionally : Bool
  fullAnalyticFormalizationClaimed : Bool

def theoremAuditLedger : List TheoremAuditLedgerEntry :=
  [ { theoremName := "analytic_interface_conditional_no_escape_to_standard_conclusion"
      dependencyProfileName := "analyticInterfaceNoEscapeProfile"
      declaredPathName := "noEscapeDeclaredAssumptionPath"
      usesOnlyDeclaredInterfaceAxioms := true
      projectsThroughR1955RefinedLayer := true
      reachesR1954BridgeConditionally := true
      fullAnalyticFormalizationClaimed := false },
    { theoremName := "analytic_interface_conditional_kill_attempt_to_standard_conclusion"
      dependencyProfileName := "analyticInterfaceKillAttemptProfile"
      declaredPathName := "killAttemptDeclaredAssumptionPath"
      usesOnlyDeclaredInterfaceAxioms := true
      projectsThroughR1955RefinedLayer := true
      reachesR1954BridgeConditionally := true
      fullAnalyticFormalizationClaimed := false } ]

structure AnalyticAssumptionLedger where
  interfaceLabels : List InterfaceObligationLabel
  refinedTargets : List RefinedBridgeObligationLabel
  estimateSlots : List EstimateSlot
  mathlibAnchorList : List MathlibAnchor
  coverageBindings : List InterfaceCoverageBinding
  noAdditionalAnalyticPackageIntroduced : Bool

def analyticAssumptionLedger : AnalyticAssumptionLedger :=
  { interfaceLabels := interfaceObligationLabels
    refinedTargets := interfaceProjectionToRefinedLabels
    estimateSlots := analyticEstimateSlots
    mathlibAnchorList := mathlibAnchors
    coverageBindings := interfaceCoverageBindings
    noAdditionalAnalyticPackageIntroduced := true }

structure PendingFormalizationLedger where
  pendingEstimateSlots : List EstimateSlot
  externalMathlibAnchors : List MathlibAnchor
  estimatesRemainExternal : Bool
  anchorsRemainExternal : Bool
  zetaTheoryFormalizedHere : Bool
  liCriterionFormalizedHere : Bool
  explicitFormulaFormalizedHere : Bool
  uniformAsymptoticsFormalizedHere : Bool

def pendingFormalizationLedger : PendingFormalizationLedger :=
  { pendingEstimateSlots := analyticEstimateSlots
    externalMathlibAnchors := mathlibAnchors
    estimatesRemainExternal := true
    anchorsRemainExternal := true
    zetaTheoryFormalizedHere := false
    liCriterionFormalizedHere := false
    explicitFormulaFormalizedHere := false
    uniformAsymptoticsFormalizedHere := false }

theorem theorem_audit_ledger_records_declared_paths :
    theoremAuditLedger =
      [ { theoremName := "analytic_interface_conditional_no_escape_to_standard_conclusion"
          dependencyProfileName := "analyticInterfaceNoEscapeProfile"
          declaredPathName := "noEscapeDeclaredAssumptionPath"
          usesOnlyDeclaredInterfaceAxioms := true
          projectsThroughR1955RefinedLayer := true
          reachesR1954BridgeConditionally := true
          fullAnalyticFormalizationClaimed := false },
        { theoremName := "analytic_interface_conditional_kill_attempt_to_standard_conclusion"
          dependencyProfileName := "analyticInterfaceKillAttemptProfile"
          declaredPathName := "killAttemptDeclaredAssumptionPath"
          usesOnlyDeclaredInterfaceAxioms := true
          projectsThroughR1955RefinedLayer := true
          reachesR1954BridgeConditionally := true
          fullAnalyticFormalizationClaimed := false } ] := by
  rfl

theorem analytic_assumption_ledger_matches_inherited_interface :
    analyticAssumptionLedger.interfaceLabels = interfaceObligationLabels ∧
    analyticAssumptionLedger.refinedTargets = interfaceProjectionToRefinedLabels ∧
    analyticAssumptionLedger.estimateSlots = analyticEstimateSlots ∧
    analyticAssumptionLedger.mathlibAnchorList = mathlibAnchors ∧
    analyticAssumptionLedger.coverageBindings = interfaceCoverageBindings ∧
    analyticAssumptionLedger.noAdditionalAnalyticPackageIntroduced = true := by
  simp [analyticAssumptionLedger]

theorem pending_formalization_ledger_records_external_targets :
    pendingFormalizationLedger.pendingEstimateSlots = analyticEstimateSlots ∧
    pendingFormalizationLedger.externalMathlibAnchors = mathlibAnchors ∧
    pendingFormalizationLedger.estimatesRemainExternal = true ∧
    pendingFormalizationLedger.anchorsRemainExternal = true ∧
    pendingFormalizationLedger.zetaTheoryFormalizedHere = false ∧
    pendingFormalizationLedger.liCriterionFormalizedHere = false ∧
    pendingFormalizationLedger.explicitFormulaFormalizedHere = false ∧
    pendingFormalizationLedger.uniformAsymptoticsFormalizedHere = false := by
  simp [pendingFormalizationLedger]

end R1958DLeanAudit
