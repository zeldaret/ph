#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Physics/Cylinder.hpp"
#include "Unknown/UnkStruct_ov000_020b1528.hpp"

class UnkStruct_027e0fd4_Unk1 {
public:
    /* 00 (vtable) */
    /* 04 */ unk8 mUnk_04;
    /* 08 */ Vec3p mUnk_08;
    /* 14 */

    /* 00 */ virtual ~UnkStruct_027e0fd4_Unk1();
    /* 08 */ virtual void vfunc_08(u16 *param1, unk32 param2, u32 param3);
    /* 0c */ virtual unk32 vfunc_0c();
    /* 10 */ virtual bool vfunc_10(s32 *param1);
    /* 14 */ virtual bool vfunc_14();
    /* 18 */
};

class UnkStruct_027e0fd4 : public UnkStruct_ov000_020b1528 {
public:
    /* 000 (base) */
    /* 01c */ unk8 mUnk_018[0x4];
    /* 020 */ Cylinder mUnk_020;
    /* 030 */ s32 mUnk_030;
    /* 034 */ s32 mUnk_034;
    /* 038 */ s32 mUnk_038;
    /* 03c */ s32 mUnk_03c;
    /* 040 */ s32 mUnk_040;
    /* 044 */ Vec3p mUnk_044;
    /* 050 */ s32 mUnk_050;
    /* 054 */ unk8 mUnk_054[0x6];
    /* 05a */ unk16 mUnk_05a;
    /* 05c */ unk16 mUnk_05c;
    /* 05e */ unk16 mUnk_05e;
    /* 060 */ unk16 mUnk_060;
    /* 062 */ unk8 mUnk_062[0x2];
    /* 064 */ s32 mUnk_064;
    /* 068 */ s32 mUnk_068;
    /* 06c */ s32 mUnk_06c;
    /* 070 */ unk32 mUnk_070;
    /* 074 */ unk32 mUnk_074;
    /* 078 */ unk8 mUnk_078[0x18];
    /* 090 */ unk32 mUnk_090;
    /* 094 */ u32 mUnk_094;
    /* 098 */ s32 mUnk_098;
    /* 09c */ unk32 mUnk_09c;
    /* 0a0 */ u16 mUnk_0a0;
    /* 0a2 */ s16 mUnk_0a2;
    /* 0a4 */ unk16 mUnk_0a4;
    /* 0a6 */ unk16 mUnk_0a6;
    /* 0a8 */ unk16 mUnk_0a8;
    /* 0aa */ unk8 mUnk_0aa[0x2];
    /* 0ac */ unk32 mUnk_0ac;
    /* 0b0 */ unk32 mUnk_0b0;
    /* 0b4 */ unk32 mUnk_0b4;
    /* 0b8 */ unk8 mUnk_0b8;
    /* 0b9 */ bool mUnk_0b9;
    /* 0ba */ bool mUnk_0ba;
    /* 0bb */ unk8 mUnk_0bb[0x5];
    /* 0c0 */ unk32 mUnk_0c0;
    /* 0c4 */ u8 mUnk_0c4;
    /* 0c5 */ u8 mUnk_0c5;
    /* 0c6 */ s16 mUnk_0c6;
    /* 0c8 */ unk16 mUnk_0c8;
    /* 0ca */ u16 mUnk_0ca;
    /* 0cc */ u8 mUnk_0cc;
    /* 0cd */ bool mUnk_0cd;
    /* 0ce */ u8 mUnk_0ce;
    /* 0cf */ unk8 mUnk_0cf;
    /* 0d0 */ u32 mUnk_0d0;
    /* 0d4 */ s32 mUnk_0d4;
    /* 0d8 */ s32 mUnk_0d8;
    /* 0dc */ s32 mUnk_0dc;
    /* 0e0 */ Actor *mUnk_0e0;
    /* 0e4 */ unk32 mUnk_0e4;
    /* 0e8 */ unk32 mUnk_0e8;
    /* 0ec */ Actor *mUnk_0ec;
    /* 0f0 */ unk32 mUnk_0f0;
    /* 0f4 */ unk32 mUnk_0f4;
    /* 0f8 */ unk32 mUnk_0f8;
    /* 0fc */ s32 mUnk_0fc;
    /* 100 */ s32 mUnk_100;
    /* 104 */ s32 mUnk_104;
    /* 108 */ unk32 mUnk_108;
    /* 10c */ unk32 mUnk_10c;
    /* 110 */ unk32 mUnk_110;
    /* 114 */ unk32 mUnk_114;
    /* 118 */ unk32 mUnk_118;
    /* 11c */ s32 mUnk_11c;
    /* 120 */ Vec3p mUnk_120;
    /* 12c */

    /* 00 */ virtual ~UnkStruct_027e0fd4() override;
    /* 08 */ virtual bool vfunc_08() override;
    /* 0c */ virtual bool vfunc_0c() override;
    /* 10 */ virtual bool vfunc_10(s32 *param1) override;
    /* 14 */ virtual bool vfunc_14(u16 *index, unk32 param2) override;
    /* 18 */ virtual void Clear() override;
    /* 1c */ virtual void vfunc_1c();
    /* 20 */

    UnkStruct_027e0fd4();
    s32 func_Ov000_020b4c2c();
    void func_ov000_020b4c4c(Vec3p *param1, s32 size);
    void func_ov000_020b4d00();
    unk32 func_ov000_020b4d28(u32 *param1, s32 *param2, s32 *param3);
    unk32 func_ov000_020b5034(Vec3p *param1);
    bool func_ov000_020b50e0();
    bool func_ov000_020b50f8();
    unk32 func_ov000_020b510c();
    void func_ov000_020b5160(u32 *param1, u32 param2);
    bool func_ov000_020b5268(unk32 param1, Vec3p *param2, unk32 param3);
    u32 func_ov000_020b5360(s32 param1, s32 param2);
    void func_ov000_020b53c4(unk32 *param1);
    bool func_ov000_020b53f4(unk32 param1, unk32 param2, u32 param3);
    static void func_ov000_020b5420(unk32 *param1, UnkStruct_027e0fd4 *param2);
    void func_ov000_020b542c(u32 param1);
    void func_ov000_020b54c8();
    void func_ov000_020b5514(Vec3p *param1, Vec3p *param2);
    void func_ov000_020b5cb4(Vec3p *param1, Vec3p *param2, s32 *param3, s32 *param4);
    s32 func_ov000_020b6af0(unk32 *param1);
    void func_ov000_020b6ba4(s32 param1, s32 param2);
    bool func_ov000_020b6e70();
};

extern UnkStruct_027e0fd4 *data_027e0fd4;
