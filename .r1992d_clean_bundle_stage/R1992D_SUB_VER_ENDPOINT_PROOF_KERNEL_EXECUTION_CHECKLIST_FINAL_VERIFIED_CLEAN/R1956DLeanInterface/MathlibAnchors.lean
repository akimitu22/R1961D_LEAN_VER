import R1956DLeanInterface.EstimateSlots

namespace R1956DLeanInterface

structure MathlibAnchor where
  anchorName : String
  expectedNamespace : String
  expectedObject : String
  connectionClaim : String
  currentlyFormalizedHere : Bool

def MathlibAnchorDeclaredExternal (A : MathlibAnchor) : Prop :=
  A.currentlyFormalizedHere = false

def zetaFunctionAnchor : MathlibAnchor :=
  { anchorName := "Riemann zeta object"
    expectedNamespace := "Mathlib.NumberTheory.LSeries.RiemannZeta"
    expectedObject := "Riemann zeta function and analytic continuation context"
    connectionClaim := "future connection point for the standard RH statement"
    currentlyFormalizedHere := false }

def liCriterionAnchor : MathlibAnchor :=
  { anchorName := "Li criterion target"
    expectedNamespace := "future Li-criterion formalization"
    expectedObject := "Li coefficients and Li criterion statement"
    connectionClaim := "future connection point for the Li target used by the manuscript"
    currentlyFormalizedHere := false }

def explicitFormulaAnchor : MathlibAnchor :=
  { anchorName := "explicit formula package"
    expectedNamespace := "future explicit-formula formalization"
    expectedObject := "prime packet, zero packet, and endpoint boundary formula"
    connectionClaim := "future connection point for the packet decomposition"
    currentlyFormalizedHere := false }

def scaleEstimateAnchor : MathlibAnchor :=
  { anchorName := "scale topology and uniform estimates"
    expectedNamespace := "future asymptotic-analysis formalization"
    expectedObject := "admissible scale topology and uniform little-oh control"
    connectionClaim := "future connection point for the scale estimates"
    currentlyFormalizedHere := false }

def mathlibAnchors : List MathlibAnchor :=
  [zetaFunctionAnchor, liCriterionAnchor, explicitFormulaAnchor, scaleEstimateAnchor]

theorem mathlib_anchors_declared_external :
    MathlibAnchorDeclaredExternal zetaFunctionAnchor ∧
    MathlibAnchorDeclaredExternal liCriterionAnchor ∧
    MathlibAnchorDeclaredExternal explicitFormulaAnchor ∧
    MathlibAnchorDeclaredExternal scaleEstimateAnchor := by
  constructor
  · rfl
  constructor
  · rfl
  constructor
  · rfl
  · rfl

end R1956DLeanInterface
