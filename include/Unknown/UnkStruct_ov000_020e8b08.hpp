#pragma once

#include "Actor/ActorRef.hpp"
#include "global.h"
#include "types.h"

struct UnkStruct_ov000_020e8b08 {
    /* 00 */ PAD(0x00, 0x20);
    /* 20 */ ActorRef mUnk_20[1]; // more than 1, unclear how many
    /* 28 */ PAD(0x28, 0x55);
    /* 55 */ u8 mUnk_55;
    /* 56 */
};

extern UnkStruct_ov000_020e8b08 *data_ov000_020e8b08;
