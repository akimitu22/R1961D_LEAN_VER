# R2058D/R2059D combined Lean patch

This patch adds two proof-consistent endpoint-first local-discharge certificate layers:

1. R2058D — local discharge closure certificate boundary.
2. R2059D — local discharge closure certificate slots.

Both layers preserve `actualLiTarget` and deliberately avoid claiming any completed analytic proof, RH proof, or local discharge proof.  The aim is to prepare a certificate-checking stage that can later receive concrete proof terms without collapsing boundary bookkeeping into proof discharge.
