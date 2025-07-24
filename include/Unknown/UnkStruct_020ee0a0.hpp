#pragma once

#include "global.h"
#include "types.h"

class UnkStruct_020ee0a0 {
public:
    /* 00 */ unk8 mUnk_00;
    /* 00 */ unk8 mUnk_01;
    /* 02 */ unk16 mUnk_02;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14[8];
    /* 34 */ unk32 mUnk_34;
    /* 38 */ unk32 mUnk_38;
    /* 3c */ unk32 mUnk_3c;
    /* 40 */ unk32 mUnk_40;
    /* 44 */ unk8 mUnk_44;
    /* 45 */ unk8 mUnk_45;
    /* 46 */ unk8 mUnk_46;
    /* 47 */ unk8 mUnk_47;

    UnkStruct_020ee0a0();

    void func_ov008_021135b8();
    void func_ov000_0209cd80(unk16 param_2);
    void func_ov000_0209cd9c(unk16 param_2, unk32 param_3);
    void func_ov000_0209cddc(unk32 param_2);
    void func_ov000_0209cdf8(unk32 param_2);
};

extern UnkStruct_020ee0a0 data_ov000_020ee0a0;
