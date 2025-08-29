#pragma once

#include "global.h"
#include "types.h"

#include "Actor/ActorRef.hpp"
#include "Unknown/UnkStruct_02037750.hpp"

class UnkStruct_ov000_020d18f4 : public UnkStruct_02037750 {
public:
    /* 00 (base) */
    /* 20 */ ActorRef mUnk_20;
    /* 28 */ unk8 mUnk_28[0x18];
    /* 40 */ void *mUnk_40;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ unk32 mUnk_48;
    /* 4c */ unk32 mUnk_4c;
    /* 50 */ unk32 mUnk_50;
    /* 54 */ unk32 mUnk_54;
    /* 58 */ unk32 mUnk_58;
    /* 5c */

    UnkStruct_ov000_020d18f4(unk32 param1);
    ~UnkStruct_ov000_020d18f4();
};
