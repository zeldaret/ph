#pragma once

#include "Unknown/UnkStruct_func_0201f704.hpp"
#include "global.h"
#include "types.h"

class UnkStruct_020ee6f8_18 {
public:
    /* 00 */ unk32 mUnk_00;
    /* 00 */ unk32 mUnk_04;
    /* 08 */
};

class UnkStruct_020ee6f8 {
public:
    /* 00 */ UnkStruct_func_0201f704 mUnk_00;
    /* 04 */ bool mUnk_04;
    /* 04 */ unk8 mUnk_05;
    /* 04 */ unk8 mUnk_06;
    /* 04 */ unk8 mUnk_07;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ UnkStruct_020ee6f8_18 mUnk_18[3];
    /* 30 */ unk32 mUnk_30;
    /* 34 */ unk32 mUnk_34;
    /* 38 */ bool mUnk_38;

    UnkStruct_020ee6f8();
};

extern UnkStruct_020ee6f8 data_ov000_020ee6f8;
