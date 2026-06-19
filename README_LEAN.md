# R2060D/R2061D combined Lean patch

This patch adds two proof-consistent endpoint-first local-discharge certificate witness layers:

1. R2060D — closure certificate slot-population boundary.
2. R2061D — closure certificate witness interface.

These layers are chosen by reverse direction from the complete-proof target: before a checker kernel can validate local-discharge certificates, each previously allocated slot must have a population candidate and a precise witness interface.  Both layers preserve `actualLiTarget` and deliberately avoid claiming completed endpoint estimates, transfer, finite-Abel reduction, RH, or full formalization.
