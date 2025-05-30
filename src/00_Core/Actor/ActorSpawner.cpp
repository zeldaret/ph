#include "Actor/ActorSpawner.hpp"
#include "Actor/ActorManager.hpp"
#include "Map/MapManager.hpp"

extern u32 *data_027e0ce0[];
ARM ActorSpawner *ActorSpawner::Create() {
    gActorSpawner = new(data_027e0ce0[1], 4) ActorSpawner();
}

ARM void ActorSpawner::Destroy() {
    delete gActorSpawner;
    gActorSpawner = NULL;
}

ARM ActorSpawner::ActorSpawner() {}

ARM ActorSpawner::~ActorSpawner() {}

ARM void ActorSpawner::func_ov000_020c4014() {}

ARM void ActorSpawner::func_ov000_020c4018() {}

ARM Actor *ActorSpawner::CreateActor(ActorTypeId typeId) {
    Actor *actor    = NULL;
    ActorType *type = ActorType::Find(typeId);
    if (type != NULL) {
        actor = type->create();
    }
    return actor;
}

extern "C" unk32 GetCardinal(s16 angle);
ARM s32 ActorSpawner::Spawn(ActorTypeId type, Vec3p *pos, ActorSpawnOptions *options, ActorRef *ref) {
    ActorManager *actorManager = gActorManager;
    u16 maxActors              = actorManager->mMaxActors;
    s32 id                     = -1;
    s32 index;
    Actor **actorSlot = actorManager->mActorTable;
    for (index = 0; index < maxActors; index++, actorSlot++) {
        if (*actorSlot != NULL) {
            continue;
        }

        Actor *actor = this->CreateActor(type);
        *actorSlot   = actor;
        if (actor == NULL) {
            if (ref != NULL) {
                ref->Reset();
            }
            return -1;
        }
        actor->mType             = type;
        (*actorSlot)->mRef.id    = actorManager->mNextActorId;
        (*actorSlot)->mRef.index = index;
        (*actorSlot)->mUnk_014   = *pos;
        (*actorSlot)->mUnk_020   = options->mUnk_00;
        (*actorSlot)->mAngle     = options->mAngle;
        (*actorSlot)->mUnk_012   = options->mAngle;
        (*actorSlot)->mUnk_074   = GetCardinal(options->mAngle);
        if (options->mUnk_18 >= 0xffff) {
            (*actorSlot)->mUnk_03c = -1;
        } else {
            (*actorSlot)->mUnk_03c = options->mUnk_18;
        }
        (*actorSlot)->mUnk_034 = options->mUnk_1c;
        (*actorSlot)->mUnk_140 = options->mUnk_24;
        (*actorSlot)->mUnk_144 = options->mUnk_28;
        Actor *actor2          = *actorSlot;
        actor2->mPos           = *pos;
        actor2->mPrevPos       = *pos;
        (*actorSlot)->mUnk_010 = gMapManager->GetCourseData_Unk_1c();
        (*actorSlot)->mUnk_011 = gMapManager->GetCourseData_Unk_1d();
        u16 nextIndex          = index + 1;
        if (actorManager->mMaxActorIndex < nextIndex) {
            actorManager->mMaxActorIndex = nextIndex;
        }
        actorManager->mCacheEmptyActorIndex = index;

        id = actorManager->mNextActorId;
        if (ref != NULL) {
            *ref = ActorRef(id, index);
        }
        actorManager->mNextActorId += 1;
        actorManager->mNumActors += 1;
        if (!(*actorSlot)->Init()) {
            (*actorSlot)->mAlive = false;
            if (ref != NULL) {
                ref->Reset();
            }
            return -1;
        }
        break;
    }
    if ((id == -1) && (ref != NULL)) {
        ref->Reset();
    }
    return id;
}
