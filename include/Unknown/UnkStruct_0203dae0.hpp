#pragma once

#include "global.h"
#include "types.h"

#include "Message/MsgProc.hpp"
#include "Unknown/UnkStruct_02032f0c.hpp"

class UnkStruct_0203dae0_114;

// astruct_7, MsgProc_Base2
class UnkStruct_0203dae0 : public UnkStruct_02032f0c {
public:
    /* 000 (base) */
    /* 052 */ unk16 mUnk_52;
    /* 054 */ unk16 mUnk_54;
    /* 054 */ unk16 mUnk_56;
    /* 058 */ unk32 mUnk_58;
    /* 05c */ s16 mUnk_5c;
    /* 05e */ s16 mUnk_5e;
    /* 060 */ unk32 mUnk_60;
    /* 064 */ unk32 mUnk_64;
    /* 068 */ unk32 mUnk_68;
    /* 06c */ unk32 mUnk_6c;
    /* 070 */ unk32 mUnk_70;
    /* 074 */ unk32 mUnk_74;
    /* 078 */ unk32 mUnk_78;
    /* 07c */ unk32 mUnk_7c;
    /* 080 */ unk32 mUnk_80;
    /* 084 */ unk32 mUnk_84;
    /* 088 */ unk32 mUnk_88;
    /* 08c */ unk32 mUnk_8c;
    /* 090 */ unk32 mUnk_90;
    /* 094 */ unk32 mUnk_94;
    /* 098 */ unk32 mUnk_98;
    /* 09c */ unk32 mUnk_9c;
    /* 0a0 */ unk32 mUnk_a0;
    /* 0a4 */ unk32 mUnk_a4;
    /* 0a8 */ unk32 mUnk_a8;
    /* 0ac */ unk32 mUnk_ac;
    /* 0b0 */ unk32 mUnk_b0;
    /* 0b4 */ unk32 mUnk_b4;
    /* 0b8 */ unk32 mUnk_b8;
    /* 0bc */ unk32 mUnk_bc;
    /* 0c0 */ unk32 mUnk_c0;
    /* 0c4 */ unk32 mUnk_c4;
    /* 0c8 */ unk32 mUnk_c8;
    /* 0cc */ unk32 mUnk_cc;
    /* 0d0 */ unk32 mUnk_d0;
    /* 0d4 */ unk32 mUnk_d4;
    /* 0d8 */ unk32 mUnk_d8;
    /* 0dc */ unk32 mUnk_dc;
    /* 0e0 */ unk32 mUnk_e0;
    /* 0e4 */ unk32 mUnk_e4;
    /* 0e8 */ unk8 mUnk_e8;
    /* 0e8 */ unk8 mUnk_e9;
    /* 0e8 */ unk8 mUnk_ea;
    /* 0e8 */ unk8 mUnk_eb;
    /* 0ec */ unk32 mUnk_ec;
    /* 0f0 */ unk32 mUnk_f0;
    /* 0f4 */ unk32 mUnk_f4;
    /* 0f8 */ unk32 mUnk_f8;
    /* 0fc */ unk32 mUnk_fc;
    /* 100 */ unk32 mUnk_100;
    /* 104 */ unk32 mUnk_104;
    /* 108 */ unk8 mUnk_108;
    /* 108 */ unk8 mUnk_109;
    /* 108 */ unk8 mUnk_10a;
    /* 108 */ unk8 mUnk_10b;
    /* 10c */ unk32 mUnk_10c;
    /* 110 */ unk32 mUnk_110;
    /* 114 */ UnkStruct_0203dae0_114 *mUnk_114;
    /* 118 */ s32 mUnk_118;
    /* 11c */ u16 mUnk_11c;
    /* 11e */ u8 mUnk_11e;
    /* 11f */ u8 mUnk_11f;
    /* 120 */ u8 mUnk_120;
    /* 121 */ s8 mUnk_121;
    /* 123 */ u8 mUnk_122;

    /* 00 */ virtual ~UnkStruct_0203dae0();
    /* 08 */ virtual void vfunc_08(s32 param1, unk32 param2, s16 *param3, unk32 param4);
    /* 0c */ virtual void vfunc_0c(unk32 param1, unk32 param2, unk32 param3, unk32 param4);
    /* 10 */ virtual void vfunc_10(u32 param1, unk32 param2);
    /* 14 */ virtual bool vfunc_14(s32 param1, s32 param2);
    /* 18 */ virtual unk32 vfunc_18(s32 param1);
    /* 28 */ virtual bool vfunc_28();
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30();
    /* 34 */

    // /* 0x08 */ /* func_0203e2ac */ virtual void vfunc_08(unk32* param_2, unk32* param_3) override;
    // /* 0x0C */ /* func_02039578 */ virtual void vfunc_0C(u8 param_2, u8 param_3, u8 param_4, unk32 param_5) override;
    // /* 0x10 */ /* func_0203e060 */ virtual void vfunc_10(u8 param_2, u8 param_3) override; // func_0203e060?
    // /* 0x14 */ /* func_0203dcb4 */ virtual bool vfunc_14(unk32 param_2, unk32 param_3) override;
    // /* 0x18 */ /* func_0203e284 */ virtual unk32 vfunc_18(UnkStruct_0203b264* param_2, unk32 param_3, unk32 param_4)
    // override;
    // /* 0x1C */ virtual unk32 vfunc_1C(u16* param_2, UnkStruct_0203b264* param_3, unk8 param_4, unk32 param_5) override;
    // /* 0x20 */ virtual UNK_TYPE vfunc_20(UNK_TYPE) override;
    // /* 0x24 */ virtual UNK_TYPE vfunc_24(UNK_TYPE) override;
    // /* 0x28 */ /* func_0203e0c8 */ virtual bool vfunc_28(void) override;
    // /* 0x2C */ /* func_0203e19c */ virtual void vfunc_2C(void) override;
    // /* 0x30 */ /* func_0203e090 */ virtual void vfunc_30(void) override;

    //! TODO: fake?
    /* 34 */ virtual unk32 vfunc_34(unk32 param_2) override;
    /* 38 */ virtual bool vfunc_38(void) override;
    /* 3c */ virtual void vfunc_3C(unk32 param_2) override;
    /* 40 */ virtual void vfunc_40(unk32 param_2, unk32 param_3) override;
    /* 44 */ virtual void vfunc_44(s32 touchLastX, s32 touchLastY) override;
    /* 48 */ virtual void vfunc_48(void) override;
    /* 4c */ virtual void vfunc_4C(void) override; // func_02039a3c?
    /* 50 */ virtual void vfunc_50(EntryINF1 *param_2, u32 param_3, s16 *param_4, UnkSubClass1_02256FF8 *param_5) override;
    /* 54 */ virtual void vfunc_54(void) override;
    /* 58 */ virtual void vfunc_58(void) override;
    /* 5c */ virtual void vfunc_5C(void) override;
    /* 60 */ virtual void vfunc_60(func_0203b410_param1 *param_2, unk32 param_3, unk32 param_4) override;
    /* 64 */ virtual void vfunc_64(s16 *param_2) override;
    /* 68 */ virtual unk32 vfunc_68(unk32 param_2) override;
    /* 6c */ virtual void vfunc_6C(unk32 *param_2, unk32 *param_3) override;
    /* 70 */ virtual void vfunc_70(unk32 *param_2, unk32 *param_3) override;
    /* 74 */

    UnkStruct_0203dae0(u8 param1);
    void func_0203dc10(unk32 param1);
    void func_0203dc10(unk32 param_2, unk32 param_3);
    bool func_0203dc74(s32 param1, s32 param2);
    void func_0203dcfc(u8 param1, unk32 param2, unk32 param3, s32 param4);
    unk32 *func_0203ddec();
    void func_0203ddfc();
    void func_0203de14();
    s32 func_0203de24();
    bool func_0203de58(s32 param1);
    bool func_0203e0f8();
    bool func_0203e1b0(unk32 param1, unk32 param2, s32 param3);
    void func_0203e2e8(s32 param1, s32 param2, unk32 param3, u32 param4);
    void func_0203e510(s32 *param1, s32 param2, s32 param3);
    void func_0203e62c(s32 *param1, s32 param2);
    bool func_0203e6e4(u32 param1, u32 param2, s32 param3);

    void func_ov003_020f13b0(unk32 param1);
};
