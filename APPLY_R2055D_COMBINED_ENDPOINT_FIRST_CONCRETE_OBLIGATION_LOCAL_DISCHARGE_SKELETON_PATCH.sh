#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re

latest = "R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary"
libs = [
    "R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder",
    "R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary",
]

for junk in [
    "R2053D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LOCAL_DISCHARGE_CANDIDATE_PATCH.zip",
    "R2055D_COMBINED_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LOCAL_DISCHARGE_SKELETON_PATCH.zip",
    "VERIFY_LOG_CODESPACES_R2053D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LOCAL_DISCHARGE_CANDIDATE_REGISTRY.txt~",
    "VERIFY_LOG_CODESPACES_R2055D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LOCAL_DISCHARGE_SKELETON_BOUNDARY.txt~",
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
    "#check R2054DLeanEndpointFirstConcreteObligationLocalDischargeDependencyBinder.endpoint_first_concrete_obligation_local_discharge_dependency_binder_to_actual_li_target",
    "#check R2055DLeanEndpointFirstConcreteObligationLocalDischargeProofSkeletonBoundary.endpoint_first_concrete_obligation_local_discharge_proof_skeleton_boundary_to_actual_li_target",
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + "\n" + chk + "\n"

m.write_text(t)
print("Updated lakefile.lean and Main.lean for R2054D/R2055D local-discharge-skeleton layers.")
APPLYPY
