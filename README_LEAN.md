# R1984D Lean manuscript-obligation implementation queue

R1984D adds the first implementation queue as a child layer of the R1983D
main-manuscript-anchored verification spine.

## Top module

```lean
import R1984DLeanManuscriptObligationImplementationQueue
```

## Main theorem

```lean
R1984DLeanManuscriptObligationImplementationQueue.manuscript_anchored_obligation_queue_to_actual_li_target
```

## Added layer

```text
R1984DLeanManuscriptObligationImplementationQueue.lean
R1984DLeanManuscriptObligationImplementationQueue/
├── MainAnchoredQueueSlots.lean
├── FirstImplementationFrontier.lean
├── QueueBridge.lean
└── ToyMainAnchoredQueue.lean
```

## Verification-spine policy

R1984D imports R1983D as a normal predecessor library and makes R1984D the
default target.  The aggregate module also imports R1961D through R1983D, so
`lake build` should continue to traverse the manuscript-compatible spine rather
than narrowing to a local queue-only graph.

## Scope boundary

R1984D records a queue and dependency frontier.  It does not prove endpoint
estimates, boundary-error estimates, remainder estimates, Abel-parameter
uniformity estimates, sign-transfer estimates, the real Abel-boundary identity,
the explicit formula, or RH.
