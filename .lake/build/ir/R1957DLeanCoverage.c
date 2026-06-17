// Lean compiler output
// Module: R1957DLeanCoverage
// Imports: public import Init public meta import Init public import R1957DLeanCoverage.VersionCoverage public import R1957DLeanCoverage.CoverageCertificates public import R1957DLeanCoverage.DependencyProfiles public import R1957DLeanCoverage.NoHiddenAssumptions public import R1957DLeanCoverage.ToyCoverage
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1957DLeanCoverage_VersionCoverage(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1957DLeanCoverage_CoverageCertificates(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1957DLeanCoverage_DependencyProfiles(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1957DLeanCoverage_NoHiddenAssumptions(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1957DLeanCoverage_ToyCoverage(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1957DLeanCoverage(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1957DLeanCoverage_VersionCoverage(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1957DLeanCoverage_CoverageCertificates(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1957DLeanCoverage_DependencyProfiles(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1957DLeanCoverage_NoHiddenAssumptions(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1957DLeanCoverage_ToyCoverage(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
