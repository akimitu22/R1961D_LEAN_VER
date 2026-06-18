#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path
import re

p = Path('lakefile.lean')
s = p.read_text()
s = re.sub(r'package «[^»]+» where', 'package «R2023DLeanEndpointFirstProofKernelExecutionBoundary» where', s, count=1)
s = re.sub(r'@\[\s*default_target\s*\]\s*\n(?=lean_lib)', '', s)
for name in ['R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots', 'R2023DLeanEndpointFirstProofKernelExecutionBoundary']:
    s = re.sub(r'\n*lean_lib «' + re.escape(name) + r'» where\n', '\n', s)
s = s.rstrip() + '\n\n'
s += 'lean_lib «R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots» where\n\n'
s += '@[default_target]\nlean_lib «R2023DLeanEndpointFirstProofKernelExecutionBoundary» where\n'
p.write_text(s)

pm = Path('Main.lean')
if pm.exists():
    m = pm.read_text()
    imp = 'import R2023DLeanEndpointFirstProofKernelExecutionBoundary\n'
    if imp not in m:
        m = imp + m
    checks = [
        '#check R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots.endpoint_first_proof_kernel_invocation_certificate_slots_to_actual_li_target',
        '#check R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots.endpoint_first_proof_kernel_invocation_certificate_dependency_audit_to_actual_li_target',
        '#check R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots.r2022_sixty_first_step_is_invocation_certificate_not_kernel_execution',
        '#check R2022DLeanEndpointFirstProofKernelInvocationCertificateSlots.r2022_sixty_first_step_does_not_claim_rh_formalization',
        '#check R2023DLeanEndpointFirstProofKernelExecutionBoundary.endpoint_first_proof_kernel_execution_boundary_to_actual_li_target',
        '#check R2023DLeanEndpointFirstProofKernelExecutionBoundary.endpoint_first_proof_kernel_execution_dependency_audit_to_actual_li_target',
        '#check R2023DLeanEndpointFirstProofKernelExecutionBoundary.r2023_sixty_second_step_is_execution_boundary_not_kernel_execution',
        '#check R2023DLeanEndpointFirstProofKernelExecutionBoundary.r2023_sixty_second_step_does_not_claim_rh_formalization',
    ]
    for line in checks:
        if line not in m:
            m += '\n' + line
    pm.write_text(m)

print('R2023D combined patch metadata applied.')
PY
