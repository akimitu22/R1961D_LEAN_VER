#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re

latest = "R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution"
libs = [
    "R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply",
    "R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution",
]

for junk in [
    "R2063D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_WITNESS_KERNEL_LOCAL_DISCHARGE_ATTEMPT_PATCH.zip",
    "R2065D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_MINIMAL_WITNESS_CHECKER_PATCH.zip",
    "VERIFY_LOG_CODESPACES_R2063D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_WITNESS_KERNEL_LOCAL_DISCHARGE_ATTEMPT.txt~",
    "VERIFY_LOG_CODESPACES_R2065D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_MINIMAL_WITNESS_CHECKER.txt~",
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
    "#check R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.endpoint_first_concrete_obligation_minimal_witness_proof_term_supply_to_actual_li_target",
    "#check R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.endpoint_first_concrete_obligation_supplied_minimal_witness_term",
    "#check R2064DLeanEndpointFirstConcreteObligationMinimalWitnessProofTermSupply.endpoint_first_concrete_obligation_supplied_minimal_witness_term_satisfies_obligation",
    "#check R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.endpoint_first_concrete_obligation_witness_checker_execution_to_actual_li_target",
    "#check R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.endpoint_first_concrete_obligation_witness_checker_execution_runs",
    "#check R2065DLeanEndpointFirstConcreteObligationWitnessCheckerExecution.endpoint_first_concrete_obligation_witness_checker_execution_derives_attempt_statement",
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)
print("Updated lakefile.lean and Main.lean for R2064D/R2065D minimal-witness/checker-execution layers.")
APPLYPY
