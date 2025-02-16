#pragma once

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "System/SysNew.hpp"

class PlayerControlData : public SysObject {
public:
    /* 000 (vtable) */
    /* 004 */ unk32 mUnk_004;
    /* 008 */ unk32 mUnk_008;
    /* 00c */ unk32 mRadius;
    /* 010 */ unk32 mUnk_010;
    /* 014 */ unk32 mUnk_014;
    /* 018 */ unk32 mStateUnk;
    /* 01c */ Vec3p mUnk_01c;
    /* 028 */ unk16 mUnk_028;
    /* 02a */ unk16 mUnk_02a;
    /* 02c */ unk16 mUnk_02c;
    /* 02e */ unk16 mUnk_02e;
    /* 030 */ unk16 mUnk_030;
    /* 032 */ unk16 mUnk_032;
    /* 034 */ Vec3p mFairyVector; // shortened vector from link to fairy?
    /* 040 */ unk8 mUnk_040[0xc0];
    /* 100 */ unk32 mUnk_100;
    /* 104 */ unk8 mUnk_104[0x14];
    /* 118 */ unk32 mUnk_118;
    /* 11c */ unk8 mUnk_11c[4];
    /* 120 */ unk32 mUnk_120;
    /* 124 */ unk8 mUnk_124[0x14];
    /* 138 */ unk32 mUnk_138;
    /* 13c */ unk8 mUnk_13c[4];
    /* 140 */ unk32 mUnk_140;
    /* 144 */ unk32 mUnk_144;
    /* 148 */ unk8 mUnk_148[8];
    /* 150 */ unk16 mUnk_150;
    /* 152 */ unk8 mUnk_152[2];
    /* 154 */ unk32 mUnk_154;
    /* 158 */ unk32 mUnk_158;
    /* 15c */ s32 mUnk_15c;
    /* 160 */ unk32 mUnk_160;
    /* 164 */ s32 mUnk_164;
    /* 168 */ unk32 mUnk_168;
    /* 16c */ unk32 mUnk_16c;
    /* 170 */ unk32 mUnk_170;
    /* 174 */ unk8 mUnk_174[4];
    /* 178 */ unk32 mUnk_178;
    /* 17c */ unk32 mUnk_17c;
    /* 180 */ unk8 mUnk_180[4];
    /* 184 */ unk32 mUnk_184;
    /* 184 */ unk32 mUnk_188;
    /* 18c */ unk32 mUnk_18c;
    /* 190 */ unk32 mUnk_190;
    /* 194 */ unk32 mUnk_194;
    /* 198 */ unk32 mUnk_198;
    /* 19c */ unk16 mUnk_19c;
    /* 19e */ unk16 mUnk_19e;
    /* 1a0 */

    /* 00 */ virtual void vfunc_00();
    /* 04 */ virtual ~PlayerControlData();
    /* 0c */ virtual unk32 vfunc_0c();
    /* 10 */ virtual unk32 GetCharacterId()    = 0;
    /* 14 */ virtual void vfunc_14(s32 param1) = 0;
    /* 18 */ virtual void vfunc_18();
    /* 1c */ virtual void vfunc_1c();
    /* 20 */ virtual void vfunc_20();
    /* 24 */ virtual void vfunc_24();
    /* 28 */ virtual void vfunc_28();
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30();
    /* 34 */ virtual void vfunc_34();
    /* 38 */ virtual void vfunc_38(s32 param1, s32 param2) = 0;
    /* 3c */ virtual void vfunc_3c(s32 param1, s32 param2);
    /* 40 */ virtual void vfunc_40(u16 *param1, Vec3p *param2, unk32 param3, char param4);
    /* 44 */ virtual void vfunc_44(unk32 param1, unk32 *param2, unk32 param3, unk16 param4);
    /* 48 */ virtual void vfunc_48(unk32 param1, unk32 param2, unk32 param3, s16 param4);
    /* 4c */ virtual void vfunc_4c(unk32 param1, Vec3p *param2);
    /* 50 */ virtual void vfunc_50();
    /* 54 */ virtual void vfunc_54();
    /* 58 */ virtual void vfunc_58();
    /* 5c */ virtual void vfunc_5c();
    /* 60 */ virtual void vfunc_60(unk32 param1, unk32 param2, s32 param3);
    /* 64 */ virtual void vfunc_64(u32 param1);
    /* 68 */ virtual void vfunc_68(unk32 param1, unk32 param2);
    /* 6c */ virtual void vfunc_6c(s32 param1, Vec3p *param2);
    /* 70 */ virtual void vfunc_70(s32 param1);
    /* 74 */ virtual unk32 vfunc_74(s32 param1);
    /* 78 */ virtual unk32 vfunc_78(s32 param1);
    /* 7c */ virtual unk32 vfunc_7c();
    /* 80 */

    void func_ov000_020b4440();
    void func_ov000_020b4460(s32 param1);
    void func_ov000_020b44d4(s32 param1, u32 param2);
    void func_ov000_020b4558(s32 param1, u32 param2);
    void func_ov000_020b45e0();
    void func_ov000_020b45f8(unk32 *param1, unk8 param2, unk8 param3);
    void func_ov000_020b464c(unk32 *param1, unk8 param2, unk8 param3);
    void func_ov000_020b484c(s32 param1, s32 param2, s32 param3);
    void func_ov000_020b4944(unk32 param1, u32 param2, s32 param3);
    void func_ov000_020b4a00(s32 *param1, s32 *param2, s32 *param3, s32 param4);

    PlayerControlData();
};

extern PlayerControlData *gPlayerControlData;
