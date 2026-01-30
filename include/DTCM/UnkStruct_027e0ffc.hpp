#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Physics/Cylinder.hpp"

struct UnkStruct_027e0ffc {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04[0x4];
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk8 mUnk_24;
    /* 25 */ unk8 mUnk_25[0x3];
    /* 28 */ unk32 mUnk_28;
    /* 2c */ unk32 mUnk_2c;
    /* 30 */ unk32 mUnk_30;
    /* 34 */ unk32 mUnk_34;
    /* 38 */ unk8 mUnk_38;
    /* 39 */

    void func_ov000_020ce704();
    void func_ov000_020ceacc(unk32 param1, Vec3p *param2, unk32 param3);
    void func_ov000_020cebcc(u32 param1, unk16 param2, unk32 param3);
    void func_ov000_020cec60(u16, Vec3p *, Actor *, unk32);
    void func_ov000_020ced64(Cylinder *param1, u32 param2, u32 param3);
    void func_ov000_020ced7c(Vec3p *param1, s32 param2, s32 param3, unk32 param4);
};

extern UnkStruct_027e0ffc data_027e0ffc;
