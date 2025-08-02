#include "Actor/Dungeon/ActorActionObject.hpp"
#include "Map/MapManager.hpp"
#include "Player/LinkStateBase.hpp"
#include "Player/PlayerLinkBase.hpp"
#include "Save/AdventureFlags.hpp"

#pragma section sbss begin
ActorType ActorActionObject::gType = ActorType(ActorTypeId_ActionObject, (ActorCreateFunc) ActorActionObject::Create, NULL);
#pragma section sbss end

extern u32 **data_027e0fe0[];
ARM ActorActionObject *ActorActionObject::Create() {
    return new(*data_027e0fe0[0], 4) ActorActionObject();
}

ARM ActorActionObject::ActorActionObject() {}

ARM ActorActionObject::~ActorActionObject() {}

// non-matching
ARM bool ActorActionObject::Init() {
    mGravity      = 0;
    mHitbox.pos   = gVec3p_ZERO;
    mHitbox.size  = -1;
    mUnk_08c.pos  = mHitbox.pos;
    mUnk_08c.size = mHitbox.size;
    mUnk_0a4.mUnk_04.MakeEmpty();
    mVisible = false;
    mUnk_130 = 0;
    return true;
}

ARM void ActorActionObject::vfunc_14(u32 param1) {
    if (!this->func_ov00_020c313c(param1)) {
        return;
    }

    u32 flag = mUnk_020.mUnk_00[2];
    bool bVar3;
    switch (mUnk_020.mUnk_00[0]) {
        case 0:
            bVar3 = true;
            break;
        case 1:
            if (gPlayerLink->mGrabActor.id != -1 && gPlayerLink->GetStateId() == LinkStateId_Move) {
                bVar3 = true;
            } else {
                bVar3 = false;
            }
            break;
        case 2:
            if (gPlayerLink->mGrabActor.id == -1 && gPlayerLink->GetStateId() == LinkStateId_Move) {
                bVar3 = true;
            } else {
                bVar3 = false;
            }
            break;
        default:
            bVar3 = false;
            break;
    }

    if (!bVar3) {
        return;
    }
    if (!gMapManager->func_ov00_020836dc((u32) mUnk_020.mUnk_00[1], 0)) {
        return;
    }
    if (mUnk_020.mUnk_0a[0] != 0 && !this->func_ov00_020c1bfc(0)) {
        return;
    }
    if (flag != 0 && !gAdventureFlags->Get(flag)) {
        return;
    }

    PlayerLinkBase *link = gPlayerLink;
    if (link != NULL && link->vfunc_18(7)) {
        if (mUnk_020.mUnk_00[3] == 1) {
            link->func_ov000_020bcf50(&mPos, 0x800);
        }
        this->func_ov00_020c1c20(1, 1);
        this->Kill();
    }
}

ARM void ActorActionObject::vfunc_18(u32 param1) {
    this->func_ov00_020c313c(param1);
}
