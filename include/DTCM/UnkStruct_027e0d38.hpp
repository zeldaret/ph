#pragma once

#include "global.h"
#include "types.h"

struct UnkStruct_027e0d38_Unk28 {
    /* 00 */ unk8 mUnk_00[0x34];
    /* 34 */ bool mUnk_34;
    /* 35 */
};

struct UnkStruct_027e0d38 {
    /* 00 */ unk8 mUnk_00;
    /* 01 */ unk8 mUnk_01[3]; // padding?
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk16 mUnk_1c;
    /* 1e */ unk8 mUnk_1e;
    /* 1f */ unk8 mUnk_1f;
    /* 20 */ unk8 mUnk_20;
    /* 21 */ unk8 mUnk_21;
    /* 22 */ unk8 mUnk_22[2]; // padding?
    /* 24 */ void *mUnk_24;
    /* 28 */ UnkStruct_027e0d38_Unk28 *mUnk_28;
    /* 2c */

    s32 func_ov000_02078b40();
    unk8 func_ov000_02078b64();
    bool func_ov000_02078b88();
};

extern UnkStruct_027e0d38 *data_027e0d38;
