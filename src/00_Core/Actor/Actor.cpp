extern "C" {
#include <stdlib.h>
}

#include "Actor/Actor.hpp"
#include "Actor/ActorManager.hpp"
#include "Actor/ActorPlayerDummy.hpp"
#include "DTCM/UnkStruct_027e077c.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Player/EquipSword.hpp"
#include "Player/PlayerControl.hpp"
#include "Player/PlayerLinkBase.hpp"
#include "Player/TouchControl.hpp"
#include "Save/AdventureFlags.hpp"

static char *sShipTypes[] = {"brg", "anc", "bow", "hul", "can", "dco", "pdl", "fnl"};

struct UnkStruct3 {
    /* 0 */ s16 mUnk_0;
    /* 2 */ u8 mUnk_2;
    /* 3 */
};
const UnkStruct3 sUnkTable[] = {
    {0xff, 2}, {0xff, 2}, {0xff, 2}, {0xff, 2}, {0xff, 2}, {6, 2},    {4, 2},  {4, 2},  {4, 2},  {1, 2},
    {12, 2},   {4, 2},    {4, 2},    {8, 2},    {12, 2},   {2, 2},    {2, 2},  {20, 2}, {20, 2}, {1, 2},
    {4, 2},    {4, 2},    {4, 2},    {8, 2},    {4, 2},    {0xff, 2}, {20, 2}, {6, 2},  {6, 2},  {2, 2},
};

Actor_UnkStruct_020::Actor_UnkStruct_020() :
    mUnk_0c(-1),
    mUnk_0d(0),
    mUnk_0e(1),
    mUnk_10(-1) {
    for (s32 i = 0; i < 4; ++i) {
        mUnk_00[i] = 0;
    }
    for (s32 i = 0; i < 2; ++i) {
        mUnk_08[i] = 0;
        mUnk_0a[i] = 0;
    }
}

ARM Actor::Actor() :
    mType(ActorTypeId_Null),
    mRef(-1, -1),
    mUnk_010(0),
    mUnk_011(0),
    mUnk_012(0),
    mUnk_034(-1, -1),
    mUnk_03c(-1),
    mUnk_040(-1, -1),
    mGravity(FLOAT_TO_Q20(0.0498)),
    mMaxFall(FLOAT_TO_Q20(0.5)),
    mUnk_074(2),
    mAngle(0),
    mUnk_07a(-1),
    mHitbox(FLOAT_TO_Q20(0.5)),
    mUnk_08c(mHitbox),
    mUnk_0a4(0, FLOAT_TO_Q20(1.0), 0, FLOAT_TO_Q20(1.0)),
    mUnk_0dc(0xffff),
    mUnk_0de(0xffff),
    mUnk_0e0(0xffff),
    mUnk_0e2(0xffff),
    mUnk_0e4(0),
    mUnk_106(0),
    mUnk_107(0),
    mUnk_108(0),
    mUnk_109(0),
    mUnk_110(0),
    mUnk_111(0),
    mUnk_112(0),
    mUnk_113(0),
    mUnk_114(0),
    mUnk_115(0),
    mAlive(true),
    mUnk_119(1),
    mVisible(true),
    mUnk_11b(false),
    mUnk_11c(0),
    mUnk_11d(false),
    mYOffset(0),
    mUnk_120(4),
    mUnk_122(0xff),
    mUnk_124(1),
    mUnk_125(4),
    mUnk_126(3),
    mUnk_128(false),
    mUnk_129(false),
    mUnk_12a(0),
    mUnk_12c(0),
    mUnk_130(-1),
    mUnk_134(-1),
    mActiveFrames(0),
    mUnk_13c(0),
    mUnk_140(0),
    mUnk_144(0) {
    mUnk_014.x = 0;
    mUnk_014.y = 0;
    mUnk_014.z = 0;
    mPos.x     = 0;
    mPos.y     = 0;
    mPos.z     = 0;
    mPrevPos.x = 0;
    mPrevPos.y = 0;
    mPrevPos.z = 0;
    mVel.x     = 0;
    mVel.y     = 0;
    mVel.z     = 0;
}

ARM Actor::~Actor() {}

ARM bool Actor::Init() {
    return true;
}

ARM bool Actor::vfunc_0c() {}
ARM void Actor::vfunc_10(u32 param1) {}
ARM void Actor::vfunc_24() {}
ARM void Actor::vfunc_28() {}

ARM void Actor::GetOffsetPos(Vec3p *pos) {
    *pos = mPos;
    pos->y += mYOffset;
}

extern "C" unk32 func_ov00_02087ef0();
ARM unk32 Actor::vfunc_38() {
    return func_ov00_02087ef0();
}

ARM unk8 Actor::func_ov00_020c1788() {
    return gMapManager->func_ov00_02083570(mUnk_010, mUnk_011);
}

ARM s32 Actor::vfunc_2c() {
    return -1;
}

ARM unk32 Actor::vfunc_30() {
    return 0;
}

ARM void Actor::vfunc_14(u32 param1) {}

extern "C" void func_ov00_0207a1c8(Actor_UnkStruct_0a4 *param1, u32 param2, Vec3p *param3);
ARM void Actor::vfunc_18(u32 param1) {
    func_ov00_0207a1c8(&mUnk_0a4, param1, &mPos);
}

struct UnkStruct1 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk8 mUnk_08;
    /* 09 */ unk8 mUnk_09;
    /* 0a */ unk8 mUnk_0a;
    /* 0b */ unk8 mUnk_0b;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk8 mUnk_14;
    /* 15 */ unk8 mUnk_15;
    /* 16 */ unk16 mUnk_16;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */
};
extern void *data_027e0d3c;
extern unk32 data_02063e4c;
extern "C" bool func_ov00_02079470(void *param1, Vec3p *param2, unk32 param3, unk32 param4, unk32 *param5, unk32 *param6,
                                   unk32 param7, unk32 param8);
extern "C" void func_01ffbe34(UnkStruct1 *param1);
extern "C" void func_020313c8(unk32 *param1, unk32 param2, unk32 param3, u32 param4, UnkStruct1 *param5);
ARM void Actor::vfunc_1c(u16 *param1) {
    u16 unk1 = mUnk_07a;
    if (mUnk_129) {
        unk1 = mUnk_126;
    }
    if (unk1 != 0xffff) {
        if ((*param1 & 4) == 0 && (*param1 & 8) == 0) {
            return;
        }
        unk32 unk2;
        unk32 unk3;
        if (func_ov00_02079470(data_027e0d3c, &mPos, 0, 0, &unk2, &unk3, 0, 0)) {
            UnkStruct1 unk4;
            func_01ffbe34(&unk4);
            unk4.mUnk_04 = 1;
            func_020313c8(&data_02063e4c, unk2, unk3, unk1, &unk4);
        }
    }
}

ARM void Actor::vfunc_20(bool param1) {}

ARM void Actor::SetUnk_129(bool value) {
    if (mUnk_128) {
        mUnk_129 = value;
    }
}

ARM bool Actor::SetUnk_11b() {
    if (mUnk_11b) {
        return false;
    }
    mUnk_11b = true;
    return true;
}

ARM bool Actor::SetVelocity(Vec3p *vel) {
    if (!mUnk_11b) {
        return false;
    }
    mVel     = *vel;
    mUnk_11b = false;
    return true;
}

ARM bool Actor::vfunc_60() {
    return false;
}

ARM void Actor::vfunc_64() {}

ARM void Actor::SetUnk_11c(unk8 value) {
    mUnk_11c = value;
}

ARM void Actor::vfunc_68() {}

ARM bool Actor::vfunc_6c() {
    return true;
}

ARM bool Actor::vfunc_70() {
    return true;
}

ARM void Actor::vfunc_74() {}
ARM void Actor::vfunc_7c() {}

ARM bool Actor::vfunc_78() {
    return true;
}

ARM void Actor::vfunc_80() {}
ARM void Actor::vfunc_84() {}
ARM void Actor::vfunc_88() {}

ARM bool Actor::vfunc_8c() {
    return true;
}

ARM bool Actor::vfunc_90() {
    return true;
}

ARM void Actor::vfunc_94() {}
ARM bool Actor::vfunc_98() {}
ARM bool Actor::vfunc_9c() {}

ARM bool Actor::func_ov00_020c195c() {
    if (!mUnk_11b) {
        return false;
    }
    gPlayerLink->func_ov000_020bc854(&mPos);
    return true;
}

ARM bool Actor::func_ov00_020c198c() {
    if (data_027e077c.GetUnk0() != data_027e077c.GetUnk4() || (data_02056be4[data_027e077c.GetUnk0()] & 1) != 0 ||
        (data_02056be4[data_027e077c.GetUnk4()] & 4) != 0 || data_027e103c->func_ov005_02103f4c() || gPlayer->mHealth <= 0) {
        return false;
    }
    if (gPlayerLink && !gPlayerLink->func_ov000_020bd304()) {
        return false;
    }
    return true;
}

ARM bool KillPickupsFilter::Filter(Actor *actor) {
    switch (actor->mType) {
        case ActorTypeId_Rupee:
        case ActorTypeId_Heart:
        case ActorTypeId_Bomb:
        case ActorTypeId_Arrow:
        case ActorTypeId_BMRN:
        case ActorTypeId_BMTY:
        case ActorTypeId_FLAL:
        case ActorTypeId_FLBM:
        case ActorTypeId_FLBT:
        case ActorTypeId_FLTM:
            actor->Kill();
            return true;

        default:
            return false;
    }
}

ARM void Actor::KillPickupItemActors() {
    KillPickupsFilter killPickups;
    gActorManager->FilterActors(&killPickups, NULL);
}

ARM bool Actor::TrySetTransform(Transform *transform) {
    mPrevPos = mPos;
    mPos     = transform->pos;
    mAngle   = transform->angle;
    mVisible = transform->visible;
    return true;
}

ARM void Actor::SetTransform(Transform *transform) {
    mPrevPos = mPos;
    mPos     = transform->pos;
    mAngle   = transform->angle;
    mVisible = transform->visible;
}

ARM void Actor::vfunc_a8() {}

ARM bool Actor::func_ov00_020c1bfc(s32 param1) {
    return gMapManager->func_ov00_02084be0(mUnk_020.mUnk_0a[param1], mUnk_020.mUnk_08[param1]);
}

ARM void Actor::func_ov00_020c1c20(s32 param1, unk32 param2) {
    gMapManager->func_ov00_02084b38(mUnk_020.mUnk_0a[param1], mUnk_020.mUnk_08[param1], param2);
}

ARM bool Actor::vfunc_48(Knockback *param1) {
    return true;
}

extern "C" void func_ov00_020c8398(ActorTypeId type, Vec3p *pos, unk32 param2);
ARM bool Actor::vfunc_4c(unk32 *param1) {
    if ((*param1 & 0x1f) == 0x8) {
        func_ov00_020c8398(mType, &mPos, 1);
        this->Kill();
        return true;
    }
    this->Kill();
    return true;
}

ARM bool Actor::IsNearLink() {
    Vec3p playerPos = gPlayerPos;

    q20 z  = playerPos.z;
    q20 dx = abs(playerPos.x - mPos.x);
    if (dx > FLOAT_TO_Q20(10.0)) {
        return false;
    }
    q20 dz = abs(playerPos.z - mPos.z);
    return dz <= FLOAT_TO_Q20(10.0);
}

ARM void Actor::func_ov00_020c1cf8() {
    if (mUnk_0a4.mUnk_00 || mUnk_0a4.mUnk_01 || mUnk_129 == true || mUnk_11d == true || mUnk_11b == true) {
        mInactive = 0;
    } else {
        if (this->IsNearLink()) {
            mInactive = 1;
        } else {
            mInactive = 2;
        }
    }
}

ARM bool Actor::func_ov00_020c1d58() {
    if (gAdventureFlags->func_ov00_02097738()) {
        return false;
    }
    return gPlayer->vfunc_04() != false;
}

ARM bool Actor::func_ov00_020c1da0(s32 param1, Vec3p *param2) {
    if (!this->func_ov00_020c1d58()) {
        return false;
    }

    Vec3p vec;
    if (param2) {
        vec = *param2;
    } else {
        Vec3p_Sub(&gPlayerPos, &mPrevPos, &vec);
    }

    return gPlayer->vfunc_30(mUnk_124, &vec, param1);
}

ARM bool Actor::func_ov00_020c1e2c(s32 param1, Vec3p *param2) {
    if (!this->func_ov00_020c1d58()) {
        return false;
    }
    if (mHitbox.size < 0) {
        return false;
    }

    Vec3p vec;
    if (param2) {
        vec = *param2;
    } else {
        Vec3p_Sub(&gPlayerPos, &mPrevPos, &vec);
    }

    Cylinder hitbox;
    this->GetHitbox(&hitbox);
    if (gPlayer->CollidesWith(&hitbox)) {
        return gPlayer->vfunc_30(mUnk_124, &vec, param1);
    }
    return false;
}

ARM bool Actor::func_ov00_020c1ef8(Cylinder *param1, Vec3p *param2, s32 param3, s32 param4) {
    if (!this->func_ov00_020c1d58()) {
        return false;
    }
    if (gPlayer->CollidesWith(param1)) {
        return gPlayer->vfunc_30(param3, param2, param4);
    }
    return false;
}

ARM bool Actor::func_ov00_020c1f5c(Vec3p *param1, Vec3p *param2, s32 param3, Vec3p *param4, u8 param5, s32 param6) {
    if (!this->func_ov00_020c1d58()) {
        return false;
    }
    if (gPlayer->func_ov00_020a7c60(param1, param2, param3)) {
        return gPlayer->vfunc_30(param5, param4, param6);
    }
    return false;
}

ARM bool Actor::func_ov00_020c1fc8(PlayerCollide flags) {
    if (gAdventureFlags->func_ov00_02097738()) {
        return false;
    }
    bool result = false;
    if (mHitbox.size >= 0) {
        Vec3p vecFromPlayer;
        Vec3p_Sub(&mPos, &gPlayerPos, &vecFromPlayer);
        if (this->CollidesWithPlayer(flags & PlayerCollide_Sword)) {
            Knockback knockback;
            knockback.mUnk_00 = gPlayer->EquipItem_vfunc_2c();
            knockback.vec     = vecFromPlayer;
            knockback.mUnk_10 = 0;
            knockback.actor   = NULL;

            result = this->vfunc_48(&knockback);
        } else if (this->CollidesWithPlayer(flags & PlayerCollide_Shield)) {
            Knockback knockback;
            knockback.mUnk_00 = 0;
            knockback.vec     = vecFromPlayer;
            if ((s32) gItemManager->GetActiveFairyLevel(FairyId_Wisdom) >= 1) {
                knockback.mUnk_10 = 3;
            } else {
                knockback.mUnk_10 = 2;
            }
            knockback.actor = NULL;

            result = this->vfunc_48(&knockback);
        } else if (this->CollidesWithPlayer(flags & PlayerCollide_Hammer)) {
            Knockback knockback;
            knockback.mUnk_00 = gPlayer->EquipItem_vfunc_2c();
            knockback.vec     = vecFromPlayer;
            knockback.mUnk_10 = 4;
            knockback.actor   = NULL;

            result = this->vfunc_48(&knockback);
        } else if (this->CollidesWithPlayer(flags & PlayerCollide_Gongoron)) {
            Knockback knockback;
            knockback.mUnk_00 = gPlayerLink->vfunc_78();
            knockback.vec     = vecFromPlayer;
            if (knockback.mUnk_00 != 0) {
                knockback.mUnk_10 = 9;
            } else {
                knockback.mUnk_10 = 2;
            }
            knockback.actor = NULL;

            result = this->vfunc_48(&knockback);
        }
    }
    return result;
}

ARM bool Actor::CollidesWithShield(Cylinder *param1) {
    Vec3p vecFromPlayer;
    Vec3p_Sub(&mPos, &gPlayerPos, &vecFromPlayer);
    s32 currAngle = gPlayerAngle;
    s32 angle     = Atan2(vecFromPlayer.x, vecFromPlayer.z);
    s32 angleDiff = (s16) angle - currAngle;
    if (angleDiff < 0) {
        angleDiff = -angleDiff;
    }
    if (angleDiff <= DEG_TO_ANG(90) && gPlayer->EquipCollidesWith(param1, ItemFlag_WoodenShield)) {
        return true;
    }
    return false;
}

ARM bool Actor::CollidesWithPlayer(PlayerCollide flags) {
    if (flags != 0 && mHitbox.size >= 0) {
        Cylinder hitbox;
        this->GetHitbox(&hitbox);
        if (flags & PlayerCollide_Player) {
            if (gPlayer->CollidesWith(&hitbox)) {
                return true;
            }
        }
        if (flags & PlayerCollide_Sword) {
            if (gPlayer->EquipCollidesWith(&hitbox, ItemFlag_OshusSword)) {
                return true;
            }
        }
        if (flags & PlayerCollide_Shield) {
            if (this->CollidesWithShield(&hitbox)) {
                return true;
            }
        }
        if (flags & PlayerCollide_Gongoron) {
            if (gPlayerLink && gPlayerLink->GongoronCollidesWith(&hitbox)) {
                return true;
            }
        }
        if (flags & PlayerCollide_Hammer) {
            if (gPlayer->EquipCollidesWith(&hitbox, ItemFlag_Hammer)) {
                return true;
            }
        }
    }
    return false;
}

ARM void Actor::func_ov00_020c23c4(ActorRef *ref, Actor *actor) {
    Actor::func_ov00_020c23d4(ref, actor, &actor->mHitbox);
}

ARM void Actor::func_ov00_020c23d4(ActorRef *ref, Actor *actor, Cylinder *cylinder) {
    *ref = actor->mUnk_040;
    if (!gActorManager->func_ov00_020c398c(actor->mRef.index)) {
        ref->Reset();
    }
    actor->mUnk_040.Reset();
    gActorManager->func_ov00_020c399c(actor->mRef.index, cylinder);
}

ARM bool Actor::func_ov00_020c243c(ActorTypeId *actorTypes, Actor **out) {
    if (out) {
        *out = NULL;
    }
    if (gAdventureFlags->func_ov00_02097738()) {
        return false;
    }

    bool result = false;
    if (mHitbox.size >= 0) {
        Actor *actor = gActorManager->func_ov00_020c39ac(mRef.index, actorTypes, false);
        if (actor) {
            Knockback knockback;
            if (actor->mType == ActorTypeId_Arrow || actor->mType == ActorTypeId_SBEM) {
                q20 cos = COS(actor->mAngle);
                q20 sin = SIN(actor->mAngle);

                knockback.vec.x = sin;
                knockback.vec.y = 0;
                knockback.vec.z = cos;
            } else {
                Vec3p_Sub(&mPos, &actor->mPrevPos, &knockback.vec);
            }
            knockback.mUnk_00 = actor->mUnk_125;
            knockback.actor   = actor;

            switch (actor->mType) {
                case ActorTypeId_SBEM:
                    knockback.mUnk_10 = 1;
                    break;

                case ActorTypeId_Arrow:
                    knockback.mUnk_10 = 7;
                    break;

                case ActorTypeId_BMRN:
                    knockback.mUnk_10 = 5;
                    break;

                case ActorTypeId_GrapplingHook:
                    knockback.mUnk_10 = 8;
                    break;

                case ActorTypeId_Bomb:
                case ActorTypeId_Blast:
                case ActorTypeId_BMTY:
                case ActorTypeId_CBLS:
                    knockback.mUnk_10 = 6;
                    break;

                case ActorTypeId_TSBH:
                case ActorTypeId_BIGR:
                case ActorTypeId_BTRF:
                case ActorTypeId_STNE:
                case ActorTypeId_TARU:
                case ActorTypeId_BKEY:
                case ActorTypeId_FORC:
                case ActorTypeId_FLTB:
                case ActorTypeId_TSUB:
                    knockback.mUnk_10 = 10;
                    break;

                case ActorTypeId_VLR0:
                    knockback.mUnk_10 = 4;
                    break;

                default:
                    knockback.mUnk_10 = 11;
                    break;
            }

            result = this->vfunc_48(&knockback);
            if (result) {
                actor->mUnk_040 = this->mRef;
                if (out) {
                    *out = actor;
                }
            }
        }
    }
    return result;
}

ARM bool Actor::CollidesWith(Actor *other) {
    bool collides = false;
    if (other->mAlive) {
        if (other->mHitbox.size >= 0 && mHitbox.size >= 0) {
            Cylinder a, b;
            this->GetHitbox(&a);
            other->GetHitbox(&b);
            if (a.Overlaps(&b)) {
                collides = true;
            }
        }
    }
    return collides;
}

ARM bool Actor::func_ov00_020c27a8(unk32 param1) {
    if (mUnk_11b) {
        return false;
    }
    if (param1 == 0) {
        return mUnk_12c != 0;
    }
    return mUnk_12c == param1;
}

ARM bool Actor::CollidesWithLink() {
    Cylinder hitbox;
    this->GetHitbox(&hitbox);
    // Link's hitbox has a radius of 1, hence why they add 1.0 here
    return this->DistanceToLink() < hitbox.size + FLOAT_TO_Q20(1.0);
}

ARM bool Actor::IsFollowedByLink() {
    return mRef.id == gPlayerControl->mFollowRef.id;
}

ARM void Actor::StopLinkFollow() {
    if (!this->IsFollowedByLink()) {
        return;
    }
    gPlayerControl->StopFollowing();
}

ARM bool Actor::IsGrabbed() {
    s32 id = mRef.id;
    return id == gPlayerLink->GetGrabActorId();
}

ARM q20 Actor::XzDistanceTo(Vec3p *vec) {
    Vec3p src, dest;
    Vec3p_CopyXZ(&mPos, &src);
    Vec3p_CopyXZ(vec, &dest);
    return Vec3p_Distance(&src, &dest);
}

ARM q20 Actor::DistanceToLink() {
    return Vec3p_Distance(&mPos, &gPlayerPos);
}

ARM q20 Actor::XzDistanceToLink() {
    Vec3p src;
    Vec3p_CopyXZ(&mPos, &src);
    Vec3p dest = gPlayerPos;

    dest.y = 0;
    return Vec3p_Distance(&src, &dest);
}

ARM s16 Actor::GetAngleTo(Vec3p *vec) {
    s16 angle = mAngle;

    q20 dz = vec->z - mPos.z;
    q20 dx = vec->x - mPos.x;
    if (dx != 0 || dz != 0) {
        angle = Atan2(dx, dz);
    }
    return angle;
}

ARM s32 Actor::GetAngleToLink() {
    return this->GetAngleTo(&gPlayerPos);
}

extern "C" void func_0202d95c(Vec3p *param1, q20 param2);
ARM void Actor::func_ov00_020c2988(Vec3p *param1, q20 param2, Vec3p *param3) {
    q20 z1 = param1->z;
    q20 z0 = mPos.z;

    param3->x = param1->x - mPos.x;
    param3->y = 0;
    param3->z = z1 - z0;
    q20 dist  = this->XzDistanceTo(param1);
    if (dist < param2) {
        param2 = dist;
    }
    func_0202d95c(param3, param2);
}

ARM void Actor::ResetWallTouch() {
    mWallTouch.x = 0;
    mWallTouch.y = 0;
    mWallTouch.z = 0;
}

ARM bool Actor::func_ov00_020c29ec(q20 param1) {
    return Vec3p_Length(&mWallTouch) > param1;
}

ARM void Actor::GetHitbox(Cylinder *hitbox) {
    hitbox->size  = mHitbox.size;
    u32 angle     = 2 * (mAngle >> 4);
    hitbox->pos.x = mPos.x;
    hitbox->pos.y = mPos.y;
    hitbox->pos.z = mPos.z;
    hitbox->pos.y += mHitbox.pos.y;

    q20 sin = gSinCosTable[angle];
    q20 cos = gSinCosTable[angle + 1];
    Vec3p_Rotate(&mHitbox.pos, sin, cos, &hitbox->pos);
}

ARM void Actor::GetUnk_08c(Cylinder *param1) {
    param1->size  = mUnk_08c.size;
    u32 angle     = 2 * (mAngle >> 4);
    param1->pos.x = mPos.x;
    param1->pos.y = mPos.y;
    param1->pos.z = mPos.z;
    param1->pos.y += mUnk_08c.pos.y;

    q20 sin = gSinCosTable[angle];
    q20 cos = gSinCosTable[angle + 1];
    Vec3p_Rotate(&mUnk_08c.pos, sin, cos, &param1->pos);
}

ARM void Actor::IncreaseActiveFrames() {
    mActiveFrames += 1;
    if (mActiveFrames < 0) {
        mActiveFrames = 0;
    }
}

ARM bool Actor::func_ov00_020c2c0c() {
    const ActorTypeId types[] = {
        ActorTypeId_BMRN,
        ActorTypeId_Null,
    };
    return mHitbox.size >= 0 && gActorManager->func_ov00_020c39ac(mRef.index, types, false);
}

ARM bool Actor::func_ov00_020c2c70() {
    Vec3p vel;
    Actor *boomerang = this->GetEquipBoomerang()->GetActor();
    if (boomerang) {
        Vec3p_Sub(&boomerang->mPos, &mPos, &vel);
        if (Vec3p_Length(&vel) > FLOAT_TO_Q20(1.0)) {
            func_0202d95c(&vel, FLOAT_TO_Q20(1.0));
        }
    } else {
        PlayerCharacter character = gPlayerLink->GetCurrentCharacter();
        if (character == PlayerCharacter_Gongoron) {
            Vec3p pos;
            this->GetLinkPos(&pos);
            Vec3p_Sub(&pos, &mPos, &vel);
        } else {
            Vec3p_Sub(&gPlayerPos, &mPos, &vel);
        }
    }
    Vec3p_Add(&mPos, &vel, &mPos);
    mVel = vel;
    return boomerang != NULL;
}

ARM EquipBoomerang *Actor::GetEquipBoomerang() {
    return (EquipBoomerang *) ItemManager::GetEquipItemUnchecked(ItemFlag_Boomerang);
}

ARM bool Actor::func_ov00_020c2d54() {
    const ActorTypeId types[] = {
        ActorTypeId_GrapplingHook,
        ActorTypeId_Null,
    };
    if (mHitbox.size >= 0) {
        Actor *actor = gActorManager->func_ov00_020c39ac(mRef.index, types, false);
        if (actor) {
            EquipRope *rope = EquipSword::GetEquipRope();
            if (rope->func_ov14_0213d480(mRef.id) < 0) {
                actor->mUnk_040 = mRef;
                return true;
            }
        }
    }
    return false;
}

ARM bool Actor::func_ov00_020c2de4() {
    Vec3p vel;

    EquipRope *rope = EquipSword::GetEquipRope();

    ActorRope *actor = rope->GetRopeActor();
    if (actor) {
        Vec3p_Sub(&actor->mPos, &mPos, &vel);
        if (Vec3p_Length(&vel) > FLOAT_TO_Q20(1.0)) {
            func_0202d95c(&vel, FLOAT_TO_Q20(1.0));
        }
    } else {
        Vec3p_Sub(&gPlayerPos, &mPos, &vel);
    }
    Vec3p_Add(&mPos, &vel, &mPos);
    mVel = vel;
    return actor != NULL;
}

ARM bool Actor::func_ov00_020c2e7c() {
    bool result = false;

    EquipRope *rope = EquipSword::GetEquipRope();
    if (!mUnk_11d) {
        s32 unk1 = rope->func_ov14_0213ddd4(this);
        s32 unk2 = unk1;
        if (unk1 >= 0) {
            unk1 = rope->mUnk_70;
            if (unk1 >= unk2) {
                result = true;
            }
        }
    }
    return result;
}

ARM bool Actor::func_ov00_020c2ebc() {
    EquipRope *rope = EquipSword::GetEquipRope();
    return rope->func_ov14_0213defc(this);
}

ARM bool Actor::func_ov00_020c2ed4() {
    EquipRope *rope = EquipSword::GetEquipRope();

    s32 index = rope->func_ov14_0213d440(mRef.id);
    if (index >= 0) {
        ActorRope *actor = rope->GetRopeActor();
        if (actor) {
            Vec3p vel;
            if (rope->func_ov14_0213d81c(index, &vel)) {
                mVel = vel;
                Vec3p_Add(&mPos, &mVel, &mPos);
                if (!this->func_01fffd04(1)) {
                    Cylinder hitbox;
                    this->GetHitbox(&hitbox);
                    return rope->func_ov14_0213dadc(index, &hitbox);
                }
                rope->func_ov14_0213d91c(index);
                return false;
            } else {
                return true;
            }
        }
    } else {
        index = rope->func_ov14_0213d480(mRef.id);
        if (index >= 0) {
            return true;
        }
    }
    if (rope->mUnk_6a) {
        mVel = gVec3p_ZERO;
    }
    return false;
}

ARM bool Actor::IsHitboxTouched(bool param1) {
    q20 size = mHitbox.size;

    bool result = false;
    if (size >= 0) {
        Vec3p pos = mPos;
        pos.y += size;
        if (param1) {
            result = TouchControl::func_0202b864(&pos, size, 8);
        } else {
            result = TouchControl::func_0202b894(&pos, size, 8);
        }
    }
    return result;
}

ARM void Actor::ApplyGravity() {
    mVel.y -= mGravity;
    if (mVel.y < -mMaxFall) {
        mVel.y = -mMaxFall;
    }
}

ARM bool Actor::func_ov00_020c3094() {
    bool result = false;
    Vec3p pos, prevPos;
    Vec3p_Copy(&mPos, &pos);
    Vec3p_Copy(&mPrevPos, &prevPos);
    s32 unk1 = gMapManager->func_ov00_02083ef8(&pos, &prevPos, false);
    if (mPos.y <= unk1) {
        result = true;
        mPos.y = unk1;
    }
    return result;
}

ARM Vec3p *Actor::GetPos() {
    return &mPos;
}

ARM void Actor::vfunc_54() {}

extern "C" bool func_ov00_020c5924(Vec3p *param1, unk16 param2, ActorRef *param3, unk32 param4, ActorRef *param5);
ARM bool Actor::func_ov00_020c3118(unk16 param1) {
    return func_ov00_020c5924(&mPos, param1, &mRef, 2, NULL);
}

extern u8 data_027e0c54;
ARM bool Actor::func_ov00_020c313c(u32 param1) {
    return param1 == data_027e0c54;
}

ARM void Actor::func_ov00_020c3158() {
    if (mUnk_03c < 0) {
        return;
    }
    gMapManager->SetMapDataFlag1(mUnk_03c, 1);
}

ARM void Actor::Kill() {
    mAlive = false;
    if (mUnk_119 == 0) {
        return;
    }
    this->func_ov00_020c3158();
}

ARM void Actor::KillInBounds() {
    if (mPos.y >= -FLOAT_TO_Q20(10.0)) {
        return;
    }
    this->Kill();
}

extern unk32 data_ov00_020e9c88;
extern "C" void func_ov00_0207b89c(unk32 *param1, s32 param2, Vec3p *param3, void *param4, Actor *param5);
void vfunc_ac_Thunk(Actor *actor);
ARM void Actor::func_ov00_020c31c0(unk32 param1) {
    func_ov00_0207b89c(&data_ov00_020e9c88, param1, &mPos, &vfunc_ac_Thunk, this);
}

ARM void vfunc_ac_Thunk(Actor *actor) {
    actor->vfunc_ac();
}

ARM void Actor::vfunc_ac() {}

ARM void Actor::func_ov00_020c3200(s32 param1) {
    const UnkStruct3 *entry = &sUnkTable[param1];

    mUnk_122 = sUnkTable[param1].mUnk_0;
    mUnk_120 = sUnkTable[param1].mUnk_0;
    mUnk_124 = entry->mUnk_2;
}

ARM void Actor::vfunc_b0() {}

ARM void Actor::GetLinkPos(Vec3p *result) {
    if (gPlayerLink != NULL && gPlayerLink->GetCurrentCharacter() != PlayerCharacter_Link) {
        return this->GetLinkDummyPos(result);
    }
    *result = gPlayerPos;
}

ARM void Actor::GetLinkDummyPos(Vec3p *result) {
    ActorRef dummyRef;
    ActorManager::FindActorByType(&dummyRef, gActorManager, ActorTypeId_PlayerDummy);
    ActorPlayerDummy *dummy = (ActorPlayerDummy *) gActorManager->GetActor(&dummyRef);
    if (dummy != NULL && dummy->mUnk_16e == 0) {
        *result = dummy->mPos;
        return;
    }
    *result = gPlayerPos;
}

Actor_UnkStruct_09c::Actor_UnkStruct_09c() {
    mUnk_0 = 0xff;
    mUnk_2 = 1;
    mUnk_3 = 0;
    mUnk_4 = 0;
}

Actor_UnkStruct_012::Actor_UnkStruct_012() {}
