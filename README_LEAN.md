# R1985D Lean Package

R1985D adds the manuscript-anchored endpoint first implementation block.

It is designed to be applied after the verified R1984D layer.

```bash
git pull
unzip R1985D_MANUSCRIPT_ENDPOINT_FIRST_IMPLEMENTATION_BLOCK_PATCH.zip -d r1985_patch
cp -r r1985_patch/. .
rm -rf r1985_patch
rm R1985D_MANUSCRIPT_ENDPOINT_FIRST_IMPLEMENTATION_BLOCK_PATCH.zip

export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1985D_MANUSCRIPT_ENDPOINT_FIRST_IMPLEMENTATION_BLOCK.txt
```

Success criterion:

```text
Build completed successfully (... jobs).
```
