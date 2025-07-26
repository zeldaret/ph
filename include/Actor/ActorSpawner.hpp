#pragma once

#include <nds/math.h>

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorRef.hpp"
#include "Actor/ActorType.hpp"
#include "System/SysNew.hpp"

struct ActorSpawnOptions {
    /* 00 */ Actor_UnkStruct_020 mUnk_00;
    /* 14 */ s16 mAngle;
    /* 16 */ unk8 mUnk_16[0x2];
    /* 18 */ unk32 mUnk_18;
    /* 1c */ ActorRef mUnk_1c;
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2c */

    void func_ov000_020c3348();
    inline ActorSpawnOptions() :
        mUnk_1c(-1, -1) {
        func_ov000_020c3348();
    }
};

class ActorSpawner : public SysObject {
public:
    /* 0 (empty) */

    static ActorSpawner *Create();
    static void Destroy();
    ActorSpawner();
    ~ActorSpawner();
    void func_ov000_020c4014();
    void func_ov000_020c4018();
    Actor *CreateActor(ActorTypeId typeId);
    s32 Spawn(ActorTypeId type, Vec3p *pos, ActorSpawnOptions *param3, ActorRef *ref);
};

extern ActorSpawner *gActorSpawner;
