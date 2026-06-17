# R1986D Lean Package

R1986D adds the endpoint statement group layer under the verified R1985D endpoint
first implementation block.

It is designed to be applied after the verified R1985D layer.

```bash
git pull
unzip R1986D_ENDPOINT_STATEMENT_GROUP_PATCH.zip -d r1986_patch
cp -r r1986_patch/. .
rm -rf r1986_patch
rm R1986D_ENDPOINT_STATEMENT_GROUP_PATCH.zip

export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1986D_ENDPOINT_STATEMENT_GROUP.txt
```

Success criterion:

```text
Build completed successfully (... jobs).
```
