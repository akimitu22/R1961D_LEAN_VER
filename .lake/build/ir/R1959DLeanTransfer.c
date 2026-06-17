// Lean compiler output
// Module: R1959DLeanTransfer
// Imports: public import Init public meta import Init public import R1959DLeanTransfer.VersionTransfer public import R1959DLeanTransfer.SameScaleTransfer public import R1959DLeanTransfer.FiniteToAbelTransfer public import R1959DLeanTransfer.TransferCertificates public import R1959DLeanTransfer.ToyTransfer
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
lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_VersionTransfer(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_SameScaleTransfer(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_FiniteToAbelTransfer(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_TransferCertificates(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_ToyTransfer(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1959DLeanTransfer_VersionTransfer(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1959DLeanTransfer_SameScaleTransfer(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1959DLeanTransfer_FiniteToAbelTransfer(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1959DLeanTransfer_TransferCertificates(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1959DLeanTransfer_ToyTransfer(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
