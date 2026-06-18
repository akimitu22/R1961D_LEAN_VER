#!/usr/bin/env bash
set -euo pipefail

TARGET="R2015DLeanEndpointFirstExecutionWitnessPacketBoundary"
LOG="VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt"
STATUS="VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md"
BUNDLE_BASENAME="R2015D_SUB_VER_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY_FINAL_VERIFIED_CLEAN"
OUT_ZIP="${BUNDLE_BASENAME}.zip"
OUT_SHA="${BUNDLE_BASENAME}.sha256"
MIN_JOBS=333
FINAL_MANIFEST="MANIFEST_R2015D_FINAL.txt"
FINAL_PATCH_MANIFEST="PATCH_MANIFEST_R2015D_FINAL.txt"
FINAL_SUMS="SHA256SUMS_R2015D_FINAL.txt"
PROJECT_ROOT="$(pwd)"

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
  echo "ERROR: lakefile.lean does not mention ${TARGET}. Apply and verify R2015D first." >&2
  exit 1
fi

if [[ ! -f "${STATUS}" ]]; then
  echo "ERROR: ${STATUS} not found. Apply and verify R2015D first." >&2
  exit 1
fi

if [[ -d ".lake" ]]; then
  echo "Removing .lake before clean export."
  rm -rf .lake
fi

rm -f "${OUT_ZIP}" "${OUT_SHA}"
STAGE_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/r2015d_clean_bundle_stage.XXXXXX")"
trap 'rm -rf "${STAGE_ROOT}"' EXIT
STAGE_DIR="${STAGE_ROOT}/${BUNDLE_BASENAME}"
mkdir -p "${STAGE_DIR}"

# Copy the project as a clean source tree. The staging directory is outside the
# Git worktree, so it cannot be accidentally committed by `git add .`.
# Patch ZIPs, standalone .sha256 files, Git metadata, and Lake build artifacts
# are excluded. Verification logs and SHA256SUMS_*.txt ledgers are retained.
tar \
  --exclude='./.git' \
  --exclude='./.lake' \
  --exclude='./.r1992d_clean_bundle_stage' \
  --exclude='./.r1997d_clean_bundle_stage' \
  --exclude='./.r2009d_clean_bundle_stage' \
  --exclude='./.r2015d_clean_bundle_stage' \
  --exclude='./*.zip' \
  --exclude='./*.sha256' \
  -cf - . | (cd "${STAGE_DIR}" && tar -xf -)

COMMIT_SHA="$(git rev-parse --short HEAD 2>/dev/null || echo unknown)"
COMMIT_FULL="$(git rev-parse HEAD 2>/dev/null || echo unknown)"

cat > "${STAGE_DIR}/${FINAL_MANIFEST}" <<MANIFEST
# MANIFEST — R2015D final clean export package

## Package scope

This is the R1961D–R2015D Lean support package clean-export manifest.
It is modeled on the R1974D, R1997D, and R2009D clean sub-version package
layout, but extends the verified endpoint spine through the R2015D first
execution-witness packet boundary layer.

## Current Lean target

\`\`\`text
${TARGET}
\`\`\`

## Current build result

\`\`\`text
${BUILD_LINE}
\`\`\`

## Parsed job count

\`\`\`text
${BUILD_JOBS} jobs
\`\`\`

## Source commit at export time

\`\`\`text
short: ${COMMIT_SHA}
full:  ${COMMIT_FULL}
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
R1998D — endpoint executable proof-kernel body plan
R1999D — endpoint first concrete-discharge interface
R2000D — endpoint concrete-discharge obligation slots
R2001D — endpoint first discharge certificate interface
R2002D — endpoint first certificate payload slots
R2003D — endpoint first-discharge attempt boundary
R2004D — endpoint first-discharge attempt input slots
R2005D — endpoint first-discharge execution precheck
R2006D — endpoint first-discharge execution gate
R2007D — endpoint first-discharge dry-run trace
R2008D — endpoint first-discharge dry-run result slots
R2009D — endpoint first-discharge witness handoff interface
R2010D — endpoint first-witness validation slots
R2011D — endpoint first-discharge execution handoff boundary
R2012D — endpoint first execution-handoff payload slots
R2013D — endpoint first-discharge execution rehearsal boundary
R2014D — endpoint first rehearsal-result slots
R2015D — endpoint first execution-witness packet boundary
\`\`\`

## New R2014D/R2015D files expected in this export

\`\`\`text
R2014DLeanEndpointFirstRehearsalResultSlots.lean
R2014DLeanEndpointFirstRehearsalResultSlots/EndpointFirstRehearsalResultSlots.lean
R2014DLeanEndpointFirstRehearsalResultSlots/EndpointFirstRehearsalResultDependencyAudit.lean
R2014DLeanEndpointFirstRehearsalResultSlots/EndpointFirstRehearsalResultBridge.lean
R2014DLeanEndpointFirstRehearsalResultSlots/ToyEndpointFirstRehearsalResultSlots.lean
R2014D_ENDPOINT_FIRST_REHEARSAL_RESULT_SLOTS_LEDGER.md
R2014D_FIFTY_THIRD_BEST_STEP.md
VERIFY_STATUS_R2014D_ENDPOINT_FIRST_REHEARSAL_RESULT_SLOTS.md

R2015DLeanEndpointFirstExecutionWitnessPacketBoundary.lean
R2015DLeanEndpointFirstExecutionWitnessPacketBoundary/EndpointFirstExecutionWitnessPacketSlots.lean
R2015DLeanEndpointFirstExecutionWitnessPacketBoundary/EndpointFirstExecutionWitnessPacketDependencyAudit.lean
R2015DLeanEndpointFirstExecutionWitnessPacketBoundary/EndpointFirstExecutionWitnessPacketBridge.lean
R2015DLeanEndpointFirstExecutionWitnessPacketBoundary/ToyEndpointFirstExecutionWitnessPacketBoundary.lean
R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY_LEDGER.md
R2015D_FIFTY_FOURTH_BEST_STEP.md
R2015D_COMBINED_PATCH_MANIFEST.txt
VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md
VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt
SHA256SUMS_R2015D_COMBINED_ENDPOINT_WITNESS_PACKET_BOUNDARY.txt
\`\`\`

## Clean-export files

\`\`\`text
${FINAL_MANIFEST}
${FINAL_PATCH_MANIFEST}
${FINAL_SUMS}
R2015D_FINAL_VERIFIED_CLEAN_EXPORT_NOTE.md
MAKE_R2015D_SUB_VER_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY_FINAL_VERIFIED_CLEAN.sh
\`\`\`

## Non-claim boundary

This package is a Lean proof-system / proof-obligation / proof-route /
dry-run-result / witness-handoff / rehearsal / witness-packet-boundary package.
It does not supply endpoint witnesses, execute the endpoint proof kernel,
discharge a concrete endpoint lemma, or prove the endpoint estimate,
boundary-error estimate, remainder-uniformity estimate, sign-transfer estimate,
explicit formula, Li criterion, terminal estimates, or RH.
MANIFEST

cat > "${STAGE_DIR}/${FINAL_PATCH_MANIFEST}" <<PATCHMANIFEST
# PATCH MANIFEST — R2015D final clean export

This file records the clean-export packaging boundary for the R2015D sub-version
package.

## Export rule

The clean ZIP is generated only after ${LOG} records:

\`\`\`text
${BUILD_LINE}
\`\`\`

The parsed job count must be at least ${MIN_JOBS} jobs. This is intended to
catch aggregate-spine pruning before packaging.

## Excluded from clean ZIP

\`\`\`text
.git/
.lake/
*.zip
*.sha256
.r1992d_clean_bundle_stage/
.r1997d_clean_bundle_stage/
.r2009d_clean_bundle_stage/
.r2015d_clean_bundle_stage/
\`\`\`

## Included verification artifacts

\`\`\`text
VERIFY_LOG_CODESPACES_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.txt
VERIFY_STATUS_R2014D_ENDPOINT_FIRST_REHEARSAL_RESULT_SLOTS.md
VERIFY_STATUS_R2015D_ENDPOINT_FIRST_EXECUTION_WITNESS_PACKET_BOUNDARY.md
SHA256SUMS_R2015D_COMBINED_ENDPOINT_WITNESS_PACKET_BOUNDARY.txt
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
  zip -qr "${PROJECT_ROOT}/${OUT_ZIP}" "${BUNDLE_BASENAME}"
)

sha256sum "${OUT_ZIP}" > "${OUT_SHA}"

echo "Created ${OUT_ZIP}"
echo "Created ${OUT_SHA}"
echo "Verified build line: ${BUILD_LINE}"
echo "Staging directory was temporary and has not been created inside the Git worktree."
