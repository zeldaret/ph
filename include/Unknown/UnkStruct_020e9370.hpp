#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

class UnkStruct_020e9370 {
public:
    /* 000 */ unk8 mUnk_000[0x900];
    /* 900 */ unk32 mUnk_900;
    /* 904 */ unk32 mUnk_904;
    /* 908 */ unk16 mUnk_908;
    /* 90a */ unk16 mUnk_90a;
    /* 90c */ unk32 mUnk_90c;
    /* 910 */ unk32 mUnk_910;
    /* 914 */ unk32 mUnk_914;

    UnkStruct_020e9370();

    void func_ov005_02102c2c(unk32 param1, Vec3p *pos, unk32 param3, unk32 param4, unk32 param5, unk32 param6, unk32 param7,
                             unk32 param8, unk32 param9);
};

extern UnkStruct_020e9370 data_ov000_020e9370;
