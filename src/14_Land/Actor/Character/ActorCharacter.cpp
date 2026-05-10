#include "Actor/Character/ActorCharacter.hpp"
#include "Physics/Cylinder.hpp"
#include "Player/TouchControl.hpp"
#include "Save/AdventureFlags.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"
#include "Unknown/UnkStruct_ov000_020e8b08.hpp"
#include "nds/math.h"

extern "C" void func_ov000_0209a4f4(UnkStruct_ov000_0209a50c *);
ARM void ActorCharacter::func_ov014_02144d94() {
    UnkStruct_ov000_0209a50c UStack_b8;
    UStack_b8.mUnk_04 = -1;
    UStack_b8.mUnk_09 = 0x32;
    UStack_b8.mUnk_0a = 0;
    UStack_b8.mUnk_0b = 0;
    mUnk_1b4          = gAdventureFlags->func_ov00_02097810(&UStack_b8);
}

ARM void ActorCharacter::func_ov014_02144dec() {
    gAdventureFlags->func_ov00_02097bcc(mUnk_1b4);
    mUnk_1b4 = -1;
}

ARM bool ActorCharacter::func_ov014_02144e14() {
    return mUnk_020.mUnk_00[1] != 0;
}

ARM bool ActorCharacter::func_ov014_02144e28() {
    return mUnk_020.mUnk_00[3] != 0;
}

ARM bool ActorCharacter::func_ov014_02144e3c() {
    return gAdventureFlags->Get(mUnk_020.mUnk_00[1]);
}

ARM bool ActorCharacter::func_ov014_02144e58() {
    return gAdventureFlags->Get(mUnk_020.mUnk_00[3]);
}

ARM bool ActorCharacter::func_ov014_02144e74() {
    return mInactive && this->func_ov014_02144e58();
}

ARM ActorCharacter_288::ActorCharacter_288() :
    UnkStruct_ov000_020c0c08(&mUnk_24, NULL) {}

extern "C" void Fill32(unk32, unk32 *, unk32);
ARM ActorCharacter::ActorCharacter() :
    mUnk_1d8(this, &mUnk_1f8, mUnk_288),
    mUnk_408(0),
    mUnk_40c(0),
    mUnk_410(0),
    mUnk_414(0),
    mUnk_418(0x1000),
    mUnk_41c(0x11f) {
    mUnk_448 = 3;
    mUnk_454 = -1;
    mUnk_458 = -1;
    mUnk_460 = 0x153;
    mUnk_464 = 0x71;
    mUnk_468 = 0;
    mUnk_469 = 0;
    Fill32(0, mUnk_46c, 4);
    Fill32(0, mUnk_46c, 4);
}

ARM ActorCharacter::~ActorCharacter() {}

ARM bool ActorCharacter::Init() {
    ActorCharacterBase::Init();
    return true;
}

extern unk32 data_ov000_020e9370;
extern "C" void func_ov005_02102c2c(unk32 *, unk32, Vec3p *, unk32, unk32, unk32, unk32, unk32, unk32, unk32);
ARM void ActorCharacter::vfunc_20(bool param1) {
    if (param1 ? mUnk_0a4.mUnk_01 : mUnk_0a4.mUnk_00) {
        mUnk_1d8.func_ov000_020c5f1c();
        if (mUnk_45c > 0) {
            func_ov005_02102c2c(&data_ov000_020e9370, 0, &mPos, mUnk_45c, mUnk_45c, 0, 0x1f, 1, 1, 1);
        }
    }
}

struct UnkStruct_ov005_021082e4 {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */
};

extern unk32 data_027e0ff8;
extern "C" void func_ov005_021082e4(unk32, ActorRef *, Vec3p *, Vec3p *, UnkStruct_ov005_021082e4 *, unk32, unk32);
ARM void ActorCharacter::func_ov014_02145178() {
    UnkStruct_ov005_021082e4 unk;
    unk.mUnk_0c = 0;
    unk.mUnk_00 = 0;
    unk.mUnk_04 = 0;
    unk.mUnk_08 = 0;
    unk32 size  = mHitbox.size;
    unk.mUnk_10 = size * 2;
    unk.mUnk_00 = 0;
    unk.mUnk_04 = size;
    unk.mUnk_0c = size;
    unk.mUnk_08 = 0;
    func_ov005_021082e4(data_027e0ff8, &mRef, &mPos, &mPrevPos, &unk, mUnk_448, -1);
}

ARM void ActorCharacter::func_ov014_021451f0(unk32 *param1) {
    unk32 iVar1            = param1[0];
    mHitbox.pos.x          = 0;
    mHitbox.pos.y          = iVar1;
    mHitbox.pos.z          = 0;
    mHitbox.size           = iVar1;
    mUnk_08c.pos.x         = mHitbox.pos.x;
    mUnk_08c.pos.y         = mHitbox.pos.y;
    mUnk_08c.pos.z         = mHitbox.pos.z;
    mUnk_08c.size          = mHitbox.size;
    mUnk_0a4.mUnk_04.pos.x = 0;
    mUnk_0a4.mUnk_04.pos.y = iVar1;
    mUnk_0a4.mUnk_04.pos.z = 0;
    mUnk_0a4.mUnk_04.size  = iVar1 + 0x1000;
    mUnk_45c               = param1[1];
    mYOffset               = param1[2];
}

extern "C" bool func_ov000_020ccf0c(void *, ActorRef *);
ARM void ActorCharacter::func_ov014_02145258() {
    Vec3p vel = mVel;
    if (func_ov000_020ccf0c(&mUnk_1c4, &mRef)) {
        Vec3p_Add(&vel, &mUnk_1c4.mUnk_00, &vel);
    }
    Vec3p_Add(&mPos, &vel, &mPos);
}

ARM unk32 ActorCharacter::func_ov014_021452b0() {
    Vec3p offsetPos;
    mUnk_1d8.mActor->GetOffsetPos(&offsetPos);
    mUnk_1f8.func_ov014_0214a92c(&offsetPos, &mUnk_1d8.mActor->mPos, mUnk_1d8.mActor->mAngle);
    mVel.x = 0;
    mVel.z = 0;
    this->ApplyGravity();
    this->func_ov014_02145258();
    this->func_ov00_020c3094();
    return 0;
}

extern "C" void ApproachAngle_thunk(u16 *src, unk32 dst, s16 param3);
ARM unk32 ActorCharacter::func_ov014_02145318() {
    Vec3p offsetPos;
    mUnk_1d8.mActor->GetOffsetPos(&offsetPos);
    unk32 angle = mUnk_1f8.func_ov014_0214aa0c(&offsetPos, mUnk_1d8.mActor->mAngle);

    if (!mUnk_468) {
        s16 angleDiff = angle - (s16) mAngle;
        if (angleDiff < -0x7fff) {
            angleDiff = (u32) -0x7fff >> 0x11;
        } else if (angleDiff < 0) {
            angleDiff = -angleDiff;
        }

        unk32 speed = (angleDiff << 0xa) >> 0xc;
        if (speed > FLOAT_TO_Q20(0.6667)) {
            speed = FLOAT_TO_Q20(0.6667);
        } else if (speed < FLOAT_TO_Q20(0.0888)) {
            speed = FLOAT_TO_Q20(0.0888);
        }

        ApproachAngle_thunk(&this->mAngle, angle, speed);
    }

    mVel.x = 0;
    mVel.z = 0;
    this->ApplyGravity();
    this->func_ov014_02145258();
    this->func_ov00_020c3094();
    return 0;
}

ARM void ActorCharacter::func_ov014_021453f4(unk32 param1) {
    mUnk_430.func_ov000_020c66e4(&mPos, mAngle, param1);
}

ARM void ActorCharacter::func_ov014_02145414(unk32 param1, unk32 param2) {
    Vec3p offsetPos;
    mUnk_430.func_ov000_020c6838(&mPos, param1, mAngle, param2, &mVel, &mAngle);
    mUnk_1d8.mActor->GetOffsetPos(&offsetPos);
    mUnk_1f8.func_ov014_0214a92c(&offsetPos, &mUnk_1d8.mActor->mPos, mUnk_1d8.mActor->mAngle);
    this->ApplyGravity();
    this->func_ov014_02145258();
}

ARM void ActorCharacter::func_ov014_0214548c(unk32 param1) {
    Vec3p vec;
    if (!mUnk_430.func_ov000_020c66e4(&mPos, mAngle, param1)) {
        return;
    }
    if (!mUnk_430.func_ov000_020c6e30(&vec)) {
        return;
    }
    mPos.x     = vec.x;
    mPos.y     = vec.y;
    mPos.z     = vec.z;
    mPrevPos.x = vec.x;
    mPrevPos.y = vec.y;
    mPrevPos.z = vec.z;
}

ARM void ActorCharacter::func_ov014_02145508() {
    mUnk_430.func_ov000_020c6f08(&mPos);
}

ARM static bool func_ov014_02145520(ActorCharacterBase *actor) {
    return ((ActorCharacter *) actor)->func_ov014_0214552c();
}

ARM bool ActorCharacter::func_ov014_0214552c() {
    mUnk_1d8.func_ov014_02145cac();
    this->func_ov014_02145414(mUnk_460, 0xaab);
    this->func_ov00_020c3094();
    bool result = mUnk_430.func_ov000_020c6794(&mPos);
    if (result) {
        mUnk_460 = 0x153;
    }
    return result;
}

ARM void ActorCharacter::vfunc_80() {
    ActorCharacterBase::vfunc_80();
    if (mUnk_469) {
        return;
    }
    mUnk_44c = mUnk_420.mUnk_00[mUnk_420.mUnk_08];
    mUnk_1d8.func_ov014_02145f0c(0);
}

ARM void ActorCharacter::vfunc_84() {
    ActorCharacterBase::vfunc_84();
    if (mUnk_469) {
        return;
    }
    mUnk_1f8.mUnk_70.Reset();
    mUnk_1d8.func_ov014_02145f0c(mUnk_44c);
}

// non-matching
ARM void ActorCharacter::vfunc_cc() {
    bool unk;
    if (mUnk_454 == mUnk_420.mUnk_00[mUnk_420.mUnk_08] && mUnk_1d8.mUnk_10->mUnk_0c.func_0202e58c()) {
        unk = data_ov000_020e8b08 != NULL && mRef.id == data_ov000_020e8b08->mUnk_20[data_ov000_020e8b08->mUnk_55].id;
        this->vfunc_f0(unk, 1);
        mUnk_454 = -1;
    }
    mUnk_46c[0] &= ~1;
}

ARM void ActorCharacter::vfunc_c8() {
    this->func_ov014_02145318();
    mUnk_1d8.func_ov014_02145cac();
}

ARM bool ActorCharacter::vfunc_78() {
    return true;
}

ARM void ActorCharacter::vfunc_74(ActorRef *ref) {
    int iVar1;
    int iVar2;

    if (ref->id == mRef.id) {
        mUnk_1f8.mUnk_70.Reset();
        if (mUnk_420.mUnk_00[mUnk_420.mUnk_08] == 2) {
            return;
        }
        if (mUnk_469) {
            return;
        }
        if ((mUnk_46c[0] & 1U) != 0) {
            return;
        }
        mUnk_1d8.func_ov014_02145f0c(2);
    } else {
        mUnk_1f8.mUnk_70.id    = ref->id;
        mUnk_1f8.mUnk_70.index = ref->index;
        if (mUnk_420.mUnk_00[mUnk_420.mUnk_08] == 0) {
            return;
        }
        if (mUnk_469) {
            return;
        }
        if ((mUnk_46c[0] & 1U) != 0) {
            return;
        }
        mUnk_1d8.func_ov014_02145f0c(0);
    }
}

ARM void ActorCharacter::vfunc_7c(ActorRef *ref) {
    if (ref->id != mRef.id) {
        mUnk_1f8.mUnk_70.id    = ref->id;
        mUnk_1f8.mUnk_70.index = ref->index;
    } else {
        mUnk_1f8.mUnk_70.Reset();
    }
}

// non-matching
ARM bool ActorCharacter::vfunc_90(unk32 param1, unk32 param2) {
    u32 iVar1;
    u32 iVar2;

    if (!mUnk_1c2) {
        this->func_ov014_021453f4((unk8) param1);
        mUnk_430.mUnk_0c = param2;
        if (mUnk_1b8 == NULL) {
            mUnk_1b8 = func_ov014_02145520;
            mUnk_1bc = this;
        }
        mUnk_450 = mUnk_420.mUnk_00[mUnk_420.mUnk_08];
        iVar2    = mUnk_458;
        iVar1    = 1;
        if (iVar2 != -1) {
            mUnk_458 = -1;
            iVar1    = iVar2;
        }
        mUnk_1d8.func_ov014_02145f0c(iVar1);
        mUnk_1c2 = true;
    }

    bool result = mUnk_1b8 != func_ov014_02145520;
    if (result) {
        mUnk_1c2 = false;
        mUnk_1d8.func_ov014_02145f0c(mUnk_450);
    }
    return result;
}

// non-matching
ARM void ActorCharacter::vfunc_94(unk32 param1, unk32 param2) {
    ActorCharacter_430_04 *unk1;
    ActorCharacter_430_04_04 *unk2;

    this->func_ov014_021453f4((unk8) param1);
    unk1 = mUnk_430.mUnk_04;
    if (param2 == 0) {
        unk2 = &unk1->mUnk_04[unk1->mUnk_00[1] - 1];
    } else {
        unk2 = &unk1->mUnk_04[0];
    }
    Vec3p vec;
    vec.x      = unk2->mUnk_04.x;
    vec.y      = unk2->mUnk_04.y;
    vec.z      = unk2->mUnk_04.z;
    mPos.x     = vec.x;
    mPos.y     = vec.y;
    mPos.z     = vec.z;
    mPrevPos.x = vec.x;
    mPrevPos.y = vec.y;
    mPrevPos.z = vec.z;
}

ARM bool ActorCharacter::vfunc_98() {
    mUnk_1c3 = true;
    mUnk_44c = mUnk_420.mUnk_00[mUnk_420.mUnk_08];
    return mUnk_1d8.func_ov014_02145f0c(0);
}

ARM void ActorCharacter::vfunc_d0() {
    mUnk_1d8.func_ov014_02145cac();
}

ARM bool ActorCharacter::vfunc_9c() {
    mUnk_1c3 = false;
    return mUnk_1d8.func_ov014_02145f0c(mUnk_44c);
}

ARM void ActorCharacter::vfunc_ec(unk32 param1) {
    mUnk_1d8.func_ov014_02145f0c(param1);
    mUnk_46c[0] |= 1;
    if (mUnk_1d8.mUnk_10->mUnk_0c.mUnk_00 == 1) {
        mUnk_454 = param1;
    }
}

ARM void ActorCharacter::vfunc_f0(unk32 param1, unk32 param2) {
    mUnk_1d8.func_ov014_02145f0c(param1 ? 2 : 0);
}

ARM void ActorCharacter::func_ov014_0214591c() {
    if ((mUnk_46c[0] & 1U) == 0) {
        bool unk = data_ov000_020e8b08 == NULL || mRef.id == data_ov000_020e8b08->mUnk_20[data_ov000_020e8b08->mUnk_55].id;
        mUnk_1d8.func_ov014_02145f0c(unk ? 2 : 0);
    }
}

struct UnkStruct_ov014_02145974 {
    /* 00 */ PAD(0x00, 0x18);
    /* 18 */ Cylinder mUnk_18;
    /* 28 */ Cylinder mUnk_28;
    /* 38 */
};

ARM bool ActorCharacter::IsHitboxTouched(bool param1) {
    UnkStruct_ov014_02145974 sp_0;
    {
        sp_0.mUnk_28.size = (mYOffset + (mYOffset << 1)) >> 3;
        Vec3p pos         = {mPos.x, mPos.y, mPos.z};
        sp_0.mUnk_28.pos  = pos;
        sp_0.mUnk_28.pos.y += mYOffset >> 1;
    }
    {
        sp_0.mUnk_18.size = FLOAT_TO_Q20(0.3);
        Vec3p pos         = {mPos.x, mPos.y, mPos.z};
        sp_0.mUnk_18.pos  = pos;
        sp_0.mUnk_18.pos.y += mYOffset + FLOAT_TO_Q20(0.3);
    }

    if (param1) {
        return TouchControl::func_0202b864(&sp_0.mUnk_28.pos, sp_0.mUnk_28.size, 8) ||
               TouchControl::func_0202b864(&sp_0.mUnk_18.pos, sp_0.mUnk_18.size, 8);
    } else {
        return TouchControl::func_0202b894(&sp_0.mUnk_28.pos, sp_0.mUnk_28.size, 8) ||
               TouchControl::func_0202b894(&sp_0.mUnk_18.pos, sp_0.mUnk_18.size, 8);
    }
}
