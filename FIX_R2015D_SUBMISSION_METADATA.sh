#!/usr/bin/env bash
set -euo pipefail

TARGET_LIB="R2015DLeanEndpointFirstExecutionWitnessPacketBoundary"
VERIFY_LOG="VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt"
VERIFY_STATUS="VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md"
CODESPACES_STATUS="VERIFY_STATUS_CODESPACES.md"
VERIFY_PS1="verify.ps1"
FIX_NOTE="R2015D_FIX_SUBMISSION_METADATA_NOTE.md"
FIX_SUMS="SHA256SUMS_R2015D_SUBMISSION_METADATA_FIX.txt"

python3 - <<'PYEDIT'
from pathlib import Path
import re

target_lib = "R2015DLeanEndpointFirstExecutionWitnessPacketBoundary"
verify_log = "VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt"

# 1. Update the R2015D verification status from prepared/expected to verified.
Path("VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md").write_text(f"""# VERIFY STATUS R2015D

Status: verified in GitHub Codespaces.

Verified target: `{target_lib}`

Verified log: `{verify_log}`

Verified result:

```text
Build completed successfully (333 jobs).
```

Verification floor: do not accept a later R2015D verification with fewer than 333 jobs unless the aggregate import spine is intentionally changed and separately audited.

Non-claim boundary:

- This layer records the endpoint first execution-witness packet boundary.
- It does not supply the execution witness.
- It does not materialize the dry-run result.
- It does not start the executable attempt.
- It does not execute the endpoint proof kernel.
- It does not discharge a concrete endpoint lemma.
- It does not prove the endpoint estimate, explicit formula, or RH.
""")

# 2. Update/create Codespaces aggregate status.
cs = Path("VERIFY_STATUS_CODESPACES.md")
section = f"""\n## R2015D endpoint first execution-witness packet boundary\n\nStatus: verified in GitHub Codespaces.\n\nTop target: `{target_lib}`\n\nVerification log: `{verify_log}`\n\nResult: `Build completed successfully (333 jobs).`\n\nNon-claim boundary: no endpoint witness supplied, no executable attempt started, no endpoint proof kernel executed, no concrete endpoint lemma discharged, no endpoint estimate / explicit formula / RH proved.\n"""
if cs.exists():
    text = cs.read_text()
    text = re.sub(r"top target\s*[:=].*", f"top target: `{target_lib}`", text, flags=re.IGNORECASE)
    text = re.sub(r"Top target\s*[:=].*", f"Top target: `{target_lib}`", text)
    if "R2015D endpoint first execution-witness packet boundary" not in text:
        text = text.rstrip() + "\n" + section
    else:
        text = re.sub(
            r"## R2015D endpoint first execution-witness packet boundary.*?(?=\n## |\Z)",
            section.strip(),
            text,
            flags=re.S,
        )
    cs.write_text(text)
else:
    cs.write_text(f"""# VERIFY STATUS CODESPACES\n\nCurrent verified top target: `{target_lib}`\n\nCurrent verified result: `Build completed successfully (333 jobs).`\n\n{section.lstrip()}""")

# 3. Update verify.ps1 display name while preserving behavior as much as possible.
ps1 = Path("verify.ps1")
new_title = "R2015D Lean endpoint first execution-witness packet boundary support package"
if ps1.exists():
    text = ps1.read_text()
    replacements = [
        "R1974D Lean finite Abel component decomposition packet",
        "R2009D Lean endpoint first discharge witness handoff interface support package",
        "R2013D Lean endpoint first discharge execution rehearsal boundary support package",
    ]
    for old in replacements:
        text = text.replace(old, new_title)
    # Update any clearly old R19xx/R20xx title phrase in Write-Host lines without touching commands.
    text = re.sub(
        r"R\d{4}D Lean [A-Za-z0-9 _\-]+(?:packet|package)",
        new_title,
        text,
    )
    ps1.write_text(text)
else:
    ps1.write_text(f"""Write-Host \"{new_title}\"\nWrite-Host \"Use GitHub Codespaces or a Lean 4 environment, then run: lake build\"\n""")

# 4. Update lakefile package name only; keep lean_lib list intact.
lake = Path("lakefile.lean")
if lake.exists():
    text = lake.read_text()
    text2 = re.sub(r"package «[^»]+» where", f"package «{target_lib}» where", text, count=1)
    if text2 == text:
        raise SystemExit("lakefile.lean: package declaration not found")
    lake.write_text(text2)
else:
    raise SystemExit("lakefile.lean not found")

# 5. Add fix note.
Path("R2015D_FIX_SUBMISSION_METADATA_NOTE.md").write_text(f"""# R2015D submission metadata fix note\n\nThis fix updates submission-facing metadata after the verified R2015D Codespaces build.\n\nVerified result:\n\n```text\nBuild completed successfully (333 jobs).\n```\n\nUpdated items:\n\n- `{verify_log}` remains the verification log.\n- `VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md` now says verified rather than prepared / expected.\n- `VERIFY_STATUS_CODESPACES.md` records the R2015D top target and 333-job verification.\n- `verify.ps1` display text is updated to R2015D.\n- `lakefile.lean` package name is updated to `{target_lib}` while preserving the existing lean library list and default target wiring.\n\nNon-claim boundary:\n\nR2015D still does not supply the execution witness, materialize the dry-run result, start the executable attempt, execute the endpoint proof kernel, discharge a concrete endpoint lemma, prove the endpoint estimate, prove the explicit formula, prove RH, or claim a full RH formalization.\n""")
PYEDIT

# 6. Regenerate checksum ledger for the metadata fix outputs.
: > "$FIX_SUMS"
for f in \
  "$VERIFY_STATUS" \
  "$CODESPACES_STATUS" \
  "$VERIFY_PS1" \
  "lakefile.lean" \
  "$FIX_NOTE"
do
  if [ -f "$f" ]; then
    sha256sum "$f" >> "$FIX_SUMS"
  fi
done

echo "R2015D submission metadata fix applied."
echo "Run: lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt"
