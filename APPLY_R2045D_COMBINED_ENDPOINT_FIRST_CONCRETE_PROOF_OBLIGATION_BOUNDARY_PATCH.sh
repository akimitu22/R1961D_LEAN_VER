#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re
latest = 'R2045DLeanEndpointFirstConcreteProofObligationBoundary'
libs = ['R2044DLeanEndpointProofObligationExecutionQueue', 'R2045DLeanEndpointFirstConcreteProofObligationBoundary']

p = Path('lakefile.lean')
s = p.read_text()
s = re.sub(r'(?m)^package\s+«[^»]+»\s+where', f'package «{latest}» where', s, count=1)
s = re.sub(r'(?m)^\s*@\[default_target\]\s*\n', '', s)
s = re.sub(r'(?m)^\s*@default_target\s*\n', '', s)
for lib in libs:
    has_plain = f'lean_lib {lib} where' in s
    has_quoted = f'lean_lib «{lib}» where' in s
    if not (has_plain or has_quoted):
        s = s.rstrip() + f'\n\nlean_lib {lib} where\n  roots := #[`{lib}]\n'
pattern = rf'(?m)^lean_lib\s+(?:«{re.escape(latest)}»|{re.escape(latest)})\s+where'
if re.search(pattern, s):
    s = re.sub(pattern, f'@[default_target]\nlean_lib {latest} where', s, count=1)
else:
    s = s.rstrip() + f'\n\n@[default_target]\nlean_lib {latest} where\n  roots := #[`{latest}]\n'
p.write_text(s)

m = Path('Main.lean')
t = m.read_text() if m.exists() else ''
for lib in libs:
    imp = f'import {lib}'
    if imp not in t:
        t = t.rstrip() + '\n' + imp + '\n'
checks = [
    '#check R2044DLeanEndpointProofObligationExecutionQueue.endpoint_proof_obligation_execution_queue_to_actual_li_target',
    '#check R2045DLeanEndpointFirstConcreteProofObligationBoundary.endpoint_first_concrete_proof_obligation_boundary_to_actual_li_target',
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + '\n' + chk + '\n'
m.write_text(t)
print('Updated lakefile.lean and Main.lean for R2044D/R2045D proof-obligation boundary.')
APPLYPY
