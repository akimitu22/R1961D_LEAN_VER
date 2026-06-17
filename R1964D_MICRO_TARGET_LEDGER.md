# R1964D Analytic Micro-Target Ledger

## Purpose

R1964D refines the R1963D analytic decomposition layer into micro-targets.
The aim is not to prove the actual zeta-theoretic estimates here, but to make
the last analytic realization layer small enough to attack by Lean, by humans,
or by Lean-oriented proof agents.

## New Lean layer

```text
R1964DLeanAnalyticMicroTargets.lean
R1964DLeanAnalyticMicroTargets/MicroTargetSlots.lean
R1964DLeanAnalyticMicroTargets/MicroTargetBridge.lean
R1964DLeanAnalyticMicroTargets/ToyMicroTargets.lean
```

## Micro-target groups

The R1963D pre-target slots are refined as follows.

### 1. Actual Li kernel

Lean structure:

```lean
KernelMicroTargets
```

Micro-obligations:

- actual kernel definition
- well-posedness on the admissible side
- canonical Li-phase normalization
- realization of `actualLiKernelRegistered`

### 2. Actual Abel boundary

Lean structure:

```lean
AbelBoundaryMicroTargets
```

Micro-obligations:

- actual boundary functional definition
- boundary limit existence on the admissible side
- same-scale compatibility with the Li kernel
- realization of `actualAbelBoundaryRegistered`

### 3. Actual explicit formula

Lean structure:

```lean
ExplicitFormulaMicroTargets
```

Micro-obligations:

- registration of prime/zero objects
- explicit formula identity statement
- compatibility with the Abel boundary
- realization of `actualExplicitFormulaAvailable`

### 4. Prime packet

Lean structure:

```lean
PrimePacketMicroTargets
```

Micro-obligations:

- prime packet definition
- boundary-scale bound
- compatibility with the explicit formula
- realization of `primePacketEstimate`

### 5. Zero packet

Lean structure:

```lean
ZeroPacketMicroTargets
```

Micro-obligations:

- zero packet definition
- boundary-scale bound
- compatibility with the explicit formula
- realization of `zeroPacketEstimate`

### 6. Endpoint packet

Lean structure:

```lean
EndpointPacketMicroTargets
```

Micro-obligations:

- endpoint packet definition
- endpoint remainder control
- boundary-scale compatibility
- realization of `endpointPacketEstimate`

### 7. Scale-error and little-oh

Lean structure:

```lean
ScaleErrorMicroTargets
```

Micro-obligations:

- scale-error term definition
- little-oh control at boundary scale
- no hidden scale drift
- realization of `scaleErrorAndLittleOhEstimate`

### 8. Obstruction ledger

Lean structure:

```lean
ObstructionLedgerMicroTargets
```

Micro-obligations:

- obstruction ledger definition
- registration of all packet entries
- compatibility with the R1961D packet layer
- realization of `obstructionLedgerCompatibility`

### 9. Terminal residual

Lean structure:

```lean
ResidualMicroTargets
```

Micro-obligations:

- residual packet definition
- absorption or exclusion of the residual
- terminal no-hidden-residual statement at target scale
- realization of `terminalNoHiddenResidual`

## Bridge theorem

The central R1964D theorem is:

```lean
R1964DLeanAnalyticMicroTargets.micro_targets_to_actual_li_target
```

It states that a full micro-target system plus witnesses for all its
micro-obligations yields `A.actualLiTarget`, via the already verified R1963D
and R1962D bridges.

## Non-claim boundary

R1964D does not claim to prove:

- the actual explicit formula;
- the actual prime packet estimate;
- the actual zero packet estimate;
- the actual Li criterion;
- the Riemann Hypothesis;
- a full Lean formalization of the paper.

It only introduces the next target language for reducing the remaining
analytic realization layer into smaller Lean-checkable components.
