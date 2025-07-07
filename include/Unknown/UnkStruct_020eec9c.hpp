#pragma once

#include "Unknown/UnkStruct_func_0201f704.hpp"
#include "global.h"
#include "types.h"

struct UnkStruct_020eec9c_28 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk16 mUnk_04;
    /* 06 */ unk8 mUnk_06;
    /* 07 */ unk8 mUnk_07;
    /* 08 */ UnkStruct_func_0201f704 mUnk_08;
    /* 0c */
};

class UnkStruct_020eec9c {
public:
    /* 00 */ UnkStruct_func_0201f704 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk8 mUnk_08;
    /* 09 */ unk8 mUnk_09;
    /* 0a */ unk8 mUnk_0a;
    /* 0b */ unk8 mUnk_0b;
    /* 0c */ unk8 mUnk_0c;
    /* 0d */ unk8 mUnk_0d;
    /* 0e */ unk8 mUnk_0e;
    /* 0f */ unk8 mUnk_0f;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ UnkStruct_020eec9c_28 mUnk_28[8];
    /* 88 */ unk32 mUnk_88;

    UnkStruct_020eec9c();

    void func_ov000_020d77e4(unk32);
    unk32 func_ov000_020d7f18(unk32);
    void func_ov008_0211337c();
};

extern UnkStruct_020eec9c data_ov000_020eec9c;
