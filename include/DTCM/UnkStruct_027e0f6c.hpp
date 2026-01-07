#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

class UnkStruct_027e0f6c_Unk_1 {
public:
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */

    UnkStruct_027e0f6c_Unk_1();
    ~UnkStruct_027e0f6c_Unk_1();
};

class UnkStruct_027e0f6c_20 {
public:
    /* 00 */ u16 mUnk_00;
    /* 02 */ u16 mUnk_02;
    /* 04 */ u16 mUnk_04;
    /* 06 */ u16 mUnk_06;
    /* 08 */ Vec3p mUnk_08;
    /* 14 */ s32 mUnk_14;
    /* 18 */ UnkStruct_027e0f6c_Unk_1 mUnk_18[3];
    /* 48 */ s32 mUnk_48;
    /* 4c */

    UnkStruct_027e0f6c_20 &operator=(const UnkStruct_027e0f6c_20 &other) {
        u16 temp_r2 = other.mUnk_00;
        mUnk_02     = other.mUnk_02;
        mUnk_00     = temp_r2;
        mUnk_04     = other.mUnk_04;
        mUnk_06     = other.mUnk_06;
        mUnk_08.x   = other.mUnk_08.x;
        mUnk_08.y   = other.mUnk_08.y;
        mUnk_08.z   = other.mUnk_08.z;
        mUnk_14     = other.mUnk_14;
        mUnk_18[0]  = other.mUnk_18[0];
        mUnk_18[1]  = other.mUnk_18[1];
        mUnk_18[2]  = other.mUnk_18[2];
        mUnk_48     = other.mUnk_48;
        return *this;
    }
};

struct UnkStruct_027e0f6c {
    /* 00 */ unk8 mUnk_00[0x20];
    /* 20 */ UnkStruct_027e0f6c_20 *mUnk_20;

    static void func_ov000_02093a1c(u32 *param_1, UnkStruct_027e0f6c *param_2, u16 param_3);
    void func_ov004_02102770();
};

extern UnkStruct_027e0f6c *data_027e0f6c;
