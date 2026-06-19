#!/usr/bin/env bash
set -euo pipefail
python3 - <<'APPLYPY'
from pathlib import Path
import re
latest = 'R2049DLeanEndpointFirstConcreteObligationProofReadinessChecklist'
libs = [
    'R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph',
    'R2049DLeanEndpointFirstConcreteObligationProofReadinessChecklist',
]

# Remove the accidental shell-backup verification log if it exists from the previous commit.
Path('VERIFY_LOG_CODESPACES_R2047D_ENDPOINT_FIRST_CONCRETE_OBLIGATION_LEMMA_STATEMENT_BANK.txt~').unlink(missing_ok=True)

p = Path('lakefile.lean')
s = p.read_text()
s = re.sub(r'(?m)^package\s+«[^»]+»\s+where', f'package «{latest}» where', s, count=1)
s = re.sub(r'(?m)^\s*@\[default_target\]\s*
', '', s)
s = re.sub(r'(?m)^\s*@default_target\s*
', '', s)
for lib in libs:
    has_plain = f'lean_lib {lib} where' in s
    has_quoted = f'lean_lib «{lib}» where' in s
    if not (has_plain or has_quoted):
        s = s.rstrip() + f'

lean_lib {lib} where
  roots := #[`{lib}]
'
pattern = rf'(?m)^lean_lib\s+(?:«{re.escape(latest)}»|{re.escape(latest)})\s+where'
if re.search(pattern, s):
    s = re.sub(pattern, f'@[default_target]
lean_lib {latest} where', s, count=1)
else:
    s = s.rstrip() + f'

@[default_target]
lean_lib {latest} where
  roots := #[`{latest}]
'
p.write_text(s)

m = Path('Main.lean')
t = m.read_text() if m.exists() else ''
for lib in libs:
    imp = f'import {lib}'
    if imp not in t:
        t = t.rstrip() + '
' + imp + '
'
checks = [
    '#check R2048DLeanEndpointFirstConcreteObligationLemmaDependencyGraph.endpoint_first_concrete_obligation_lemma_dependency_graph_to_actual_li_target',
    '#check R2049DLeanEndpointFirstConcreteObligationProofReadinessChecklist.endpoint_first_concrete_obligation_proof_readiness_checklist_to_actual_li_target',
]
for chk in checks:
    if chk not in t:
        t = t.rstrip() + '
' + chk + '
'
m.write_text(t)
print('Updated lakefile.lean and Main.lean for R2048D/R2049D proof-readiness layers.')
APPLYPY
