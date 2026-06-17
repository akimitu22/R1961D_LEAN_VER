# R1984D manuscript-obligation implementation-queue ledger

## Scope

R1984D is the corrected successor to the R1983D main-manuscript-anchored
verification spine.  It adds the first implementation queue only after the
spine has been reattached to the R1974D main manuscript bundle, the historical
`Main.lean` check list, and the R1975D--R1983D continuation chain.

The layer records:

1. endpoint first-obligation queue entry,
2. boundary-error first-obligation queue entry,
3. remainder/uniformity first-obligation queue entry,
4. sign-transfer first-obligation queue entry,
5. cross-family audit entry,
6. dependency frontier for later concrete proof files.

## Central bridge

```lean
R1984DLeanManuscriptObligationImplementationQueue.manuscript_anchored_obligation_queue_to_actual_li_target
```

## Manuscript anchoring

The queue forgets back to:

```lean
R1983DLeanMainManuscriptAnchoredVerificationSpine.MainManuscriptAnchorSpine
```

and then through R1983D to the R1982D execution plan and R1980D statement bank.
This keeps the queue from replacing or narrowing the manuscript-compatible
verification spine.

## Non-claim boundary

R1984D does not prove endpoint estimates, boundary-error estimates,
remainder/uniformity estimates, sign-transfer estimates, the real Abel-boundary
identity, the explicit formula, or RH.  It only records the first queue and
frontier that later concrete proof files must implement.
