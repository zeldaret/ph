#include "Actor/ActorManager.hpp"
#include "DTCM/UnkStruct_027e077c.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Map/MapManager.hpp"

static char *sShipTypes[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

extern "C" Cylinder *func_ov000_020c3ef0(void *, u32 index);
extern "C" bool func_ov000_020c3f08(void *, u32 index);
extern "C" void func_ov000_020c3f3c(void *, u32 index, Cylinder *cylinder);
extern "C" void func_ov000_020c3f54(void *, u32 param2);

ARM void ActorManager::DeleteActor(u32 index, bool param2) {
    if (!param2) {
        func_ov000_020c3f54(this->mUnk_14, index & 0xffff);
        this->mActorTable[index]->StopLinkFollow();
    }

    if (this->mActorTable[index] != NULL) {
        delete this->mActorTable[index];
    }

    this->mActorTable[index] = NULL;

    if (param2) {
        return;
    }

    this->mNumActors--;

    if (index + 1 != this->mMaxActorIndex) {
        return;
    }

    int i = index - 1;

    while (i >= 0) {
        if (this->mActorTable[i] != NULL) {
            break;
        }
        i--;
    }

    this->mMaxActorIndex = i + 1 & 0xffff;
    return;
}

ARM void ActorManager::func_ov00_020c3484(ActorRef *ref, ActorManager *actorMgr, unk32 param3) {
    ref->Reset();
    if (data_027e103c->mUnk_24 == 0) {
        return;
    }

    q20 minDistance       = 0x7fffffff;
    Actor **actorIter     = actorMgr->mActorTable;
    u8 unkByte            = data_02056be4[data_027e077c.GetUnk0()];
    bool unk1             = (unkByte & 1) != 0;
    Actor **actorTableEnd = actorIter + actorMgr->mMaxActorIndex;

    for (; actorIter < actorTableEnd; actorIter++) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive) {
            if (actor->func_ov00_020c27a8(param3)) {
                if ((*actorIter)->mUnk_0a4.mUnk_00 || unk1) {
                    if ((*actorIter)->IsHitboxTouched(false)) {
                        q20 distance = (*actorIter)->DistanceToLink();
                        if (distance < minDistance) {
                            *ref        = (*actorIter)->mRef;
                            minDistance = distance;
                        }
                    }
                }
            }
        }
    }
}

ARM void ActorManager::Actor_vfunc_10(u32 param1) {
    Actor *actor;
    int i;

    u32 uVar1            = param1;
    Actor **currentActor = this->mActorTable;

    for (i = 0; i < this->mMaxActorIndex; ++i) {
        actor = *currentActor;
        if (actor != NULL) {
            uVar1 = actor->mAlive;
            if (uVar1 != 0) {
                actor->vfunc_10(param1);
            }
        }
        currentActor += 1;
    }
    return;
}

ARM Actor *ActorManager::FindActorById(s32 id) {
    u32 actorId;
    s32 cacheIndex;
    Actor *actor;
    Actor **pActor;
    Actor **lastActor;

    actor = NULL;
    if (id >= 0) {
        cacheIndex = this->mCacheEmptyActorIndex;
        if ((cacheIndex >= 0) && (cacheIndex < this->mMaxActorIndex)) {
            pActor = this->mActorTable;
            if (pActor[cacheIndex] != NULL) {
                if ((Actor **) (u32) pActor[cacheIndex]->mAlive != NULL && id == pActor[cacheIndex]->mRef.id) {
                    actor = pActor[cacheIndex];
                    goto ret;
                }
            }
        }
        pActor    = this->mActorTable;
        actorId   = this->mMaxActorIndex;
        lastActor = pActor + actorId;

        for (; pActor < lastActor; pActor = pActor + 1) {
            if (*pActor != NULL) {
                actorId = (u32) (*pActor)->mAlive;
                if (actorId != 0 && id == (*pActor)->mRef.id) {
                    actor = *pActor;
                    break;
                }
            }
        }
    }

ret:
    return actor;
}

ARM Actor *ActorManager::GetActor(ActorRef *ref) {
    Actor *pActor;
    u32 alive;

    alive = ref->index;

    if ((s32) alive < 0) {
        return NULL;
    }

    pActor = this->mActorTable[alive];
    if (pActor != NULL) {
        alive = pActor->mAlive;
        if (alive != 0 && ref->id == pActor->mRef.id) {
            return pActor;
        }
    }

    return NULL;
}

ARM bool FilterActor::Filter(Actor *actor) {
    if (mType != actor->mType) {
        return false;
    }
    if (mUnk_08 != -1 && mUnk_08 != actor->mUnk_034.id) {
        return false;
    }
    if (mExcludeRefs != NULL) {
        for (s32 i = 0; mExcludeRefs[i].id != -1; ++i) {
            ActorRef *ref          = &mExcludeRefs[i];
            volatile Actor *actor2 = actor;
            if (ref->id == actor2->mRef.id) {
                return false;
            }
        }
    }
    if (mExcludeNotInAABB) {
        Vec3p pos;
        pos.x       = actor->mPos.x;
        pos.y       = actor->mPos.y;
        pos.z       = actor->mPos.z;
        bool result = !mAABB.ContainsInXZ(&pos);
        if (result) {
            return false;
        }
    }
    if (mExcludeNotInSphere) {
        Vec3p pos;
        pos.x       = actor->mPos.x;
        pos.y       = actor->mPos.y;
        pos.z       = actor->mPos.z;
        bool result = !mSphere.ContainsInXZ(&pos);
        if (result) {
            return false;
        }
    }
    return true;
}

ARM s32 ActorManager::FilterActors(FilterActorBase *filter, ActorList *filteredActors) {
    s32 numApplied = 0;
    if (filteredActors != NULL) {
        filteredActors->length = 0;
    }

    Actor **actorIter     = mActorTable;
    Actor **actorTableEnd = actorIter + mMaxActorIndex;
    for (; actorIter < actorTableEnd; actorIter++) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive && filter->Filter(actor)) {
            if (filteredActors != NULL && filteredActors->length < filteredActors->capacity) {
                ActorRef *ref = &filteredActors->actors[filteredActors->length];

                *ref = (*actorIter)->mRef;
                filteredActors->length += 1;
            }
            numApplied += 1;
        }
    }

    return numApplied;
}

ARM void ActorManager::FindActorByType(ActorRef *ref, ActorManager *actorMgr, ActorTypeId type) {
    ref->Reset();

    Actor **actorIter     = actorMgr->mActorTable;
    Actor **actorTableEnd = actorIter + actorMgr->mMaxActorIndex;

    for (; actorIter < actorTableEnd; actorIter++) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive && type == actor->mType) {
            *ref = actor->mRef;
            return;
        }
    }
}

ARM void ActorManager::FindNearestActorOfType(ActorRef *ref, ActorManager *actorMgr, ActorTypeId type, Vec3p *pos) {
    ref->Reset();

    q20 minDistance = 0x7fffffff;

    Actor **actorIter     = actorMgr->mActorTable;
    Actor **actorTableEnd = actorIter + actorMgr->mMaxActorIndex;

    for (; actorIter < actorTableEnd; actorIter++) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive && type == actor->mType) {
            q20 distance = Vec3p_Distance(&actor->mPos, pos);
            if (distance < minDistance) {
                *ref        = (*actorIter)->mRef;
                minDistance = distance;
            }
        }
    }
}

ARM bool ActorManager::func_ov00_020c398c(u32 index) {
    return func_ov000_020c3f08(mUnk_14, index);
}

ARM void ActorManager::func_ov00_020c399c(u32 index, Cylinder *cylinder) {
    func_ov000_020c3f3c(mUnk_14, index, cylinder);
}

ARM Actor *ActorManager::func_ov00_020c39ac(s32 index, const ActorTypeId *actorTypes, bool param3) {
    if (actorTypes == NULL && param3) {
        return NULL;
    }

    Actor *actor  = mActorTable[index];
    Actor *result = NULL;
    if (actor != NULL && actor->mAlive) {
        u16 i;
        bool unk1 = actorTypes == NULL && !param3 ? true : false;
        for (u16 i = 0; i < mMaxActorIndex; ++i) {
            if (i != index) {
                Actor *otherActor = mActorTable[i];
                if (mActorTable[i] != NULL && func_ov000_020c3f08(mUnk_14, i)) {
                    if (unk1 || (param3 != this->ActorTypeIsOneOf(mActorTable[i]->mType, actorTypes))) {
                        Cylinder oldHitbox  = mActorTable[i]->mHitbox;
                        Cylinder *newHitbox = func_ov000_020c3ef0(mUnk_14, i);

                        Actor *otherActor2         = mActorTable[i];
                        otherActor2->mHitbox.pos.x = newHitbox->pos.x;
                        otherActor2->mHitbox.pos.y = newHitbox->pos.y;
                        otherActor2->mHitbox.pos.z = newHitbox->pos.z;
                        otherActor2->mHitbox.size  = newHitbox->size;
                        if (mActorTable[i]->CollidesWith(actor)) {
                            result = mActorTable[i];
                        }

                        Actor *otherActor3         = mActorTable[i];
                        otherActor3->mHitbox.pos.x = oldHitbox.pos.x;
                        otherActor3->mHitbox.pos.y = oldHitbox.pos.y;
                        otherActor3->mHitbox.pos.z = oldHitbox.pos.z;
                        otherActor3->mHitbox.size  = oldHitbox.size;

                        if (result != NULL) {
                            break;
                        }
                    }
                }
            }
        }
    }

    return result;
}

ARM s32 ActorManager::func_ov00_020c3b2c(s32 *param1) {
    if (param1 != NULL) {
        *param1 = 0;
    }

    s32 i;
    s32 numAlive = 0;

    Actor **actorIter = mActorTable;

    for (i = 0; i < mMaxActorIndex; ++i, ++actorIter) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive && actor->mUnk_128) {
            if (param1 != NULL && actor->mUnk_120 > 0) {
                *param1 += 1;
            }
            numAlive += 1;
        }
    }

    return numAlive;
}

ARM s32 ActorManager::func_ov00_020c3bb0(unk32 param1, s32 *param2) {
    if (param2 != NULL) {
        *param2 = 0;
    }

    AABB boxes[8];
    s32 numBoxes = gMapManager->GetTriggerBoundingBoxes(param1, boxes, ARRAY_LEN_U(boxes));
    if (numBoxes <= 0) {
        return 0;
    }

    s32 i;
    s32 numInBox = 0;
    bool isInBox;

    Actor **actorIter = mActorTable;
    for (i = 0; i < mMaxActorIndex; ++i, ++actorIter) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive && actor->mUnk_128) {
            isInBox = false;
            for (s32 j = 0; j < numBoxes; ++j) {
                Actor *actor2 = *actorIter;
                Vec3p pos;
                pos.x = actor2->mPos.x;
                pos.y = actor2->mPos.y;
                pos.z = actor2->mPos.z;
                if (boxes[j].ContainsInXZ(&pos)) {
                    isInBox = true;
                    break;
                }
            }
            if (isInBox) {
                if (param2 != NULL && (*actorIter)->mUnk_120 > 0) {
                    *param2 += 1;
                }
                numInBox += 1;
            }
        }
    }

    return numInBox;
}

ARM void ActorManager::func_ov00_020c3ce8(unk32 param1, bool param2) {
    AABB boxes[8];
    s32 numBoxes = gMapManager->GetTriggerBoundingBoxes(param1, boxes, ARRAY_LEN_U(boxes));
    if (numBoxes <= 0) {
        return;
    }

    s32 i;
    Actor **actorIter = mActorTable;
    for (i = 0; i < mMaxActorIndex; ++i, ++actorIter) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive && actor->mUnk_128) {
            for (s32 j = 0; j < numBoxes; ++j) {
                Actor *actor2 = *actorIter;
                Vec3p pos;
                pos.x = actor2->mPos.x;
                pos.y = actor2->mPos.y;
                pos.z = actor2->mPos.z;
                if (boxes[j].Contains(&pos)) {
                    (*actorIter)->SetUnk_129(param2);
                }
            }
        }
    }
}

ARM void ActorManager::Actor_vfunc_28() {
    int i;
    Actor **pActor;

    pActor = this->mActorTable;

    for (i = 0; i < this->mMaxActors; i++) {
        if (*pActor != NULL) {
            (*pActor)->vfunc_28();
        }
        pActor = pActor + 1;
    }
}

ARM bool ActorManager::ActorTypeIsOneOf(ActorTypeId type, const ActorTypeId *types) {
    int i;
    bool found = false;

    for (i = 0; *types != ActorTypeId_Null; i++) {
        if (type == *types) {
            found = true;
            break;
        }
        types += 1;
    }

    return found;
}
