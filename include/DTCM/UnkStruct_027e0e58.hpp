#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

class UnkStruct_ov000_020b7d74;

struct UnkStruct_027e0e58 {
    /* 00 */ unk8 mUnk_00[0x22];
    /* 22 */ unk16 mUnk_22;

    void func_ov000_0207c5d4(unk32 param1, bool param2);
    void func_ov000_0207c1b0(unk32 param1, Vec3p *param2, unk32 param3, unk32 param4, unk32 param5);
    void func_ov000_0207c1f8(UnkStruct_ov000_020b7d74 *ref, u32 modelId, Vec3p *pos, s32 param5);
};

extern UnkStruct_027e0e58 *data_027e0e58;
