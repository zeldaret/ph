#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

struct UnkStruct_ov000_020b1d70_00 {
    /* 00 */ unk8 mUnk_00;
    /* 01 */ u8 mUnk_01; // number of entries in UnkStruct_ov000_020b1d70::mUnk_04
    /* 02 */
};

struct UnkStruct_ov000_020b1d70_04 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ Vec3p mUnk_04;
    /* 10 */ unk8 mUnk_10[0x14];
    /* 24 */
};

struct UnkStruct_ov000_020b1d70 {
    /* 00 */ UnkStruct_ov000_020b1d70_00 *mUnk_00;
    /* 04 */ UnkStruct_ov000_020b1d70_04 *mUnk_04;
    /* 08 */
};

UnkStruct_ov000_020b1d70 *func_ov000_020b1d70(s32 param1, Vec3p *param2, u8 *param3);
bool IsXzDistWithin(Vec3p *a, Vec3p *b, q20 dist);
