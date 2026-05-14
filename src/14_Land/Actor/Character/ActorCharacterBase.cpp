#include "Actor/Character/ActorCharacter.hpp"
#include "Message/MessageManager.hpp"
#include "Save/AdventureFlags.hpp"

ARM static unk32 func_ov014_021447f8(void *actor, unk32 param2) {
    return ((ActorCharacterBase *) actor)->vfunc_d8(param2);
}

ARM static unk32 func_ov014_0214480c(void *actor, unk32 param2) {
    return ((ActorCharacterBase *) actor)->vfunc_dc(param2);
}

ARM static unk32 func_ov014_02144820(void *actor, unk32 param2) {
    return ((ActorCharacterBase *) actor)->vfunc_e0(param2);
}

ARM static unk32 func_ov014_02144834(void *actor, unk32 param2) {
    return ((ActorCharacterBase *) actor)->vfunc_e4(param2);
}

struct UnkStruct_ov014_02144848_1 {
    /* 00 */ PAD(0x00, 0x03);
    /* 03 */ u8 mUnk_03;
    /* 04 */ u16 mUnk_04;
    /* 06 */ u16 mUnk_06;
    /* 08 */

    u32 Unk1() {
        return mUnk_04 | (mUnk_03 << 16);
    }
};

struct UnkStruct_ov014_02144848 {
    /* 00 */ UnkStruct_ov014_02144848_1 *mUnk_00;
    /* 08 */
};

static UnkStruct_ov014_021448f4 func_ov014_02144848(UnkStruct_ov014_02144848 param4, ActorCharacterBase *actor) {
    u32 uVar1 = param4.mUnk_00->Unk1();

    switch (uVar1) {
        case 0xfe0001:
        case 0xfe0002:
        case 0xfe0003:
        case 0xfe0004:
        case 0xfe0005:
        case 0xfe0006:
        case 0xfe0007:
        case 0xfe0008:
            return actor->vfunc_e8(param4.mUnk_00->mUnk_06, (u16) (uVar1 - 0xfe0000));
            break;
        default:
            return UnkStruct_ov014_021448f4();
    }
}

ARM unk8 ActorCharacterBase::vfunc_d8(ActorCharacterBase_vfunc_d8 *param1) {
    return 0;
}

ARM unk8 ActorCharacterBase::vfunc_dc(ActorCharacterBase_vfunc_d8 *param1) {
    return 0;
}

ARM unk8 ActorCharacterBase::vfunc_e0(ActorCharacterBase_vfunc_d8 *param1) {
    return 0;
}

ARM unk32 ActorCharacterBase::vfunc_e4(unk32 param1) {
    return 0;
}

ARM UnkStruct_ov014_021448f4 ActorCharacterBase::vfunc_e8(u16 param2, u16 param3) {
    return UnkStruct_ov014_021448f4();
}

ARM ActorCharacterBase::ActorCharacterBase() :
    mUnk_158(0x1000000),
    mUnk_1b4(-1),
    mUnk_1b8(0),
    mUnk_1c0(0),
    mUnk_1c1(0),
    mUnk_1c2(0),
    mUnk_1c3(0) {}
ARM ActorCharacterBase::~ActorCharacterBase() {
    if (gMessageManager.mUnk_20[0] == &mUnk_158) {
        gMessageManager.func_02036d4c(&mUnk_158);
    }
}

ARM bool ActorCharacterBase::Init() {
    mUnk_12c               = 5;
    mUnk_158.mUnk_20.id    = mRef.id;
    mUnk_158.mUnk_20.index = mRef.index;
    mUnk_158.mUnk_04[0]    = func_ov014_021447f8;
    mUnk_158.mUnk_04[1]    = func_ov014_0214480c;
    mUnk_158.mUnk_04[2]    = func_ov014_02144820;
    mUnk_158.mUnk_04[3]    = func_ov014_02144834;
    mUnk_158.mUnk_14       = this;
    mUnk_158.mUnk_44       = (unk32) func_ov014_02144848; // TODO: Set type of mUnk_44 after matching func_ov014_02144848
    mUnk_158.mUnk_48       = this;
    return true;
}

ARM void ActorCharacterBase::vfunc_14(u32 param1) {
    if (this->func_ov00_020c313c(param1)) {
        mPrevPos.x = mPos.x;
        mPrevPos.y = mPos.y;
        mPrevPos.z = mPos.z;
        this->func_ov00_020c1cf8();
        this->vfunc_c4();
    }
    mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
    this->vfunc_b8();
}

ARM bool ActorCharacterBase::vfunc_c0() {
    UnkStruct_02037750 *callback = gMessageManager.mUnk_20[0];
    bool result                  = true;
    if (mUnk_11c == false && callback != &mUnk_158) {
        bool unk = mUnk_1b4 != -1 && gAdventureFlags->func_ov00_02097b9c(mUnk_1b4);
        if (!unk) {
            result = false;
        }
    }
    return result;
}

ARM void ActorCharacterBase::vfunc_18(u32 param1) {
    if (this->func_ov00_020c313c(param1)) {
        mPrevPos.x = mPos.x;
        mPrevPos.y = mPos.y;
        mPrevPos.z = mPos.z;
        mInactive  = false;
        if (mUnk_1c0) {
            if (mUnk_1b8 != NULL) {
                if (mUnk_1b8(mUnk_1bc) == 0) {
                    mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
                    return;
                }
                mUnk_1b8 = NULL;
            }
            this->vfunc_c8();
            this->vfunc_cc();
            mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
            return;
        };
        if (this->vfunc_c0()) {
            if (mUnk_1b8 != NULL) {
                if (mUnk_1b8(mUnk_1bc) == 0) {
                    mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
                    return;
                }
                mUnk_1b8 = NULL;
            }
            this->vfunc_c4();
            this->vfunc_cc();
        } else {
            if (mUnk_1c3) {
                this->vfunc_d0();
            }
        }
    }
    mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
    if ((gMessageManager.mUnk_04 == false || gAdventureFlags->func_ov00_02097738()) && !mUnk_1c1) {
        return;
    }
    this->vfunc_b8();
}

ARM unk32 ActorCharacterBase::vfunc_d4() {
    return mUnk_020.mUnk_10;
}

ARM void ActorCharacterBase::vfunc_b4() {
    gMessageManager.func_02036ce4(&mUnk_158, this->vfunc_d4());
}

ARM void ActorCharacterBase::vfunc_b8() {
    mUnk_158.vfunc_10();
}

ARM void ActorCharacterBase::vfunc_80() {
    mUnk_1c0 = true;
}

ARM void ActorCharacterBase::vfunc_84() {
    mUnk_1c0 = false;
}

ARM void ActorCharacterBase::vfunc_cc() {}
ARM void ActorCharacterBase::vfunc_c8() {}
ARM void ActorCharacterBase::vfunc_d0() {}
ARM void ActorCharacterBase::vfunc_68(unk32 param1, UnkStruct_020397f8 *param2) {}

bool ActorCharacterBase::vfunc_bc() {
    return (mUnk_158.mUnk_18 & 0xffff0000) == 0x1000000;
}
