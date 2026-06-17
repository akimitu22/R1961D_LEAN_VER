# R1955D changelog

R1955D adds a refined intermediate scaffold layer between R1954D and any future full Lean formalization.

## Changes from R1954D

- Fixed the control-character rendering issue in `VERIFY_STATUS_R1953D_SUPPORT.md`.
- Added namespace `R1955DLeanScaffold`.
- Added `StandardLiScaffold`, which refines the abstract `StandardRHBridgeContext` into named semi-concrete analytic objects.
- Added manuscript-side scaffold objects:
  - `FiniteLiObject`
  - `AbelBoundaryObject`
  - `ExplicitFormulaPacketObject`
  - `CoherentClosureObject`
  - `ScaleTopologyObject`
  - `TerminalPacketObject`
  - `ObstructionQuotientObject`
- Added `RefinedBridgeObligationLabel` and a refined obligation-binding table.
- Added refined bridge axiom packages:
  - `LiKernelBridgeAxioms`
  - `AbelBoundaryBridgeAxioms`
  - `ExplicitFormulaBridgeAxioms`
  - `ScaleTopologyBridgeAxioms`
  - `TerminalPacketBridgeAxioms`
  - `ObstructionQuotientBridgeAxioms`
  - `LiTargetConclusionBridgeAxioms`
  - `RefinedBridgeAxioms`
- Added theorem `refined_bridge_axioms_to_r1954_bridge_axioms`, showing that the refined packages assemble the R1954D bridge axiom package.
- Added refined conditional bridge theorems to the standard analytic conclusion.
- Added toy refined scaffold sanity checks.

## Scope

R1955D is not a full Lean formalization of analytic number theory. It is an intermediate refined bridge packet that makes the analytic bridge obligations more granular and closer to the manuscript's finite-Li, Abel-boundary, explicit-formula, scale-topology, terminal-packet, and obstruction-quotient components.

## Fix after first Windows verification attempt

- Fixed `R1955DLeanScaffold.VersionScaffold.r1955_version_declares_intermediate_refined_scaffold`: the version compatibility conjunction is now proved by explicit nested `constructor` steps rather than a single `rfl`, matching Lean 4.31.0 elaboration.
- No mathematical content was changed.


## ToyScaffold explicit witness repair

The toy refined scaffold readiness proofs were rewritten to use explicit witness definitions and `change ...; exact ...` proofs rather than relying on `simp` to unfold record projections. This addresses Lean 4.31.0 build failures in `R1955DLeanScaffold.ToyScaffold`.


## Verification success

R1955D_LEAN_VER records successful Windows PowerShell verification with Lean 4.31.0 / Lake 5.0.0-src+68218e8. `lake build` completed successfully with 36 jobs, and `Main.lean` checked successfully.
