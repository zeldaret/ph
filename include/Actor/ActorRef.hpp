#pragma once

#include "global.h"
#include "types.h"

struct ActorRef {
    /* 0 */ s32 id;
    /* 4 */ s32 index;
    /* 8 */

    inline ActorRef() {
        Reset();
    }
    inline ActorRef(s32 id, s32 index) :
        id(id),
        index(index) {}

    inline void Reset() {
        id    = -1;
        index = -1;
    }
};
