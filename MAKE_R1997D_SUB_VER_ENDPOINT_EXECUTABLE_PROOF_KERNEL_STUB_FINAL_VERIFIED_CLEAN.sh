#!/usr/bin/env bash
set -euo pipefail

TARGET="R1997DLeanEndpointExecutableProofKernelStub"
LOG="VERIFY_LOG_CODESPACES_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.txt"
STATUS="VERIFY_STATUS_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.md"
BUNDLE_BASENAME="R1997D_SUB_VER_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB_FINAL_VERIFIED_CLEAN"
OUT_ZIP="${BUNDLE_BASENAME}.zip"
OUT_SHA="${BUNDLE_BASENAME}.sha256"
MIN_JOBS=243
FINAL_MANIFEST="MANIFEST_R1997D_FINAL.txt"
FINAL_PATCH_MANIFEST="PATCH_MANIFEST_R1997D_FINAL.txt"
FINAL_SUMS="SHA256SUMS_R1997D_FINAL.txt"

if [[ ! -f "${LOG}" ]]; then
  echo "ERROR: ${LOG} not found. Run lake build with tee before creating the clean bundle." >&2
  exit 1
fi

BUILD_LINE="$(grep -E 'Build completed successfully \([0-9]+ jobs\)\.' "${LOG}" | tail -n 1 || true)"
if [[ -z "${BUILD_LINE}" ]]; then
  echo "ERROR: ${LOG} does not contain a successful build line." >&2
  exit 1
fi

BUILD_JOBS="$(printf '%s\n' "${BUILD_LINE}" | sed -nE 's/.*\(([0-9]+) jobs\).*/\1/p')"
if [[ -z "${BUILD_JOBS}" ]]; then
  echo "ERROR: could not parse job count from ${LOG}." >&2
  exit 1
fi

if (( BUILD_JOBS < MIN_JOBS )); then
  echo "ERROR: build job count ${BUILD_JOBS} is below expected minimum ${MIN_JOBS}; aggregate spine may be pruned." >&2
  exit 1
fi

if [[ ! -f "lakefile.lean" || ! -f "lean-toolchain" ]]; then
  echo "ERROR: this script must be run from the Lean project root." >&2
  exit 1
fi

if ! grep -q "${TARGET}" lakefile.lean; then
  echo "ERROR: lakefile.lean does not mention ${TARGET}. Apply R1997D first." >&2
  exit 1
fi

if [[ ! -f "${STATUS}" ]]; then
  echo "ERROR: ${STATUS} not found. Apply and verify R1997D first." >&2
  exit 1
fi

if [[ -d ".lake" ]]; then
  echo "Removing .lake before clean export."
  rm -rf .lake
fi

rm -f "${OUT_ZIP}" "${OUT_SHA}"
STAGE_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/r1997d_clean_bundle_stage.XXXXXX")"
trap 'rm -rf "${STAGE_ROOT}"' EXIT
STAGE_DIR="${STAGE_ROOT}/${BUNDLE_BASENAME}"
mkdir -p "${STAGE_DIR}"

# Copy the project as a clean source tree.  The staging directory is outside the
# Git worktree, so it cannot be accidentally committed by `git add .`.
# Patch ZIPs, standalone .sha256 files, Git metadata, and Lake build artifacts
# are excluded. Verification logs and SHA256SUMS_*.txt ledgers are retained.
tar \
  --exclude='./.git' \
  --exclude='./.lake' \
  --exclude='./.r1992d_clean_bundle_stage' \
  --exclude='./.r1997d_clean_bundle_stage' \
  --exclude='./*.zip' \
  --exclude='./*.sha256' \
  -cf - . | (cd "${STAGE_DIR}" && tar -xf -)

COMMIT_SHA="$(git rev-parse --short HEAD 2>/dev/null || echo unknown)"

cat > "${STAGE_DIR}/${FINAL_MANIFEST}" <<MANIFEST
# MANIFEST — R1997D final clean export package

## Package scope

This is the R1961D–R1997D Lean support package clean-export manifest.
It is modeled on the R1974D clean sub-version package layout, but extends the
verified spine through the R1997D endpoint executable proof-kernel stub layer.

## Current Lean target

\`\`\`text
${TARGET}
\`\`\`

## Current build result

\`\`\`text
${BUILD_LINE}
\`\`\`

## Source commit at export time

\`\`\`text
${COMMIT_SHA}
\`\`\`

## Current endpoint continuation spine

\`\`\`text
R1983D — main-manuscript anchored verification spine
R1984D — manuscript-obligation implementation queue
R1985D — endpoint first implementation block
R1986D — endpoint statement group
R1987D — endpoint proof-kernel interface
R1988D — endpoint kernel axiom boundary
R1989D — endpoint concrete-lemma stubs
R1990D — endpoint concrete-lemma statement bank
R1991D — endpoint concrete proof-route bank
R1992D — endpoint proof-kernel execution checklist
R1993D — endpoint proof-kernel implementation ledger
R1994D — endpoint proof-kernel execution interface
R1995D — endpoint first executable skeleton
R1996D — endpoint executable kernel boundary
R1997D — endpoint executable proof-kernel stub
\`\`\`

## New R1997D files expected in this export

\`\`\`text
R1997DLeanEndpointExecutableProofKernelStub.lean
R1997DLeanEndpointExecutableProofKernelStub/EndpointExecutableProofKernelStubSlots.lean
R1997DLeanEndpointExecutableProofKernelStub/EndpointExecutableProofKernelStubDependencyPlan.lean
R1997DLeanEndpointExecutableProofKernelStub/EndpointExecutableProofKernelStubBridge.lean
R1997DLeanEndpointExecutableProofKernelStub/ToyEndpointExecutableProofKernelStub.lean
R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB_LEDGER.md
R1997D_THIRTY_SIXTH_BEST_STEP.md
R1997D_PATCH_MANIFEST.txt
VERIFY_STATUS_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.md
VERIFY_LOG_CODESPACES_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.txt
SHA256SUMS_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.txt
\`\`\`

## Clean-export files

\`\`\`text
${FINAL_MANIFEST}
${FINAL_PATCH_MANIFEST}
${FINAL_SUMS}
R1997D_FINAL_VERIFIED_CLEAN_EXPORT_NOTE.md
MAKE_R1997D_SUB_VER_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB_FINAL_VERIFIED_CLEAN.sh
\`\`\`

## Non-claim boundary

This package is a Lean proof-system / proof-obligation / executable-stub package.
It does not prove the endpoint estimate, boundary-error estimate,
remainder-uniformity estimate, sign-transfer estimate, explicit formula, Li
criterion, terminal estimates, or RH.
MANIFEST

cat > "${STAGE_DIR}/${FINAL_PATCH_MANIFEST}" <<PATCHMANIFEST
# PATCH MANIFEST — R1997D final clean export

This file records the clean-export packaging boundary for the R1997D sub-version
package.

## Export rule

The clean ZIP is generated only after ${LOG} records:

\`\`\`text
${BUILD_LINE}
\`\`\`

The parsed job count must be at least ${MIN_JOBS} jobs.  This is intended to
catch aggregate-spine pruning before packaging.

## Excluded from clean ZIP

\`\`\`text
.git/
.lake/
*.zip
*.sha256
.r1992d_clean_bundle_stage/
.r1997d_clean_bundle_stage/
\`\`\`

## Included verification artifacts

\`\`\`text
VERIFY_LOG_CODESPACES_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.txt
VERIFY_STATUS_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.md
SHA256SUMS_R1997D_ENDPOINT_EXECUTABLE_PROOF_KERNEL_STUB.txt
\`\`\`
PATCHMANIFEST

(
  cd "${STAGE_DIR}"
  find . -type f ! -name "${FINAL_SUMS}" -print0 \
    | sort -z \
    | xargs -0 sha256sum > "${FINAL_SUMS}"
)

(
  cd "${STAGE_ROOT}"
  zip -qr "${OLDPWD}/${OUT_ZIP}" "${BUNDLE_BASENAME}"
)

sha256sum "${OUT_ZIP}" > "${OUT_SHA}"

echo "Created ${OUT_ZIP}"
echo "Created ${OUT_SHA}"
echo "Verified build line: ${BUILD_LINE}"
echo "Staging directory was temporary and has not been created inside the Git worktree."
