#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

struct UnkStruct_ov000_020b7d74_00_20 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ Vec3p mUnk_04;
    /* 10 */
};

// Pooled object allocated by func_ov000_0207c1f8 and released by func_ov000_020b7e6c.
struct UnkStruct_ov000_020b7d74_00 {
    /* 00 */ unk8 mUnk_00[0x20];
    /* 20 */ UnkStruct_ov000_020b7d74_00_20 **mUnk_20;
    /* 24 */ u32 mUnk_24_0 : 1;
    /* 24 */ u32 mUnk_24_1 : 1;
    /* 24 */ u32 mUnk_24_2 : 1;
    /* 24 */ u32 mUnk_24_3 : 1; // hidden
    /* 24 */ u32 mUnk_24_4 : 28;
    /* 28 */ Vec3p mUnk_28;
    /* 34 */
};

class UnkStruct_ov000_020b7d74 {
public:
    /* 0 */ UnkStruct_ov000_020b7d74_00 *mUnk_0;
    /* 4 */

    inline UnkStruct_ov000_020b7d74() :
        mUnk_0(NULL) {}
    ~UnkStruct_ov000_020b7d74();

    void func_ov000_020b7e6c();
};
