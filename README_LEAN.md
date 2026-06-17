# R1989D Lean Package

R1989D adds the endpoint concrete-lemma stub layer under the verified R1988D
endpoint kernel axiom boundary and first concrete-lemma boundary.

It is designed to be applied after the verified R1988D layer.

```bash
git pull
unzip R1989D_ENDPOINT_CONCRETE_LEMMA_STUBS_PATCH.zip -d r1989_patch
cp -r r1989_patch/. .
rm -rf r1989_patch
rm R1989D_ENDPOINT_CONCRETE_LEMMA_STUBS_PATCH.zip

export PATH="$HOME/.elan/bin:$PATH"
lake build 2>&1 | tee VERIFY_LOG_CODESPACES_R1989D_ENDPOINT_CONCRETE_LEMMA_STUBS.txt
```

Success criterion:

```text
Build completed successfully (... jobs).
```
