# VERIFY STATUS: R1987D Endpoint Proof-Kernel Interface

Status before Codespaces run: patch generated, not locally verified in this environment.

Expected verification command:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1987D_ENDPOINT_PROOF_KERNEL_INTERFACE.txt
```

Expected success criterion:

```text
Build completed successfully (... jobs).
```

R1987D is not an endpoint estimate proof and not an RH proof.
