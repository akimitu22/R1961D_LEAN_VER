# Verify status: R1991D endpoint concrete proof-route bank

Expected verification command:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1991D_ENDPOINT_CONCRETE_PROOF_ROUTE_BANK.txt
```

Success condition:

```text
Build completed successfully (... jobs).
```

The job count should not fall below the verified R1990D fixed-spine count of
208 jobs.  If it falls below that count, a previous aggregate spine is missing
from the import graph.
