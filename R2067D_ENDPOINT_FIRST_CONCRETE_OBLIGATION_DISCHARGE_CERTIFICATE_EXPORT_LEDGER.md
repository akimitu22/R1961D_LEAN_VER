# R2067D Endpoint First Concrete Obligation Discharge Certificate Export Ledger

R2067D exports the checked local-discharge certificate from the R2066D closure to the endpoint branch.

## Lean object

```text
R2067DLeanEndpointFirstConcreteObligationDischargeCertificateExport
```

## Main move

R2067D records:

```lean
exportedLocalDischargeCertificate : AR.requiredLocalDischargeCertificate
exportedLocalDischargeCertificateProof : AR.localDischargeCertificateObligation exportedLocalDischargeCertificate
inheritedLocalDischargeClosureProof : AR.localDischargeConclusion
```

## Positive claim at this layer

```text
localDischargeCertificateExportedHere = true
endpointBranchLinkedHere = true
```

## Explicitly not claimed here

```text
endpoint theorem proved
RH proved
full RH formalization completed
```
