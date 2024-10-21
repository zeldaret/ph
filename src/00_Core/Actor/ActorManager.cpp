#include "Actor/ActorManager.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"

char *gShipParts[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

extern "C" Cylinder *func_ov000_020c3ef0(void *, u32 index);
extern "C" bool func_ov000_020c3f08(void *, u32 index);
extern "C" void func_ov000_020c3f3c(void *, u32 index, Cylinder *cylinder);
extern "C" void func_ov000_020c3f54(void *, u32 param2);
extern s32 data_027e077c;
extern u8 data_02056be4[];

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
    if (data_027e103c->mUnk_24 == 0) return;

    Actor **actorIter     = actorMgr->mActorTable;
    q20 minDistance       = 0x7fffffff;
    u8 unkByte            = data_02056be4[data_027e077c];
    bool unk1             = (unkByte & 1) != 0;
    Actor **actorTableEnd = actorIter + actorMgr->mMaxActorIndex;

    for (; actorIter < actorTableEnd; actorIter++) {
        Actor *actor = *actorIter;
        if (actor != NULL && actor->mAlive) {
            if (actor->func_ov00_020c27a8(param3)) {
                if (actor->mUnk_0a4.mUnk_00 || unk1) {
                    if (actor->IsHitboxTouched(false)) {
                        q20 distance = actor->DistanceToLink();
                        if (distance < minDistance) {
                            *ref        = actor->mRef;
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
    if (mType != actor->mType) return false;
    if (mUnk_08 != -1 && mUnk_08 != actor->mUnk_034) return false;
    if (mExcludeRefs != NULL) {
        for (s32 i = 0; mExcludeRefs[i].id != -1; ++i) {
            if (mExcludeRefs[i].id == actor->mRef.id) return false;
        }
    }
    if (mExcludeNotInAABB) {
        Vec3p pos;
        pos.x       = actor->mPos.x;
        pos.y       = actor->mPos.y;
        pos.z       = actor->mPos.z;
        bool result = !mAABB.ContainsInXZ(&pos);
        if (result) return false;
    }
    if (mExcludeNotInSphere) {
        Vec3p pos;
        pos.x       = actor->mPos.x;
        pos.y       = actor->mPos.y;
        pos.z       = actor->mPos.z;
        bool result = !mSphere.ContainsInXZ(&pos);
        if (result) return false;
    }
    return true;
}

ARM s32 ActorManager::FilterActors(FilterActorBase *filter, ActorList *filteredActors) {
    s32 numApplied = 0;
    if (filteredActors != NULL) filteredActors->length = 0;

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

ARM Actor *ActorManager::func_ov00_020c39ac(u32 index, ActorTypeId *actorTypes, bool param3) {
    if (actorTypes == NULL && param3) return NULL;

    Actor *actor  = mActorTable[index];
    Actor *result = NULL;
    if (actor != NULL && actor->mAlive) {
        if (actorTypes != NULL || mMaxActorIndex > 0) {
            for (s16 i = 0; i < mMaxActorIndex; ++i) {
                if (i != index) {
                    Actor *otherActor = mActorTable[i];
                    if (otherActor != NULL && func_ov000_020c3f08(mUnk_14, i)) {
                        if ((actorTypes == NULL && !param3) ||
                            (this->ActorTypeIsOneOf(mActorTable[i]->mType, actorTypes) != param3))
                        {
                            Cylinder oldHitbox = otherActor->mHitbox;
                            // q20 x              = otherActor->mHitbox.pos.x;
                            // q20 y              = otherActor->mHitbox.pos.y;
                            // q20 z              = otherActor->mHitbox.pos.z;
                            // q20 size           = otherActor->mHitbox.size;
                            Cylinder *newHitbox = func_ov000_020c3ef0(mUnk_14, i);

                            otherActor->mHitbox = *newHitbox;
                            if (otherActor->CollidesWith(actor)) result = otherActor;
                            otherActor->mHitbox = oldHitbox;
                            // otherActor->mHitbox.pos.x = x;
                            // otherActor->mHitbox.pos.y = y;
                            // otherActor->mHitbox.pos.z = z;
                            // otherActor->mHitbox.size = size;

                            if (result != NULL) return result;
                        }
                    }
                }
            }
        }
    }

    return result;
}

ARM s32 ActorManager::func_ov00_020c3b2c(s32 *param1) {}
ARM s32 ActorManager::func_ov00_020c3bb0(unk32 param1, s32 *param2) {}
ARM void ActorManager::func_ov00_020c3ce8(unk32 param1, unk32 param2) {}

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

ARM bool ActorManager::ActorTypeIsOneOf(ActorTypeId type, ActorTypeId *types) {
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
