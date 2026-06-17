# R1987D Lean Package

R1987D adds the endpoint proof-kernel interface layer under the verified R1986D
endpoint statement group.

It is designed to be applied after the verified R1986D layer.

```bash
git pull
unzip R1987D_ENDPOINT_PROOF_KERNEL_INTERFACE_PATCH.zip -d r1987_patch
cp -r r1987_patch/. .
rm -rf r1987_patch
rm R1987D_ENDPOINT_PROOF_KERNEL_INTERFACE_PATCH.zip

export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1987D_ENDPOINT_PROOF_KERNEL_INTERFACE.txt
```

Success criterion:

```text
Build completed successfully (... jobs).
```
