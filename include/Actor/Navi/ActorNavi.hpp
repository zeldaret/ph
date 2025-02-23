#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorNaviBase.hpp"
#include "Render/ModelRender.hpp"

class ActorNavi : public ActorNaviBase {
public:
    /* 000 (base) */
    /* 294 */ ModelRender mUnk_294;
    /* 2f0 */ void *mUnk_2f0;
    /* 2f4 */ unk8 mUnk_2f4[0x40];
    /* 334 */ unk32 mUnk_334;
    /* 338 */ unk32 mUnk_338;
    /* 33c */ unk32 mUnk_33c;
    /* 340 */ unk16 mUnk_340;
    /* 342 */ unk8 mUnk_342[0x2];
    /* 344 */ unk32 mUnk_344;
    /* 348 */ unk32 mUnk_348;
    /* 34c */ unk8 mUnk_34c[0x68];
    /* 3b4 */ unk32 mUnk_3b4;
    /* 3b8 */ unk32 mUnk_3b8;
    /* 3bc */ unk32 mUnk_3bc;
    /* 3c0 */ unk8 mUnk_3c0[0x8];
    /* 3c8 */
};
