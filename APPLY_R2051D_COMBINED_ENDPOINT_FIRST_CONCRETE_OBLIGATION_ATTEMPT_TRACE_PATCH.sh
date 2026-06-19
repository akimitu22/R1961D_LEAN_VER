#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re

latest = "R2051DLeanEndpointFirstConcreteObligationProofAttemptTraceLedger"
libs = [
    "R2050DLeanEndpointFirstConcreteObligationExecutableProofAttemptEnvelope",
    "R2051DLeanEndpointFirstConcreteObligationProofAttemptTraceLedger",
]

for junk in [
    "R2049D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_PROOF_READINESS_PATCH.zip",
    "R2051D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_ATTEMPT_TRACE_PATCH.zip",
    "VERIFY_LOG_CODESPACES_R2047D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LEMMA_STATEMENT_BANK.txt~",
    "VERIFY_LOG_CODESPACES_R2049D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_PROOF_READINESS_CHECKLIST.txt~",
]:
    Path(junk).unlink(missing_ok=True)

p = Path("lakefile.lean")
s = p.read_text()
s = re.sub(r'(?m)^package\s+(?:«[^»]+»|\S+)\s+where', f'package «{latest}» where', s, count=1)
s = re.sub(r'(?m)^\s*@\[default_target\]\s*\n', '', s)
s = re.sub(r'(?m)^\s*@default_target\s*\n', '', s)

for lib in libs:
    has_plain = f"lean_lib {lib} where" in s
    has_quoted = f"lean_lib «{lib}» where" in s
    if not (has_plain or has_quoted):
        s = s.rstrip() + "\n\n" + f"lean_lib {lib} where\n  roots := #[`{lib}]\n"

pattern = rf'(?m)^lean_lib\s+(?:«{re.escape(latest)}»|{re.escape(latest)})\s+where'
if re.search(pattern, s):
    s = re.sub(pattern, f"@[default_target]\nlean_lib {latest} where", s, count=1)
else:
    s = s.rstrip() + "\n\n" + f"@[default_target]\nlean_lib {latest} where\n  roots := #[`{latest}]\n"

p.write_text(s)

m = Path("Main.lean")
t = m.read_text() if m.exists() else ""
for lib in libs:
    imp = f"import {lib}"
    if imp not in t:
        t = t.rstrip() + "\n" + imp + "\n"

checks = [
    "#check R2050DLeanEndpointFirstConcreteObligationExecutableProofAttemptEnvelope.endpoint_first_concrete_obligation_executable_proof_attempt_envelope_to_actual_li_target",
    "#check R2051DLeanEndpointFirstConcreteObligationProofAttemptTraceLedger.endpoint_first_concrete_obligation_proof_attempt_trace_ledger_to_actual_li_target",
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)
print("Updated lakefile.lean and Main.lean for R2050D/R2051D attempt-trace layers.")
APPLYPY
