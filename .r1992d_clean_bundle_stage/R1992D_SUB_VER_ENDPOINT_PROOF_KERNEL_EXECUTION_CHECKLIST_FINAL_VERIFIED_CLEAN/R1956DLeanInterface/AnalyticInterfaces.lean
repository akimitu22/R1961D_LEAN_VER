import R1956DLeanInterface.VersionInterface

namespace R1956DLeanInterface

inductive AnalyticInterfaceKind where
  | standardInput
  | manuscriptInput
  | estimate
  | compatibility
  | output
  deriving Repr, DecidableEq

structure AnalyticInputInterface where
  interfaceName : String
  carrier : Type
  objectDeclared : Prop
  standardAnchorDeclared : Prop
  manuscriptAnchorDeclared : Prop

def AnalyticInputInterfaceReady (I : AnalyticInputInterface) : Prop :=
  I.objectDeclared ∧ I.standardAnchorDeclared ∧ I.manuscriptAnchorDeclared

structure AnalyticOutputInterface where
  interfaceName : String
  conclusionTarget : Prop
  conclusionDeclared : Prop
  outputIsStandardFacing : Prop

def AnalyticOutputInterfaceReady (O : AnalyticOutputInterface) : Prop :=
  O.conclusionDeclared ∧ O.outputIsStandardFacing

structure CompatibilityInterface where
  interfaceName : String
  sourceCompatible : Prop
  targetCompatible : Prop
  estimateFlowRecorded : Prop

def CompatibilityInterfaceReady (C : CompatibilityInterface) : Prop :=
  C.sourceCompatible ∧ C.targetCompatible ∧ C.estimateFlowRecorded

theorem analytic_input_interface_ready_unpacks
    (I : AnalyticInputInterface)
    (h : AnalyticInputInterfaceReady I) :
    I.objectDeclared ∧ I.standardAnchorDeclared ∧ I.manuscriptAnchorDeclared := by
  exact h

theorem analytic_output_interface_ready_unpacks
    (O : AnalyticOutputInterface)
    (h : AnalyticOutputInterfaceReady O) :
    O.conclusionDeclared ∧ O.outputIsStandardFacing := by
  exact h

theorem compatibility_interface_ready_unpacks
    (C : CompatibilityInterface)
    (h : CompatibilityInterfaceReady C) :
    C.sourceCompatible ∧ C.targetCompatible ∧ C.estimateFlowRecorded := by
  exact h

end R1956DLeanInterface
