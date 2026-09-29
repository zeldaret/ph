#include "Actor/Character/ActorCharacter.hpp"

extern "C" void func_ov014_0214c5c8(unk32 p0, unk32 p1, unk32 p2, unk32 p3, unk32 p4);
extern "C" unk32 func_ov014_0214c948(unk32 p0, Vec3p* p1, u16* p2, unk32 p3, unk32 p4);

#define static

ActorGenericCharacter::ActorGenericCharacter() {}
bool ActorGenericCharacter::Init() {
    ActorCharacter::Init();

    mUnk_120 = u8(-1);

    switch (mUnk_020.mUnk_00[0]) {
        case 0: mUnk_46c[1] = 0; break;
        case 1: mUnk_46c[1] = 1; break;
        case 2: mUnk_46c[1] = 2; break;
        case 3: mUnk_46c[1] = 3; break;
        case 4: mUnk_46c[1] = 4; break;
        case 5: mUnk_46c[1] = 5; break;
    }

    if (!vfunc_f4()) {
        return false;
    }

    ActorGenericCharacter::func_ov014_02147ce8(&mUnk_474, 0);

    if (ActorCharacter::func_ov014_02144e58() || !ActorCharacter::func_ov014_02144e28()) {
        func_ov014_02147950();
    }

    return true;
}

void ActorGenericCharacter::vfunc_68(unk32, UnkStruct_020397f8*) {
    ActorGenericCharacter::func_ov014_02147d44(&mUnk_474, 2);
}

bool ActorGenericCharacter::vfunc_c0() {
    return ActorCharacterBase::vfunc_c0() || mUnk_484 == 5;
}

void ActorGenericCharacter::vfunc_c4() {
    if (ActorCharacter::func_ov014_02144e28() && !ActorCharacter::func_ov014_02144e58()) {
        ActorGenericCharacter::func_ov014_02147d44(&mUnk_474, 0);
    }

    if ((s32)mInactive >= 1) {
        if (mUnk_46c[1] == 2 && mUnk_020.mUnk_00[2] == 0 && ActorCharacter::func_ov014_02144e3c()) {
            mAlive = false;
            return;
        }

        if (mUnk_484 != 0) {
            mAngle = mUnk_012;
            mUnk_1d8.mUnk_020.mUnk_8d = 0; 
            return;
        }
    }

    mPrevPos = mPos;

    ((ActorGenericCharacter*)&mUnk_474)->func_ov014_02147c98();
    
    mUnk_1d8.func_ov014_02145cac();
    
    if (mUnk_484 != 0) {
        func_ov014_02145178();
    }
}

void ActorGenericCharacter::func_ov014_02147940() {
    mVisible = false;
    mUnk_12c = 0;
}

void ActorGenericCharacter::func_ov014_02147950() {
    mVisible = true;
    mUnk_12c = 5;

    switch (mUnk_46c[1]) {
        case 0:
            func_ov014_02147ce8(&mUnk_474, mUnk_46c[1]);
            break;

        case 1:
            if (ActorCharacter::func_ov014_02144e3c()) { mAlive = false; return; }
            func_ov014_02147ce8(&mUnk_474, 3);
            break;

        case 2:
            if (ActorCharacter::func_ov014_02144e3c()) { mAlive = false; return; }
            func_ov014_02147ce8(&mUnk_474, 1);
            break;

        case 3:
            if (ActorCharacter::func_ov014_02144e3c()) {
                func_ov014_02147c00();
                func_ov014_02147ce8(&mUnk_474, 6);
            } else {
                func_ov014_02147ce8(&mUnk_474, 1);
            }
            break;

        case 4:
            if (ActorCharacter::func_ov014_02144e3c()) { mAlive = false; return; }
            func_ov014_02147ce8(&mUnk_474, 1);
            break;

        default:
            func_ov014_02147ce8(&mUnk_474, 1);
            break;
    }
}

void ActorGenericCharacter::vfunc_80() {
    if (mUnk_484 == 0 && 
        (ActorCharacter::func_ov014_02144e58() || !ActorCharacter::func_ov014_02144e28())) {
        func_ov014_02147950();
    }
    ActorCharacter::vfunc_80();
}

void ActorGenericCharacter::vfunc_84() {
    ActorCharacter::vfunc_84();

    if (!ActorCharacter::func_ov014_02144e28() || ActorCharacter::func_ov014_02144e58()) {
        return;
    }

    ActorGenericCharacter::func_ov014_02147d44(&mUnk_474, 0);
}

void ActorGenericCharacter::func_ov014_02147ae8() {
    func_ov014_0214c5c8(
        (unk32)(this + 1),
        (unk32)this,
        (u8)mUnk_020.mUnk_00[2],
        mUnk_496,
        mUnk_498
    );
}

bool ActorGenericCharacter::func_ov014_02147b18() {
    Vec3p tempVector;

    typedef void (*AnimFunc)(void*, Vec3p*);
    void* animPtr = *(void**)((u8*)this + 0x1f4);
    unk32* vtable = *(unk32**)animPtr;
    ((AnimFunc)vtable[13])(animPtr, &tempVector);

    void* animPtr2 = *(void**)((u8*)this + 0x1f4);

    mUnk_1d8.mUnk_020.func_ov014_0214a92c(
        &tempVector,
        (Vec3p*)((u8*)animPtr2 + 0x48),
        *(s16*)((u8*)animPtr2 + 0x78)
    );

    unk32 result = func_ov014_0214c948(
        (unk32)(this + 1),
        &mPos,
        (u16*)&mAngle,
        mUnk_464,
        0xaab
    );

    func_01fffd04(0);

    return (result != 0) || mUnk_112;
}


void ActorGenericCharacter::func_ov014_02147ba0() {}
bool ActorGenericCharacter::func_ov014_02147bb0() {}
unk32 ActorGenericCharacter::func_ov014_02147bd8() {}
void ActorGenericCharacter::func_ov014_02147c00() {}

ActorGenericCharacter::~ActorGenericCharacter() {}
void ActorGenericCharacter::vfunc_f8() {}

void ActorGenericCharacter::func_ov014_02147c98() {}
void ActorGenericCharacter::func_ov014_02147ce8(void* param1, unk32 param2) {}
void ActorGenericCharacter::func_ov014_02147d44(void* param1, unk32 param2) {}
static void func_ov014_02147df0(ActorGenericCharacter *actor) {}

void ActorGenericCharacter::func_ov014_02147dfc() {}
void ActorGenericCharacter::func_ov014_02147e1c() {}
void ActorGenericCharacter::func_ov014_02147e64() {}
void ActorGenericCharacter::func_ov014_02147ebc() {}
static void func_ov014_02147ed8(ActorGenericCharacter *actor) {}

void ActorGenericCharacter::func_ov014_02147ee4() {}
void ActorGenericCharacter::func_ov014_02147fbc() {}
void ActorGenericCharacter::func_ov014_02147fcc() {}
void ActorGenericCharacter::func_ov014_021480dc() {}
void ActorGenericCharacter::func_ov014_02148130() {}
void ActorGenericCharacter::func_ov014_0214813c() {}
void ActorGenericCharacter::func_ov014_02148168() {}
void ActorGenericCharacter::func_ov014_02148198() {}
void ActorGenericCharacter::func_ov014_021481cc() {}
void ActorGenericCharacter::func_ov014_021481fc() {}
static void func_ov014_02148228(ActorGenericCharacter *actor) {}
