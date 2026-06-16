# R1955D refined scaffold map

R1955D sits between R1954D and any future full Lean formalization.

| Layer | R1954D status | R1955D refinement | Still not formalized |
|---|---|---|---|
| Standard RH / Li target | abstract bridge context | `StandardLiScaffold` with named object carriers | actual mathlib-level RH/Li criterion connection |
| Li kernel / finite object | one bridge obligation | `LiKernelBridgeAxioms` plus `FiniteLiObject` | analytic Li-kernel identity |
| Abel boundary | one bridge obligation | `AbelBoundaryBridgeAxioms` plus `AbelBoundaryObject` | real/complex Abel boundary estimates |
| Explicit formula | one bridge obligation | prime, zero, endpoint packet objects | explicit formula proof and estimates |
| Scale topology | one bridge obligation | `ScaleTopologyObject` and uniform little-oh tracking | analytic uniformity estimates |
| Terminal packets | one bridge obligation | terminal classification and non-absorption scaffold | terminal estimate proof |
| Obstruction quotient | one bridge obligation | obstruction ledger and non-internal cancellation tracking | analytic quotient construction |
| Standard conclusion | abstract implication | `LiTargetConclusionBridgeAxioms` | proof of Li criterion target in mathlib terms |

The refined layer is intentionally conditional. Its purpose is to show which analytic objects and bridge assertions would have to be supplied in a future full formalization.
