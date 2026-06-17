# Verify status: R1996D Endpoint Executable Kernel Boundary

Status: prepared for Codespaces verification.

Expected command:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1996D_ENDPOINT_EXECUTABLE_KERNEL_BOUNDARY.txt
```

Expected result:

```text
Build completed successfully (... jobs).
```

Stop if the job count is below 233, because that would indicate pruning of the
previous aggregate spine.
