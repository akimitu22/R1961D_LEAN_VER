# R2015D Lean support package

This combined patch adds R2014D and R2015D endpoint carrier layers.

- R2014D: endpoint first rehearsal-result slots.
- R2015D: endpoint first execution-witness packet boundary.

The patch is non-claiming: it does not supply witnesses, start an executable attempt,
run the endpoint proof kernel, discharge a concrete endpoint lemma, prove an endpoint
estimate, prove the explicit formula, or prove RH.
