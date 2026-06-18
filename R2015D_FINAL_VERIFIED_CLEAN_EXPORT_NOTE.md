# R2015D final verified clean export note

This export helper creates the R2015D counterpart of the earlier
`R1974D_SUB_VER_FINITE_ABEL_COMPONENTS_FINAL_VERIFIED_CLEAN.zip`,
`R1997D_SUB_VER_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB_FINAL_VERIFIED_CLEAN.zip`,
and `R2009D_SUB_VER_ENDPOINT_FIRST_DISCHARGE_WITNESS_HANDOFF_INTERFACE_FINAL_VERIFIED_CLEAN.zip`
packages.

It does **not** assert verification by itself. The shell script refuses to
create the final clean ZIP unless the Codespaces verification log contains a
successful line of the form:

```text
Build completed successfully (... jobs).
```

For R2015D it also requires a parsed job count of at least `333`, so a pruned
aggregate spine is less likely to be packaged by mistake.

The helper uses a temporary staging directory under `/tmp` instead of a hidden
directory inside the repository. Therefore a plain `git add .` cannot
accidentally commit the staging tree.

The resulting clean ZIP excludes `.git/`, `.lake/`, patch ZIPs, standalone
`.sha256` files, and temporary staging directories, while preserving source
files, verification logs, status files, ledgers, and checksum ledgers.

Non-claim boundary: the R2015D clean bundle remains a proof-obligation /
proof-route / dry-run-result / witness-handoff / rehearsal / witness-packet-
boundary package. It does not supply endpoint witnesses, execute the endpoint
proof kernel, discharge a concrete endpoint lemma, or prove the endpoint
estimate, explicit formula, Li criterion, or RH.
