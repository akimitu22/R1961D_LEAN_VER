// Lean compiler output
// Module: R1959DLeanTransfer.TransferCertificates
// Imports: public import Init public meta import Init public import R1959DLeanTransfer.FiniteToAbelTransfer public import R1958DLeanAudit public import R1956DLeanInterface
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
extern lean_object* lp_R1961DLeanPacket_R1956DLeanInterface_conclusionTransferSlot;
extern lean_object* lp_R1961DLeanPacket_R1956DLeanInterface_abelBoundaryEstimateSlot;
extern lean_object* lp_R1961DLeanPacket_R1956DLeanInterface_finiteLiCompatibilitySlot;
static lean_once_cell_t lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__0_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__0;
static lean_once_cell_t lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__1_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__1;
static lean_once_cell_t lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__2_once = LEAN_ONCE_CELL_INITIALIZER;
static lean_object* lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__2;
LEAN_EXPORT lean_object* lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots;
static const lean_ctor_object lp_R1961DLeanPacket_R1959DLeanTransfer_r1959TransferDepthCertificate___closed__0_value = {.m_header = {.m_rc = 0, .m_cs_sz = sizeof(lean_ctor_object) + sizeof(void*)*0 + 16, .m_other = 0, .m_tag = 0}, .m_objs = {LEAN_SCALAR_PTR_LITERAL(1, 1, 1, 1, 1, 1, 1, 0),LEAN_SCALAR_PTR_LITERAL(0, 0, 0, 0, 0, 0, 0, 0)}};
static const lean_object* lp_R1961DLeanPacket_R1959DLeanTransfer_r1959TransferDepthCertificate___closed__0 = (const lean_object*)&lp_R1961DLeanPacket_R1959DLeanTransfer_r1959TransferDepthCertificate___closed__0_value;
LEAN_EXPORT const lean_object* lp_R1961DLeanPacket_R1959DLeanTransfer_r1959TransferDepthCertificate = (const lean_object*)&lp_R1961DLeanPacket_R1959DLeanTransfer_r1959TransferDepthCertificate___closed__0_value;
static lean_object* _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__0(void){
_start:
{
lean_object* v___x_1_; lean_object* v___x_2_; lean_object* v___x_3_; 
v___x_1_ = lean_box(0);
v___x_2_ = lp_R1961DLeanPacket_R1956DLeanInterface_conclusionTransferSlot;
v___x_3_ = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(v___x_3_, 0, v___x_2_);
lean_ctor_set(v___x_3_, 1, v___x_1_);
return v___x_3_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__1(void){
_start:
{
lean_object* v___x_4_; lean_object* v___x_5_; lean_object* v___x_6_; 
v___x_4_ = lean_obj_once(&lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__0, &lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__0_once, _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__0);
v___x_5_ = lp_R1961DLeanPacket_R1956DLeanInterface_abelBoundaryEstimateSlot;
v___x_6_ = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(v___x_6_, 0, v___x_5_);
lean_ctor_set(v___x_6_, 1, v___x_4_);
return v___x_6_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__2(void){
_start:
{
lean_object* v___x_7_; lean_object* v___x_8_; lean_object* v___x_9_; 
v___x_7_ = lean_obj_once(&lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__1, &lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__1_once, _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__1);
v___x_8_ = lp_R1961DLeanPacket_R1956DLeanInterface_finiteLiCompatibilitySlot;
v___x_9_ = lean_alloc_ctor(1, 2, 0);
lean_ctor_set(v___x_9_, 0, v___x_8_);
lean_ctor_set(v___x_9_, 1, v___x_7_);
return v___x_9_;
}
}
static lean_object* _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots(void){
_start:
{
lean_object* v___x_10_; 
v___x_10_ = lean_obj_once(&lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__2, &lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__2_once, _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots___closed__2);
return v___x_10_;
}
}
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_Init(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_FiniteToAbelTransfer(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1958DLeanAudit(uint8_t builtin);
lean_object* initialize_R1961DLeanPacket_R1956DLeanInterface(uint8_t builtin);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_R1961DLeanPacket_R1959DLeanTransfer_TransferCertificates(uint8_t builtin) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_Init(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1959DLeanTransfer_FiniteToAbelTransfer(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1958DLeanAudit(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_R1961DLeanPacket_R1956DLeanInterface(builtin);
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots = _init_lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots();
lean_mark_persistent(lp_R1961DLeanPacket_R1959DLeanTransfer_sameScaleTransferCriticalSlots);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
