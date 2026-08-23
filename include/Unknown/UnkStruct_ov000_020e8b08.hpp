#pragma once

#include "Actor/ActorRef.hpp"
#include "global.h"
#include "types.h"

struct UnkStruct_ov000_020e8b08 {
    /* 00 */ PAD(0x00, 0x20);
    /* 20 */ ActorRef mUnk_20[4]; // at least 4, unclear how many
    /* 40 */ PAD(0x40, 0x55);
    /* 55 */ u8 mUnk_55;
    /* 56 */

    inline bool Contains(ActorRef *ref) {
        for (s32 i = 0; i < 4; i++) {
            if (mUnk_20[i].id == ref->id) {
                return true;
            }
        }
        return false;
    }
};

extern UnkStruct_ov000_020e8b08 *data_ov000_020e8b08;
