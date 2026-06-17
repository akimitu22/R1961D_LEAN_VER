# R1982D Lean proof-obligation execution plan

This repository layer extends the R1981D concrete proof skeletons with a
proof-obligation execution plan.

## Top module

```lean
import R1982DLeanProofObligationExecutionPlan
```

## Main theorem

```lean
R1982DLeanProofObligationExecutionPlan.concrete_proof_obligation_execution_plan_to_actual_li_target
```

## Added layer

```text
R1982DLeanProofObligationExecutionPlan.lean
R1982DLeanProofObligationExecutionPlan/
├── ExecutionPlanSlots.lean
├── ExecutionDependencyOrder.lean
├── ExecutionBridge.lean
└── ToyExecutionPlan.lean
```

## Scope boundary

R1982D records scheduling and dependency-order metadata for the later concrete
proof files.  It does not prove endpoint estimates, boundary-error estimates,
remainder estimates, Abel-parameter uniformity estimates, sign-transfer
estimates, the real Abel-boundary identity, the explicit formula, or RH.
