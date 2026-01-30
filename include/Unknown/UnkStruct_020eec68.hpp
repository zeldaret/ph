#pragma once

#include "global.h"
#include "types.h"

#include "Sound/Sfx.hpp"
#include "Unknown/UnkStruct_func_0201f704.hpp"

struct UnkStruct_020eec68_0c {
    unk32 mUnk_00;

    void func_02021a1c();
};

class UnkStruct_020eec68 {
public:
    /* 00 */ UnkStruct_func_0201f704 mUnk_00[3];
    /* 0c */ UnkStruct_020eec68_0c mUnk_0c;
    /* 10 */ unk8 mUnk_10;
    /* 11 */ unk8 mUnk_11;
    /* 12 */ unk8 mUnk_12;
    /* 13 */ unk8 mUnk_13;
    /* 14 */ unk8 mUnk_14;
    /* 15 */ unk8 mUnk_15;
    /* 16 */ unk8 mUnk_16;
    /* 17 */ unk8 mUnk_17;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2c */ unk32 mUnk_2c;

    UnkStruct_020eec68();

    void func_ov000_020d70a4(unk32 param1, unk32 param2, unk32 param3);
    void func_ov000_020d716c(unk32 param1);
    void func_ov000_020d72b8();
    void PlaySoundEffect(SfxId sfx);
    unk32 func_ov000_020d7424();

    void func_ov008_021132cc();
};

extern UnkStruct_020eec68 data_ov000_020eec68;
