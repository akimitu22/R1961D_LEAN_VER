# R1988D Lean Package

R1988D adds the endpoint kernel axiom boundary layer under the verified R1987D
endpoint proof-kernel interface.

It is designed to be applied after the verified R1987D layer.

```bash
git pull
unzip R1988D_ENDPOINT_KERNEL_AXIOM_BOUNDARY_PATCH.zip -d r1988_patch
cp -r r1988_patch/. .
rm -rf r1988_patch
rm R1988D_ENDPOINT_KERNEL_AXIOM_BOUNDARY_PATCH.zip

export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1988D_ENDPOINT_KERNEL_AXIOM_BOUNDARY.txt
```

Success criterion:

```text
Build completed successfully (... jobs).
```
