#pragma once

#include "global.h"
#include "types.h"

struct UnkStruct_027e080c_010 {
    /* 00 */ s32 mUnk_00;
    /* 04 */ unk8 mUnk_04[0x8];
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk8 mUnk_14[0x50];
    /* 64 */
};

struct UnkStruct_027e080c {
public:
    /* 00 */ u8 mUnk_00;
    /* 01 */ u8 mUnk_01;
    /* 02 */ u8 mUnk_02;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ UnkStruct_027e080c_010 mUnk_10[2];
    /* d8 */

    void func_0202eebc(unk32);
    unk32 func_0202eef8();
};

extern UnkStruct_027e080c data_027e080c;
