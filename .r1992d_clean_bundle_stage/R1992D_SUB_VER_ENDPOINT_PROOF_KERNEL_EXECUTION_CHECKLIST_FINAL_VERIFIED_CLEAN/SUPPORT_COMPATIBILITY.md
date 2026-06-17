# R1953D Support Compatibility Note

The manuscript currently submitted as R1952D uses the R1953D Lean-support packet.

The Lean core is inherited from the verified R1949D hardened packet and remains under the namespace `R1949DLean`. This is intentional. Renaming the verified core would create a different Lean project without adding mathematical content.

The new support layer is placed under `R1952DLeanSupport` and adds:

- version-compatibility declarations;
- wrapper theorems pointing to the inherited verified core;
- profile-coverage theorems;
- obligation-field binding records;
- toy-model support wrapper checks.

The R1952D manuscript changes relative to earlier manuscript bundles are presentation and wording revisions. The Lean verification scope remains conditional logical assembly from localized packages to the main no-escape and terminal-extension conclusions.
