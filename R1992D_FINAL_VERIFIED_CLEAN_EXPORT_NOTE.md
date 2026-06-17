# R1992D final verified clean export note

This export helper creates the R1992D counterpart of the earlier
`R1974D_SUB_VER_FINITE_ABEL_COMPONENTS_FINAL_VERIFIED_CLEAN.zip` package.

It does **not** assert verification by itself.  The shell script refuses to
create the final clean ZIP unless the Codespaces verification log contains a
successful line of the form:

```text
Build completed successfully (... jobs).
```

The resulting clean ZIP excludes `.git/`, `.lake/`, patch ZIPs, standalone
`.sha256` files, and temporary staging directories, while preserving source
files, verification logs, status files, ledgers, and checksum ledgers.

Non-claim boundary: the R1992D clean bundle remains a proof-obligation /
proof-route / execution-checklist package. It does not prove the endpoint
estimate, explicit formula, Li criterion, or RH.
