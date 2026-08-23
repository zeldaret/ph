#pragma once

#include "global.h"
#include "types.h"

#include "Actor/ActorRef.hpp"
#include "Unknown/UnkStruct_02037750.hpp"

class UnkStruct_ov000_020d18f4 : public UnkStruct_02037750 {
public:
    /* 00 (base) */
    /* 20 */ ActorRef mUnk_20;
    /* 28 */ ActorRef mUnk_28[3];
    /* 40 */ void *mUnk_40;
    /* 44 */ unk32 mUnk_44;
    /* 48 */ void *mUnk_48;
    /* 4c */ unk32 mUnk_4c;
    /* 50 */ unk32 mUnk_50;
    /* 54 */ u8 mUnk_54;
    /* 55 */ unk8 mUnk_55[0x3];
    /* 58 */ unk32 mUnk_58;
    /* 5c */

    UnkStruct_ov000_020d18f4(unk32 param1);
    ~UnkStruct_ov000_020d18f4();
};
