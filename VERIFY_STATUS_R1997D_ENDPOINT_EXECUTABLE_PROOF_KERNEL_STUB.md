# Verify status: R1997D Endpoint Executable Proof-Kernel Stub

Status: prepared for Codespaces verification.

Expected command:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.txt
```

Expected result:

```text
Build completed successfully (... jobs).
```

Stop if the job count is below 238, because that would indicate pruning of the
previous aggregate spine.
