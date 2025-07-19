#pragma once

#include "global.h"
#include "types.h"

#include "Debug/DebugHierarchy.hpp"

struct UnkStruct_027e0f64_04 {
    /* 000 */ unk8 mUnk_00[0x15c];
    /* 15c */ unk32 mUnk_15c;
};

class UnkStruct_027e0f64 {
public:
    /* 0 */ DebugHierarchyBase *mUnk_0;
    /* 4 */ UnkStruct_027e0f64_04 *mUnk_4;
    /* 8 */ void *mUnk_8;
    /* c */

    unk32 func_ov000_0208b180();
};

extern UnkStruct_027e0f64 *data_027e0f64;
