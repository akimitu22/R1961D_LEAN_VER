# R1961D changelog

## R1961D_LEAN / R1961D_SUB

Added `R1961DLeanPacket`, an abstract explicit-formula-style packet-balance layer above R1960D.

New modules:

- `R1961DLeanPacket/PacketBalanceSystem.lean`
- `R1961DLeanPacket/ExplicitPacketTransfer.lean`
- `R1961DLeanPacket/PacketBalanceCertificates.lean`
- `R1961DLeanPacket/ToyPacketBalance.lean`
- `R1961DLeanPacket/VersionPacket.lean`

Main new theorem direction:

```text
R1960D Abel boundary target
+ explicit packet controls
+ no hidden residual packet
=> abstract Li target
```

No claim is made that the actual zeta explicit formula, prime/zero packet estimates, Riemann-von Mangoldt formula, Li criterion, or RH has been formalized.


## R1961D verified packaging update

- Added the successful Windows PowerShell verification log as `VERIFY_LOG_WINDOWS.txt`.
- Updated `VERIFY_STATUS.md`, `README_LEAN.md`, `REVIEW_CHECKLIST.md`, and `REVIEW_VERIFICATION_REPORT.md` to VERIFIED status.
- Removed `VERIFY_STATUS_PENDING.md`.
- Regenerated `MANIFEST.txt` and `SHA256SUMS.txt`.
