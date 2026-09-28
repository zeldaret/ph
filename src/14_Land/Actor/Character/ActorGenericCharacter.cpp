#include "Actor/Character/ActorCharacter.hpp"

#define static

ActorGenericCharacter::ActorGenericCharacter() {}
bool ActorGenericCharacter::Init() {}
void ActorGenericCharacter::vfunc_68(unk32 param1, UnkStruct_020397f8 *param2) {}
bool ActorGenericCharacter::vfunc_c0() {
    if (ActorCharacterBase::vfunc_c0() || this->mUnk_484 == 5) {
        return true;
    }
    return false;
}

void ActorGenericCharacter::vfunc_c4() {
    if (ActorCharacter::func_ov014_02144e28() && !ActorCharacter::func_ov014_02144e58()) {
        ActorGenericCharacter::func_ov014_02147d44(&this->mUnk_474, 0);
    }

    if ((s32)this->mInactive < 1) {
        goto label_8c;
    } else {
        if (this->mUnk_46c[1] == 2 && this->mUnk_020.mUnk_00[2] == 0) {
            if (ActorCharacter::func_ov014_02144e3c()) {
                this->mAlive = false;
                return;
            }
        }
    }

    if (this->mUnk_484 != 0) {
        this->mAngle = this->mUnk_012;
        this->mUnk_1d8.mUnk_020.mUnk_8d = 0; 
        return;
    }

label_8c:
    this->mPrevPos = this->mPos;

    ActorGenericCharacter* subCharacter = (ActorGenericCharacter*)&this->mUnk_474;
    subCharacter->func_ov014_02147c98();
    
    this->mUnk_1d8.func_ov014_02145cac();
    
    if (this->mUnk_484 == 0) {
        return;
    }
    
    this->func_ov014_02145178();
}

void ActorGenericCharacter::func_ov014_02147940() {
    this->mVisible = false;
    this->mUnk_12c = 0;
}

void ActorGenericCharacter::func_ov014_02147950() {}
void ActorGenericCharacter::vfunc_80() {}
void ActorGenericCharacter::vfunc_84() {}

void ActorGenericCharacter::func_ov014_02147ae8() {}
bool ActorGenericCharacter::func_ov014_02147b18() {}
void ActorGenericCharacter::func_ov014_02147ba0() {}
bool ActorGenericCharacter::func_ov014_02147bb0() {}
unk32 ActorGenericCharacter::func_ov014_02147bd8() {}
void ActorGenericCharacter::func_ov014_02147c00() {}

ActorGenericCharacter::~ActorGenericCharacter() {}
void ActorGenericCharacter::vfunc_f8() {}

void ActorGenericCharacter::func_ov014_02147c98() {}
void ActorGenericCharacter::func_ov014_02147ce8(unk32 param1) {}
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
