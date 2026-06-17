# R1983D fix note — Prop-record declarations

This patch fixes the R1983D Lean build failure in the main-manuscript anchored verification spine layer.

The failed declarations attempted to prove audit fields whose values are propositions (`Prop`).
Those fields are record propositions, not proof terms.  The fix changes the affected declarations
into Prop-valued definitions returning the recorded propositions.

Affected files:

- `R1983DLeanMainManuscriptAnchoredVerificationSpine/ManuscriptAnchorSlots.lean`
- `R1983DLeanMainManuscriptAnchoredVerificationSpine/VerificationSpineLedger.lean`

This does not add any proof of endpoint estimates, boundary-error estimates,
remainder/uniformity estimates, explicit formula, real Abel boundary identity, or RH.
