import R1961DLeanPacket.PacketBalanceSystem

namespace R1961DLeanPacket

open R1960DLeanLimit
open R1959DLeanTransfer

universe u v w z

/--
A boundary-to-packet balance interface.  R1960D supplies the Abel boundary
target; R1961D records how that boundary target exposes the explicit-formula
style packet controls and the no-hidden-residual condition.
-/
structure BoundaryPacketBalance (Finite : Type u) (Abel : Type v) (Scale : Type w) where
  boundarySystem : BoundaryLimitSystem Finite Abel Scale
  packetSystem : ExplicitPacketBalanceSystem
  primeFromBoundary :
    AbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.primePacketControlled
  zeroFromBoundary :
    AbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.zeroPacketControlled
  endpointFromBoundary :
    AbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.endpointPacketControlled
  scaleErrorFromBoundary :
    AbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.scaleErrorPacketControlled
  obstructionFromBoundary :
    AbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.obstructionLedgerCompatible
  noResidualFromBoundary :
    AbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.noHiddenResidualPacket

/-- Boundary packet controls are obtained visibly from the Abel boundary target. -/
theorem abel_boundary_yields_all_packet_controls
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (B : BoundaryPacketBalance Finite Abel Scale)
    (hBoundary : AbelTarget B.boundarySystem.transferSystem B.boundarySystem.abelBoundary) :
    AllPacketsControlled B.packetSystem := by
  exact ⟨
    B.primeFromBoundary hBoundary,
    B.zeroFromBoundary hBoundary,
    B.endpointFromBoundary hBoundary,
    B.scaleErrorFromBoundary hBoundary,
    B.obstructionFromBoundary hBoundary⟩

/--
Once an Abel boundary target is available, the explicit packet balance carries
it to the abstract Li target, provided the boundary target yields all visible
packet controls and no hidden residual packet.
-/
theorem abel_boundary_packet_balance_to_li_target
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (B : BoundaryPacketBalance Finite Abel Scale)
    (hBoundary : AbelTarget B.boundarySystem.transferSystem B.boundarySystem.abelBoundary) :
    B.packetSystem.liTarget := by
  exact explicit_packet_balance_to_target B.packetSystem
    (abel_boundary_yields_all_packet_controls B hBoundary)
    (B.noResidualFromBoundary hBoundary)

/--
R1961D finite-tail-to-packet theorem.  R1960D first moves the finite tail to
an Abel boundary target; R1961D then carries that boundary target through the
packet-balance layer to the Li target.
-/
theorem finite_tail_boundary_packet_balance_to_li_target
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (B : BoundaryPacketBalance Finite Abel Scale)
    (hScaleTail : SameScaleOnTail B.boundarySystem)
    (hFiniteTail : FiniteTargetOnTail B.boundarySystem) :
    B.packetSystem.liTarget := by
  have hBoundary : AbelTarget B.boundarySystem.transferSystem B.boundarySystem.abelBoundary :=
    same_scale_boundary_limit_transfer B.boundarySystem hScaleTail hFiniteTail
  exact abel_boundary_packet_balance_to_li_target B hBoundary

/--
No-hidden-residual form: the packet layer reaches the target only after the
residual ledger has been exposed through the boundary interface.
-/
theorem no_hidden_residual_boundary_packet_transfer
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (B : BoundaryPacketBalance Finite Abel Scale)
    (hBoundary : AbelTarget B.boundarySystem.transferSystem B.boundarySystem.abelBoundary) :
    B.packetSystem.liTarget := by
  exact no_hidden_residual_packet_transfer B.packetSystem
    (B.primeFromBoundary hBoundary)
    (B.zeroFromBoundary hBoundary)
    (B.endpointFromBoundary hBoundary)
    (B.scaleErrorFromBoundary hBoundary)
    (B.obstructionFromBoundary hBoundary)
    (B.noResidualFromBoundary hBoundary)

/--
A packaged witness for the finite-tail boundary packet balance theorem.
-/
structure FiniteToPacketBalanceWitness (Finite : Type u) (Abel : Type v) (Scale : Type w) where
  balance : BoundaryPacketBalance Finite Abel Scale
  sameScaleOnTail : SameScaleOnTail balance.boundarySystem
  finiteTargetOnTail : FiniteTargetOnTail balance.boundarySystem

/-- Packaged finite-tail-to-Li-target packet theorem. -/
theorem finite_to_packet_balance_target
    {Finite : Type u} {Abel : Type v} {Scale : Type w}
    (W : FiniteToPacketBalanceWitness Finite Abel Scale) :
    W.balance.packetSystem.liTarget := by
  exact finite_tail_boundary_packet_balance_to_li_target
    W.balance W.sameScaleOnTail W.finiteTargetOnTail

/--
Normalized no-hidden-scale-drift variant of the boundary-to-packet interface.
-/
structure NormalizedBoundaryPacketBalance
    (Finite : Type u) (Abel : Type v) (RawScale : Type w) (NormalizedScale : Type z) where
  boundarySystem : NormalizedBoundaryLimitSystem Finite Abel RawScale NormalizedScale
  packetSystem : ExplicitPacketBalanceSystem
  primeFromBoundary :
    NormalizedAbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.primePacketControlled
  zeroFromBoundary :
    NormalizedAbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.zeroPacketControlled
  endpointFromBoundary :
    NormalizedAbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.endpointPacketControlled
  scaleErrorFromBoundary :
    NormalizedAbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.scaleErrorPacketControlled
  obstructionFromBoundary :
    NormalizedAbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.obstructionLedgerCompatible
  noResidualFromBoundary :
    NormalizedAbelTarget boundarySystem.transferSystem boundarySystem.abelBoundary →
      packetSystem.noHiddenResidualPacket

/-- Normalized finite-tail-to-packet theorem. -/
theorem normalized_finite_tail_boundary_packet_balance_to_li_target
    {Finite : Type u} {Abel : Type v} {RawScale : Type w} {NormalizedScale : Type z}
    (B : NormalizedBoundaryPacketBalance Finite Abel RawScale NormalizedScale)
    (hScaleTail : SameNormalizedScaleOnTail B.boundarySystem)
    (hFiniteTail : NormalizedFiniteTargetOnTail B.boundarySystem) :
    B.packetSystem.liTarget := by
  have hBoundary : NormalizedAbelTarget B.boundarySystem.transferSystem B.boundarySystem.abelBoundary :=
    no_hidden_scale_drift_boundary_transfer B.boundarySystem hScaleTail hFiniteTail
  exact no_hidden_residual_packet_transfer B.packetSystem
    (B.primeFromBoundary hBoundary)
    (B.zeroFromBoundary hBoundary)
    (B.endpointFromBoundary hBoundary)
    (B.scaleErrorFromBoundary hBoundary)
    (B.obstructionFromBoundary hBoundary)
    (B.noResidualFromBoundary hBoundary)

end R1961DLeanPacket
