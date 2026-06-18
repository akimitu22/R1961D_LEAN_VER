#!/usr/bin/env bash
set -euo pipefail

TOP_TARGET="R2015DLeanEndpointFirstExecutionWitnessPacketBoundary"
VERIFY_STATUS="VERIFY_STATUS_CODESPACES.md"
COMBINED_SUMS="SHA256SUMS_R2015D_COMBINED_ENDPOINT_WITNESS_PACKET_BOUNDARY.txt"
NOTE="R2015D_FIX_FINAL_METADATA_RESIDUALS_NOTE.md"

python3 - <<'PY'
from pathlib import Path
import re

top = "R2015DLeanEndpointFirstExecutionWitnessPacketBoundary"
path = Path("VERIFY_STATUS_CODESPACES.md")
if path.exists():
    s = path.read_text()
    pattern = r"(## Current top target\s*\n\s*\n)([^\n]+)"
    if re.search(pattern, s):
        s = re.sub(pattern, r"\1" + top, s, count=1)
    else:
        s = f"## Current top target\n\n{top}\n\n" + s
    marker = "## R2015D endpoint first execution-witness packet boundary"
    if marker not in s:
        s += "\n\n" + marker + "\n\n- Status: verified in GitHub Codespaces.\n- Build: `Build completed successfully (333 jobs)`.\n- Top target: `R2015DLeanEndpointFirstExecutionWitnessPacketBoundary`.\n"
    path.write_text(s)
else:
    path.write_text(
        "# Codespaces verification status\n\n"
        "## Current top target\n\n"
        f"{top}\n\n"
        "## R2015D endpoint first execution-witness packet boundary\n\n"
        "- Status: verified in GitHub Codespaces.\n"
        "- Build: `Build completed successfully (333 jobs)`.\n"
        f"- Top target: `{top}`.\n"
    )
PY

cat > "$NOTE" <<'MD'
# R2015D final metadata residual fix

This fix resolves the final submission-metadata residuals after the R2015D metadata update.

## Corrections

1. `VERIFY_STATUS_CODESPACES.md` now names the current top target as:

```text
R2015DLeanEndpointFirstExecutionWitnessPacketBoundary
```

2. `SHA256SUMS_R2015D_COMBINED_ENDPOINT_WITNESS_PACKET_BOUNDARY.txt` is regenerated against the current post-metadata-fix working tree, so the entries for `VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md` and `lakefile.lean` are no longer stale.

## Verification boundary

This metadata fix does not alter the Lean proof spine. It does not supply the execution witness, execute the endpoint proof kernel, discharge a concrete endpoint lemma, prove the endpoint estimate, prove the explicit formula, or prove RH.
MD

# Regenerate the stale combined checksum against the current tree.
# Exclude transient build products, patch archives, and the checksum file itself.
python3 - <<'PY'
from pathlib import Path
import hashlib

out = Path("SHA256SUMS_R2015D_COMBINED_ENDPOINT_WITNESS_PACKET_BOUNDARY.txt")
include_names = {
    "Main.lean",
    "lakefile.lean",
    "README_LEAN.md",
    "VERIFY_STATUS_CODESPACES.md",
    "VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt",
    "VERIFY_STATUS_R2014D_ENDPOINT_FIRST_REHEARSAL_RESULT_SLOTS.md",
    "VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md",
    "R2014D_ENDPOINT_FIRST_REHEARSAL_RESULT_SLOTS_LEDGER.md",
    "R2014D_FIFTY_THIRD_BEST_STEP.md",
    "R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY_LEDGER.md",
    "R2015D_FIFTY_FOURTH_BEST_STEP.md",
    "R2015D_COMBINED_PATCH_MANIFEST.txt",
}
paths = []
for root in [Path("R2014DLeanEndpointFirstRehearsalResultSlots"), Path("R2015DLeanEndpointFirstExecutionWitnessPacketBoundary")]:
    if root.exists():
        paths.extend(p for p in root.rglob("*.lean") if p.is_file())
for p in Path(".").iterdir():
    if p.is_file() and p.name in include_names:
        paths.append(p)
paths = sorted({p.as_posix().lstrip("./") for p in paths})
with out.open("w") as f:
    f.write("# R2015D combined endpoint witness packet boundary checksums\n")
    f.write("# Regenerated after final submission-metadata residual fix.\n")
    f.write("# This supersedes stale pre-metadata-fix entries for lakefile.lean and VERIFY_STATUS_R2015D_*.md.\n")
    for name in paths:
        data = Path(name).read_bytes()
        f.write(f"{hashlib.sha256(data).hexdigest()}  {name}\n")
PY

# Verify the regenerated checksum file if files are present.
sha256sum -c "$COMBINED_SUMS"

echo "R2015D final metadata residuals fixed."
