#include "Actor/Navi/ActorNaviBase.hpp"
#include "Actor/ActorRef.hpp"

#include "Actor/ActorManager.hpp"
#include "Actor/FilterActorBase.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e0e58.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Game/Game.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Map/TilePos.hpp"
#include "Message/MessageManager.hpp"
#include "Physics/Cylinder.hpp"
#include "Player/LinkStateBase.hpp"
#include "Player/LinkStateInteract.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerBase.hpp"
#include "Player/PlayerLinkBase.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/Random.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_020e9370.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"
#include "Unknown/UnkStruct_ov000_020b1d70.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"
#include "Unknown/UnkStruct_ov000_020e2f04.hpp"
#include "Unknown/UnkStruct_ov000_020e678c.hpp"
#include "Unknown/UnkStruct_ov000_020e8b08.hpp"
#include "Unknown/UnkStruct_ov000_020e9c88.hpp"

#include <nds/gfx.h>

class NaviFilterActor : public FilterActorBase {
public:
    /* 00 (base) */
    /* 04 */ Actor *mActor;
    /* 08 */ q20 mDist;
    /* 0c */ Vec3p mPos;
    /* 18 */

    /* 0 */ virtual bool Filter(Actor *actor) override;
};

#pragma section sbss begin
ItemModel *data_ov000_020ee1f8;
#pragma section sbss end

UnkStruct_ov000_020e678c data_ov000_020e678c = {{"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"}, NULL, 0, 0};

// Indexed by FairyId; the extra entry is used for the Spirit of Courage
static const u16 data_ov000_020dc800[FairyId_COUNT + 1] = {GX_RGB(31, 31, 31), GX_RGB(31, 0, 3), GX_RGB(0, 17, 31),
                                                           GX_RGB(31, 31, 25)};
static const u16 data_ov000_020dc808[FairyId_COUNT + 1] = {GX_RGB(31, 31, 31), GX_RGB(31, 9, 10), GX_RGB(12, 25, 25),
                                                           GX_RGB(31, 31, 18)};
static const u16 data_ov000_020dc810[FairyId_COUNT]     = {GX_RGB(21, 19, 0), GX_RGB(24, 0, 18), GX_RGB(2, 0, 14)};
static const u16 data_ov000_020dc816[FairyId_COUNT]     = {GX_RGB(20, 18, 0), GX_RGB(24, 0, 17), GX_RGB(2, 2, 13)};
static const u32 sFairyModelIds[FairyId_COUNT]          = {0x24f, 0x251, 0x250};

struct ActorNaviBase_NameEntry {
    char name[16];
    u32 id;
};
static const ActorNaviBase_NameEntry sNaviNames[1] = {{"navi", 0}};

static const Vec3p data_ov000_020dc83c = {-0x800, 0xccd, 0x800};
static const Vec3p data_ov000_020dc848 = {0x800, 0x1000, -0x333};

ARM u16 func_ov000_020b8790(FairyId fairy) {
    if (fairy == FairyId_Courage && gItemManager->HasItem(ItemFlag_SpiritOfCourage)) {
        fairy = FairyId_COUNT;
    }
    return data_ov000_020dc800[fairy];
}

ARM u16 func_ov000_020b87cc(FairyId fairy) {
    if (fairy == FairyId_Courage && gItemManager->HasItem(ItemFlag_SpiritOfCourage)) {
        fairy = FairyId_COUNT;
    }
    return data_ov000_020dc808[fairy];
}

ARM u16 func_ov000_020b8808(FairyId fairy) {
    return data_ov000_020dc810[fairy];
}

ARM u16 func_ov000_020b881c(FairyId fairy) {
    return data_ov000_020dc816[fairy];
}

ARM void func_ov000_020b8830(ItemModel *model, u32 color1, u32 color2) {
    model->func_020193f0(0, color1);
    model->func_020193f0(1, color2);
}

ARM u16 ActorNaviBase::vfunc_c4() {
    if (mUnk_28d != 0) {
        return 0x6318;
    }
    return func_ov000_020b8790(GetFairyId());
}

ARM u16 ActorNaviBase::vfunc_c8() {
    if (mUnk_28d != 0) {
        return 0x739c;
    }
    return func_ov000_020b87cc(GetFairyId());
}

ARM unk32 ActorNaviBase::vfunc_30() {
    return 1;
}

ARM s32 ActorNaviBase::vfunc_b8() {
    return -1;
}

ARM void ActorNaviBase::GetOffsetPos(Vec3p *pos) {
    *pos = mOffsetPos;
}

ARM unk32 ActorNaviBase::vfunc_38() {
    if (func_ov000_02087e8c()) {
        return 0x22;
    }
    return 0x20;
}

ARM void ActorNaviBase::vfunc_e4() {
    this->vfunc_e0();
}

ARM void ActorNaviBase::vfunc_84() {
    this->SetActive(5);
}

ARM void ActorNaviBase::func_ov000_020bad18() {
    mUnk_164 = 0;
    if (mUnk_130 == 7) {
        this->SetActive(5);
    }
}

ARM void ActorNaviBase::vfunc_80() {
    this->func_ov000_020ba4e4();
    this->SetActive(8);
}

ARM void ActorNaviBase::vfunc_d0() {
    Vec3p linkPos;
    GetLinkPos(&linkPos);
    switch (mUnk_130) {
        case 1:
            mOffsetPos = linkPos;
            mOffsetPos.y += 0x199a;
            break;
        case 6:
            mOffsetPos = linkPos;
            mOffsetPos.y += 0x800;
            break;
    }
}

ARM void ActorNaviBase::vfunc_d8() {}
ARM void ActorNaviBase::vfunc_ec() {}

ARM bool ActorNaviBase::vfunc_cc(unk32 *param1) {
    if (param1 != NULL) {
        *param1 = 0;
    }
    if (mUnk_290 != 0) {
        return true;
    }
    if (gGame.mModeId == GameModeId_Battle && func_ov000_02079e3c()) {
        return true;
    }
    if (gPlayer->mHealth <= 0) {
        return true;
    }
    switch (data_027e0f64->mUnk_4->mUnk_15c) {
        case 10:
        case 0x44:
        case 0x45:
        case 0x4b:
        case 0x4c:
            return true;
    }
    if (!gAdventureFlags->func_ov00_02097738() && !gAdventureFlags->func_ov00_02097750()) {
        if (mUnk_11c) {
            return false;
        }
        s32 hammer = LinkStateBase::GetLinkItemState()->IsHammerEquipped();
        if (hammer != -1 || (hammer == -1 && gItemManager->GetEquippedFairy() != GetFairyId())) {
            if (param1 != NULL) {
                *param1 = 6;
            }
            return true;
        }
    } else {
        if (data_ov000_020e8b08 != NULL) {
            UnkStruct_ov000_020e8b08 *const ptr = data_ov000_020e8b08;
            if (ptr->Contains(&mRef) || mUnk_28e != 0) {
                return false;
            }
            for (s32 i = 0; i < FairyId_COUNT; i++) {
                if (i != GetFairyId() && ptr->Contains(&gItemManager->GetFairy(i)->mRef)) {
                    if (param1 != NULL) {
                        *param1 = 6;
                    }
                    return true;
                }
            }
        }
        if (gItemManager->GetEquippedFairy() == GetFairyId()) {
            if (GetFairyId() == FairyId_Courage) {
                return false;
            }
            if (gItemManager->GetFairy(FairyId_Courage)->mUnk_28e != 0) {
                if (param1 != NULL) {
                    *param1 = 6;
                }
                return true;
            }
            return false;
        }
        if (param1 != NULL) {
            *param1 = 6;
        }
        return true;
    }
    return false;
}
ARM void ActorNaviBase::func_ov000_020b8c50(unk32 param1) {
    Vec3p tmp = mPos;
    func_0202b2e8(&tmp, &mOffsetPos, param1);
    Vec3p_Sub(&tmp, &mPos, &mVel);
}

ARM void ActorNaviBase::func_ov000_020b8c98(unk32 param1, unk32 param2, unk32 param3) {
    mVel.x    = 0;
    mVel.y    = 0;
    mVel.z    = 0;
    Vec3p tmp = mPos;
    Lerp(&tmp.x, mOffsetPos.x, param1, param2, param3);
    Lerp(&tmp.y, mOffsetPos.y, 0x400, 0, 0x7FFFFFFF);
    Lerp(&tmp.z, mOffsetPos.z, param1, param2, param3);
    Vec3p_Sub(&tmp, &mPos, &mVel);
}

ARM void ActorNaviBase::vfunc_d4() {
    Vec3p delta;
    switch (mUnk_130) {
        case 1:
        case 2: {
            s32 factor = 0x19a;
            s32 sway   = 0x31;
            s32 speed  = 0x11f;
            if (mUnk_130 == 2) {
                factor = 0x23d;
                sway   = 0x6a;
                speed  = 0x333;
            }
            Vec3p_Sub(&mOffsetPos, &mPos, &delta);
            delta.x = MUL_Q20(delta.x, factor);
            delta.y = MUL_Q20(delta.y, factor);
            delta.z = MUL_Q20(delta.z, factor);
            func_0202b4e4(&mVel, &delta, speed, 0, 0x7fffffff);
            s16 velAngle = FX_Atan2Idx(mVel.x, mVel.z);
            if (sway <= 0) {
                sway = 0;
            } else {
                sway = gRandom.Next(sway);
            }
            if ((s16) ((s16) FX_Atan2Idx(delta.x, delta.z) - velAngle) > 0) {
                s16 angle = velAngle + 0x1555;
                s32 dx    = MUL_Q20(SIN((u16) angle), sway);
                s32 dz    = MUL_Q20(COS((u16) angle), sway);
                mVel.x += dx;
                mVel.z += dz;
            } else {
                s16 angle = velAngle - 0x1555;
                s32 dx    = MUL_Q20(SIN((u16) angle), sway);
                s32 dz    = MUL_Q20(COS((u16) angle), sway);
                mVel.x += dx;
                mVel.z += dz;
            }
            if (Vec3p_Length(&mVel) <= 0x4cd) {
                return;
            }
            func_0202d95c(&mVel, 0x4cd);
            return;
        }
        case 4:
            func_ov000_020b8c50(0x3000);
            return;
        case 8: {
            s32 y = mPos.y;
            switch (mUnk_28a) {
                case 1: {
                    u16 angle = mActiveFrames * 0x1555;
                    s32 dy    = mOffsetPos.y + MUL_Q20(SIN(angle), 0x266) - mPos.y;
                    mVel.x    = 0;
                    mVel.y    = dy;
                    mVel.z    = 0;
                    break;
                }
                case 2: {
                    Lerp(&y, mOffsetPos.y - 0x4cd, 0x19a, 0, 0x7fffffff);
                    s32 dy = y - mPos.y;
                    mVel.x = 0;
                    mVel.y = dy;
                    mVel.z = 0;
                    break;
                }
                case 3: {
                    u16 angle = mActiveFrames * 0xaab;
                    s32 dy    = mOffsetPos.y + MUL_Q20(SIN(angle), 0x333) - mPos.y;
                    mVel.x    = 0;
                    mVel.y    = dy;
                    mVel.z    = 0;
                    break;
                }
                default:
                    func_ov000_020b8c98(0x400, 0x200, 0x1000);
                    break;
            }
            return;
        }
        case 5:
            func_ov000_020b8c50(0xcd);
            return;
        case 9:
            func_ov000_020b8c50(0x333);
            return;
        case 3:
        case 7:
            func_ov000_020b8c98(0x800, 0x200, 0x2000);
            return;
        case 6:
            func_ov000_020b8c98(0x400, 0x1000, 0x2000);
            return;
        default:
        case 0:
            mVel.x = 0;
            mVel.y = 0;
            mVel.z = 0;
            return;
    }
}
ARM void ActorNaviBase::SetActive(unk32 active) {
    if (mUnk_130 == 0 && active != 0) {
        mVisible = true;
        mUnk_290 = 0;
        u32 i;
        UnkStruct_027e0e58 *inst;
        ActorNaviBase_Unk1 *p;
        for (i = 0, p = mUnk_218; i < 2; i++, p++) {
            if (p->mUnk_0 == NULL) {
                inst = data_027e0e58;
                inst->func_ov000_0207c1f8(p, sFairyModelIds[GetFairyId()], &mPos, 2);
            }
        }
        TeleportAboveLink();
    }
    switch (active) {
        case 0: {
            mVisible = false;
            for (ActorNaviBase_Unk1 *p = mUnk_218; p != mUnk_218 + 2; p++) {
                p->func_ov000_020b7e6c();
            }
            break;
        }
        case 1: {
            mUnk_280        = -1;
            mUnk_284        = -1;
            TilePos tilePos = gMapManager->func_ov00_02083a1c(&mPos);
            mUnk_288        = tilePos.x;
            mUnk_289        = tilePos.y;
            break;
        }
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 9:
            break;
        case 8:
            mUnk_28a = 0;
            break;
    }
    mActiveFrames = 0;
    mUnk_130      = active;
}
ARM void ActorNaviBase::TeleportAboveLink() {
    Vec3p linkPos;
    GetLinkPos(&linkPos);
    linkPos.y += 0x800;
    mPos     = linkPos;
    mPrevPos = linkPos;
}

ARM void ActorNaviBase::vfunc_e0() {
    s32 newState;
    if (mUnk_130 != 0) {
        if (this->vfunc_cc(&newState) && newState != mUnk_130) {
            this->SetActive(newState);
            return;
        }
    }
    if (!gAdventureFlags->func_ov00_02097738() && !gAdventureFlags->func_ov00_02097750()) {
        mUnk_28e = 0;
    }
    if (gMessageManager.mUnk_20[1] == NULL) {
        mUnk_224.vfunc_10();
    }
    switch (mUnk_130) {
        case 0:
            if (this->vfunc_cc(NULL)) {
                return;
            }
            this->SetActive(1);
            return;
        case 1:
        case 2: {
            s32 midX, midY, midZ;
            midZ     = (mOffsetPos.z + mPos.z) / 2;
            midY     = (mOffsetPos.y + mPos.y) / 2;
            midX     = (mOffsetPos.x + mPos.x) / 2;
            s32 dist = 0x3000;
            if (gPlayerLink != NULL && gPlayerLink->GetCurrentCharacter() == 0) {
                if (mUnk_28f != 0) {
                    dist       = 0;
                    mOffsetPos = gPlayerPos;
                    mOffsetPos.y += 0x199a;
                } else {
                    NaviFilterActor filter;
                    filter.mActor = NULL;
                    filter.mDist  = 0x3000;
                    filter.mPos.x = midX;
                    filter.mPos.y = midY;
                    filter.mPos.z = midZ;
                    if (gActorManager->FilterActors(&filter, NULL) > 0) {
                        Cylinder cyl;
                        dist = filter.mDist;
                        filter.mActor->GetHitbox(&cyl);
                        mOffsetPos = cyl.pos;
                        mOffsetPos.y += filter.mActor->mYOffset + 0x666;
                    }
                    struct {
                        Vec3p pos;
                        s32 dist;
                    } mapArgs;
                    mapArgs.pos.x                       = midX;
                    mapArgs.pos.y                       = midY;
                    mapArgs.pos.z                       = midZ;
                    mapArgs.dist                        = dist;
                    UnkStruct_ov000_020853fc *mapResult = MapManager::func_ov00_020853fc(gMapManager, &mapArgs.pos, &dist);
                    if (mapResult != NULL && mapResult->mUnk_12 != 1) {
                        mOffsetPos                      = mapResult->mUnk_18;
                        UnkStruct_ov000_020e2f04 *shape = mapResult->vfunc_54();
                        s32 height;
                        if (shape == NULL) {
                            height = 0;
                        } else {
                            height = shape->GetHeight();
                        }
                        mOffsetPos.y += height;
                    }
                }
            }
            if (dist < 0x3000) {
                if (mUnk_130 == 1) {
                    this->SetActive(2);
                }
                return;
            }
            if (mUnk_130 == 2) {
                this->SetActive(1);
            }
            return;
        }
        case 8:
            if ((mUnk_224.mUnk_18 & ~0xffff) == 0x01000000 && gMessageManager.mUnk_04 == 0) {
                this->SetActive(1);
                mUnk_11c = 0;
            }
            return;
        case 4:
            if (XzDistanceTo(&mOffsetPos) <= 0x20) {
                this->SetActive(5);
            }
            return;
        case 5:
            if (gPlayerLink->func_ov000_020bcf2c()) {
                return;
            }
            if (mActiveFrames < 8) {
                return;
            }
            this->SetActive(1);
            return;
        case 6:
            if (XzDistanceToLink() <= 0x20) {
                this->SetActive(0);
            }
            return;
        case 3:
        case 7:
        case 9:
        default:
            return;
    }
}
ARM void ActorNaviBase::func_ov000_020b9770(s32 param1) {
    void *resource = func_0201e544(data_ov000_020e678c.mFile, sNaviNames[param1].name);
    mUnk_1d0.func_ov000_020c0cc8(resource, 0, sNaviNames[param1].id);
    mUnk_168.vfunc_28();
    mUnk_168.vfunc_24(&mUnk_1d0);
}
ARM void ActorNaviBase::vfunc_e8() {
    switch (mUnk_130) {
        case 4:
        case 7:
            if (mUnk_130 == 7 && XzDistanceTo(&mOffsetPos) <= 0x20) {
                mUnk_1d0.mUnk_0c.mUnk_04 = 0x1800;
            } else {
                s32 factor = CoDivide64By32(XzDistanceToLink(), 0x4000);
                if (factor > 0x1000) {
                    factor = 0x1000;
                } else if (factor < 0) {
                    factor = 0;
                }
                mUnk_1d0.mUnk_0c.mUnk_04 = MUL_Q20(factor, 0x800) + 0x1000;
            }
            break;
        case 5:
            break;
        case 8:
            switch (mUnk_28a) {
                case 1:
                    mUnk_1d0.mUnk_0c.mUnk_04 = 0x2000;
                    break;
                case 3: {
                    u16 angle                = mActiveFrames * 0xaab;
                    mUnk_1d0.mUnk_0c.mUnk_04 = 0x1800 - MUL_Q20(SIN(angle), 0x800);
                    break;
                }
                case 2:
                    if (mVel.y >= 0) {
                        mUnk_1d0.mUnk_0c.mUnk_04 = 0xb33;
                    } else {
                        mUnk_1d0.func_ov000_020c0e24(0);
                        mUnk_1d0.mUnk_0c.mUnk_04 = 0;
                    }
                    break;
                default:
                    mUnk_1d0.mUnk_0c.mUnk_04 = 0x1000;
                    break;
            }
            break;
        default:
            mUnk_1d0.mUnk_0c.mUnk_04 = 0x1000;
            break;
    }
    mUnk_1d0.func_ov000_020c0e04();
}

ARM void ActorNaviBase::vfunc_14(u32 param1) {
    if (!this->func_ov00_020c313c(param1)) {
        return;
    }
    if (mUnk_28d != 0) {
        for (ActorNaviBase_Unk1 *p = mUnk_218; p != mUnk_218 + 2; p++) {
            UnkStruct_ov000_020b7d74_00 *inst = p->mUnk_0;
            if (inst != NULL) {
                inst->mUnk_24_3 = 1;
            }
        }
        return;
    }
    mPrevPos = mPos;
    this->vfunc_ec();
    if (mVisible) {
        s32 speed;
        UnkStruct_ov000_020b7d74_00 *inst0;
        UnkStruct_ov000_020b7d74_00 *inst1;
        this->vfunc_d0();
        this->vfunc_d4();
        Vec3p_Add(&mPos, &mVel, &mPos);
        this->IncreaseActiveFrames();
        this->vfunc_e0();
        this->vfunc_d8();
        Vec3p pos     = mPos;
        Vec3p prevPos = mPrevPos;
        pos.y += 0x333;
        prevPos.y += 0x333;
        speed = Vec3p_Length(&mVel) - (s32) ((u32) (mUnk_220 * 0x3000) / 2) / 3;
        inst0 = mUnk_218[0].mUnk_0;
        if (inst0 != NULL) {
            inst0->mUnk_28.x = pos.x + (*inst0->mUnk_20)->mUnk_04.x;
            inst0->mUnk_28.y = pos.y + (*inst0->mUnk_20)->mUnk_04.y;
            inst0->mUnk_28.z = pos.z + (*inst0->mUnk_20)->mUnk_04.z;
        }
        inst0 = mUnk_218[0].mUnk_0;
        if (inst0 != NULL) {
            u32 forward      = speed >= 0;
            inst0->mUnk_24_1 = !forward;
        }
        if (speed >= 0x1800) {
            Vec3p_Lerp(&pos, &prevPos, 0x2000);
            inst1 = mUnk_218[1].mUnk_0;
            if (inst1 != NULL) {
                inst1->mUnk_28.x = pos.x + (*inst1->mUnk_20)->mUnk_04.x;
                inst1->mUnk_28.y = pos.y + (*inst1->mUnk_20)->mUnk_04.y;
                inst1->mUnk_28.z = pos.z + (*inst1->mUnk_20)->mUnk_04.z;
            }
            inst1 = mUnk_218[1].mUnk_0;
            if (inst1 != NULL) {
                inst1->mUnk_24_1 = 0;
            }
        } else {
            inst1 = mUnk_218[1].mUnk_0;
            if (inst1 != NULL) {
                inst1->mUnk_24_1 = 1;
            }
        }
        mUnk_220 = (mUnk_220 + 1) % 3;
    } else if (mUnk_130 == 0 && !this->vfunc_cc(NULL)) {
        this->SetActive(1);
    }
    bool visible = mVisible;
    for (ActorNaviBase_Unk1 *p = mUnk_218; p != mUnk_218 + 2; p++) {
        UnkStruct_ov000_020b7d74_00 *inst = p->mUnk_0;
        if (inst != NULL) {
            inst->mUnk_24_3 = !visible;
        }
    }
    if (!mVisible) {
        return;
    }
    this->vfunc_e8();
}

ARM void ActorNaviBase::vfunc_18(u32 param1) {
    if (!this->func_ov00_020c313c(param1)) {
        return;
    }
    if (mUnk_28d != 0) {
        for (ActorNaviBase_Unk1 *p = mUnk_218; p != mUnk_218 + 2; p++) {
            UnkStruct_ov000_020b7d74_00 *inst = p->mUnk_0;
            if (inst != NULL) {
                inst->mUnk_24_3 = 1;
            }
        }
        return;
    }
    if ((mUnk_224.mUnk_18 & ~0xffff) != 0x01000000) {
        mUnk_224.vfunc_10();
    }
    if (mVisible) {
        s32 newState;
        UnkStruct_ov000_020b7d74_00 *inst0;
        UnkStruct_ov000_020b7d74_00 *inst1;
        this->vfunc_d0();
        this->vfunc_d4();
        Vec3p_Add(&mPos, &mVel, &mPos);
        this->vfunc_d8();
        this->IncreaseActiveFrames();
        this->vfunc_e4();
        if (mUnk_130 != 0) {
            if (this->vfunc_cc(&newState) && newState != mUnk_130) {
                this->SetActive(newState);
            }
        }
        this->vfunc_e8();
        if (mUnk_220 == 0) {
            Vec3p pos = mPos;
            pos.y += 0x333;
            inst0 = mUnk_218[0].mUnk_0;
            if (inst0 != NULL) {
                inst0->mUnk_28.x = pos.x + (*inst0->mUnk_20)->mUnk_04.x;
                inst0->mUnk_28.y = pos.y + (*inst0->mUnk_20)->mUnk_04.y;
                inst0->mUnk_28.z = pos.z + (*inst0->mUnk_20)->mUnk_04.z;
            }
            inst0 = mUnk_218[0].mUnk_0;
            if (inst0 != NULL) {
                inst0->mUnk_24_1 = 0;
            }
        } else {
            inst0 = mUnk_218[0].mUnk_0;
            if (inst0 != NULL) {
                inst0->mUnk_24_1 = 1;
            }
        }
        inst1 = mUnk_218[1].mUnk_0;
        if (inst1 != NULL) {
            inst1->mUnk_24_1 = 1;
        }
    } else {
        this->vfunc_e4();
    }
    mUnk_220 = (mUnk_220 + 1) % 3;
    if (gPlayerLink->func_ov000_020bcefc() || !gActorManager->mUnk_18) {
        for (ActorNaviBase_Unk1 *p = mUnk_218; p != mUnk_218 + 2; p++) {
            UnkStruct_ov000_020b7d74_00 *inst = p->mUnk_0;
            if (inst != NULL) {
                inst->mUnk_24_3 = 1;
            }
        }
        return;
    }
    bool visible = mVisible;
    for (ActorNaviBase_Unk1 *p = mUnk_218; p != mUnk_218 + 2; p++) {
        UnkStruct_ov000_020b7d74_00 *inst = p->mUnk_0;
        if (inst != NULL) {
            inst->mUnk_24_3 = !visible;
        }
    }
}
ARM static void func_ov000_020b9fdc(void *navi) {
    ((ActorNaviBase *) navi)->func_ov000_020b9fe8();
}

ARM void ActorNaviBase::func_ov000_020b9fe8() {
    u16 color1 = this->vfunc_c4();
    u16 color2 = this->vfunc_c8();
    func_ov000_020b8830(data_ov000_020ee1f8, color1, color2);

    unk32 colorResult = data_ov000_020e9360.func_ov000_02079e68(2);
    data_ov000_020ee1f8->func_02019534(0, colorResult);

    Vec3p pos;
    Vec3p scale;
    pos.x = mPos.x;
    pos.y = mPos.y - mUnk_168.func_ov000_020b3ec4();
    pos.z = mPos.z;

    if (mUnk_164 == 0) {
        scale.x = 0xe66;
        scale.y = 0xe66;
        scale.z = 0xe66;
    } else {
        scale.x = 0x119a;
        scale.y = 0x119a;
        scale.z = 0x119a;
    }
    mUnk_168.SetTransform(&scale, &gDefaultMatrix, &pos);
}
ARM void ActorNaviBase::vfunc_20(bool param1) {
    u8 flag = param1 ? mUnk_0a4.mUnk_01 : mUnk_0a4.mUnk_00;
    if (flag == 0) {
        return;
    }
    if (gPlayerLink->func_ov000_020bcefc()) {
        return;
    }
    data_ov000_020e9c88.func_ov000_0207b89c(param1, &mPos, func_ov000_020b9fdc, this);
    data_ov000_020e9370.func_ov005_02102c2c(0, &mPos, 0x400, 0x400, 0, 0x10, 0, 0, 0);
}
ARM void ActorNaviBase::vfunc_10(u32 param1) {
    if (mUnk_130 == 0 && gItemManager->GetEquippedFairy() == GetFairyId()) {
        this->SetActive(1);
        return;
    }
    this->TeleportAboveLink();
    if (this->vfunc_cc(NULL)) {
        this->SetActive(0);
    }
}

unk32 ActorNaviBase::func_ov000_020ba204(Vec3p *param1, Vec3p *param2, s32 param3) {}
ARM unk32 func_ov000_020ba350(unk32 param1) {
    ((UnkStruct_ov000_020beba8 *) param1)->UnkStruct_ov000_020beba8::~UnkStruct_ov000_020beba8();
    return param1;
}
ARM bool ActorNaviBase::vfunc_c0(Vec3p *param1) {
    mOffsetPos = *param1;
    if (mUnk_130 != 4) {
        u32 oldState = mUnk_130;
        this->SetActive(4);
        return oldState != 5;
    }
    return false;
}
ARM unk32 ActorNaviBase::func_ov000_020ba3b4() {
    if (gItemManager->GetEquippedFairy() == GetFairyId()) {
        this->SetActive(1);
    } else {
        this->SetActive(6);
    }
    return 1;
}

ARM void ActorNaviBase::func_ov000_020ba414(Vec3p *param1) {
    Cylinder cyl;
    gPlayer->vfunc_10(&cyl);
    Vec3p_Add(param1, &cyl.pos, &mOffsetPos);
}

ARM bool ActorNaviBase::func_ov000_020ba458() {
    if (gItemManager->GetEquippedFairy() == GetFairyId() && !this->vfunc_cc(NULL) && mUnk_130 != 8 && mUnk_130 != 9) {
        this->SetActive(5);
        this->func_ov000_020ba53c();
        return true;
    }
    return false;
}

ARM void ActorNaviBase::func_ov000_020ba4e4() {
    Vec3p tmp = data_ov000_020dc83c;
    s16 angle = (s16) gPlayerAngle;
    if (angle < 0) {
        tmp.x = -tmp.x;
    }
    Vec3p_RotateY(angle, &tmp);
    func_ov000_020ba414(&tmp);
}

ARM void ActorNaviBase::func_ov000_020ba53c() {
    Vec3p tmp = data_ov000_020dc848;
    s16 angle = (s16) gPlayerAngle;
    if ((angle > 0 && angle < 0x4000) || angle < -0x4000) {
        tmp.x = -tmp.x;
    }
    Vec3p_RotateY(angle, &tmp);
    func_ov000_020ba414(&tmp);
}
ARM bool ActorNaviBase::vfunc_78(s32 param1) {
    switch (param1) {
        case 0:
            if (gItemManager->HasItem(ItemFlag_SpiritOfPower)) {
                mUnk_224.mUnk_28[0] = gItemManager->GetFairy(FairyId_Power)->mRef;
            }
            if (gItemManager->HasItem(ItemFlag_SpiritOfWisdom)) {
                mUnk_224.mUnk_28[1] = gItemManager->GetFairy(FairyId_Wisdom)->mRef;
            }
            mUnk_224.mUnk_28[2] = gItemManager->GetFairy(FairyId_Courage)->mRef;
            return true;
        case 1:
            if (gItemManager->HasItem(ItemFlag_SpiritOfPower)) {
                mUnk_224.mUnk_28[0] = gItemManager->GetFairy(FairyId_Power)->mRef;
            }
            return true;
        case 2:
            if (gItemManager->HasItem(ItemFlag_SpiritOfWisdom)) {
                mUnk_224.mUnk_28[1] = gItemManager->GetFairy(FairyId_Wisdom)->mRef;
            }
            return true;
        case 3:
            if (gItemManager->HasItem(ItemFlag_SpiritOfPower)) {
                mUnk_224.mUnk_28[0] = gItemManager->GetFairy(FairyId_Power)->mRef;
            }
            mUnk_224.mUnk_28[2] = gItemManager->GetFairy(FairyId_Courage)->mRef;
            return true;
        case 4:
            if (gItemManager->HasItem(ItemFlag_SpiritOfWisdom)) {
                mUnk_224.mUnk_28[1] = gItemManager->GetFairy(FairyId_Wisdom)->mRef;
            }
            mUnk_224.mUnk_28[2] = gItemManager->GetFairy(FairyId_Courage)->mRef;
            return true;
        case 5:
            if (gItemManager->HasItem(ItemFlag_SpiritOfPower)) {
                mUnk_224.mUnk_28[0] = gItemManager->GetFairy(FairyId_Power)->mRef;
            }
            if (gItemManager->HasItem(ItemFlag_SpiritOfWisdom)) {
                mUnk_224.mUnk_28[1] = gItemManager->GetFairy(FairyId_Wisdom)->mRef;
            }
            return true;
        default:
            return true;
    }
}
ARM bool ActorNaviBase::vfunc_bc(unk32 param1, unk8 param2, Vec3p *param3) {
    PlayerLinkBase *playerLink = gPlayerLink;
    if (playerLink == NULL || !playerLink->func_ov000_020bd318()) {
        return false;
    }
    playerLink->vfunc_7c(PlayerCharacter_Link, true);
    if (mUnk_130 == 8) {
        return false;
    }
    if (!gAdventureFlags->func_ov00_02097bbc() && !gMessageManager.func_020368f4(&mUnk_224)) {
        return false;
    }
    if (!gMessageManager.func_02036ce4(&mUnk_224, param1)) {
        return false;
    }
    s32 unk = this->vfunc_b8();
    if (unk > 0) {
        data_ov000_020eec9c.func_ov000_020d77e4(unk);
    }
    Vec3p target = gPlayerPos;
    target.y += 0xccd;
    if (param3 == NULL) {
        if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 0x31) {
            s32 rawAngle = data_027e0f64->mUnk_4->mUnk_226 + 0x2000;
            u16 angle    = (s16) rawAngle;
            target.x += MUL_Q20(SIN(angle), 0x1000);
            target.z += MUL_Q20(COS(angle), 0x1000);
            Vec3p pos;
            pos       = target;
            s32 mapY  = gMapManager->MapData_vfunc_68(&pos, 1);
            u32 below = target.y < mapY;
            if (below) {
                target.x -= MUL_Q20(SIN((u16) rawAngle), 0x2000);
            }
        } else {
            u16 angle = (s16) ((s16) mAngle + 0x2000);
            target.x += MUL_Q20(SIN(angle), 0x1000);
            target.z += MUL_Q20(COS(angle), 0x1000);
            Vec3p pos;
            pos       = target;
            s32 mapY  = gMapManager->MapData_vfunc_68(&pos, 1);
            u32 below = target.y < mapY;
            if (below) {
                target.x -= MUL_Q20(SIN((u16) ((s16) mAngle + 0x2000)), 0x2000);
            }
        }
        mOffsetPos = target;
    } else {
        mOffsetPos = target;
        func_0202b2f8(&mOffsetPos, param3, 0x1000);
    }
    mUnk_28c = 1;
    this->SetUnk_11c(true);
    UnkStruct_02037750::GetLinkStateInteract()->Grab(&mRef);
    mUnk_224.mUnk_54 = param2;
    this->SetActive(8);
    return true;
}
ARM void ActorNaviBase::vfunc_74(ActorRef *ref) {
    if (ref->id == mRef.id) {
        this->SetActive(8);
        return;
    }
    mUnk_28a = 0;
}
ARM void ActorNaviBase::func_ov000_020baca8(Vec3p *param1, unk32 param2) {
    if (mUnk_11c || mUnk_291 != 0) {
        return;
    }
    if (gPlayerLink->GetCurrentCharacter() != 0) {
        return;
    }
    mOffsetPos = *param1;
    mUnk_164   = param2;
    this->SetActive(7);
}
ARM bool ActorNaviBase::vfunc_90(unk32 param1, unk32 param2) {
    UnkStruct_ov000_020e8b08 *const ptr = data_ov000_020e8b08;
    if (ptr == NULL || !ptr->Contains(&mRef)) {
        mUnk_28e = 1;
    }
    UnkStruct_ov000_020b1d70 *path = func_ov000_020b1d70(param1, &mPos, NULL);
    if (mUnk_222 < 0 || mUnk_130 != 9) {
        if (param2 == 0) {
            mUnk_222 = 0;
        } else {
            mUnk_222 = path->mUnk_00->mUnk_01 - 1;
        }
        UnkStruct_ov000_020b1d70_04 *node = &path->mUnk_04[mUnk_222];
        mOffsetPos                        = node->mUnk_04;
        Vec3p pos;
        pos          = mOffsetPos;
        mOffsetPos.y = gMapManager->MapData_vfunc_68(&pos, 1) + 0x1000;
        this->SetActive(9);
    }
    if (IsXzDistWithin(&mOffsetPos, &mPos, 0x333)) {
        if (param2 != 0) {
            if (mUnk_222 == 0) {
                mUnk_222 = -1;
                return true;
            }
            mUnk_222--;
        } else {
            if (mUnk_222 == path->mUnk_00->mUnk_01 - 1) {
                mUnk_222 = -1;
                return true;
            }
            mUnk_222++;
        }
        UnkStruct_ov000_020b1d70_04 *node = &path->mUnk_04[mUnk_222];
        mOffsetPos                        = node->mUnk_04;
        Vec3p pos;
        pos          = mOffsetPos;
        mOffsetPos.y = gMapManager->MapData_vfunc_68(&pos, 1) + 0x1000;
    }
    return false;
}
ARM void ActorNaviBase::vfunc_94(unk32 param1, unk32 param2) {
    UnkStruct_ov000_020e8b08 *const ptr = data_ov000_020e8b08;
    if (ptr == NULL || !ptr->Contains(&mRef)) {
        mUnk_28e = 1;
    }
    UnkStruct_ov000_020b1d70 *path = func_ov000_020b1d70(param1, &mPos, NULL);
    if (param2 != 0) {
        UnkStruct_ov000_020b1d70_04 *node = path->mUnk_04;
        mOffsetPos                        = node->mUnk_04;
    } else {
        UnkStruct_ov000_020b1d70_04 *node = &path->mUnk_04[path->mUnk_00->mUnk_01 - 1];
        mOffsetPos                        = node->mUnk_04;
    }
    Vec3p pos;
    pos          = mOffsetPos;
    mOffsetPos.y = gMapManager->MapData_vfunc_68(&pos, 1) + 0x1000;
    mPos         = mOffsetPos;
    mPrevPos     = mOffsetPos;
    this->SetActive(9);
}
ARM void ActorNaviBase::func_ov000_020bb0ac() {
    for (s32 i = 0; i < FairyId_COUNT; i++) {
        gItemManager->GetFairy(i)->mUnk_290 = 1;
    }
}

ARM void ActorNaviBase::func_ov000_020bb0e0() {
    for (s32 i = 0; i < FairyId_COUNT; i++) {
        gItemManager->GetFairy(i)->mUnk_290 = 0;
    }
}
