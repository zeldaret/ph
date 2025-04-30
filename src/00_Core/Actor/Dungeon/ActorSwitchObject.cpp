#include "Actor/Dungeon/ActorSwitchObject.hpp"
#include "Map/MapManager.hpp"

ActorType ActorSwitchObject::gType = ActorType(ActorTypeId_SwitchObject, (ActorCreateFunc) ActorSwitchObject::Create, NULL);

ActorSwitchObject *ActorSwitchObject::Create() {}

bool ActorSwitchObject::vfunc_08() {
    Actor::vfunc_08();
    this->func_ov000_0208fc7c();
    this->mUnk_130 = 0;
    return true;
}

bool ActorSwitchObject::vfunc_0c() {
    return this->func_ov00_020c1bfc(0) ? this->func_ov000_0208fc10(1) : this->func_ov000_0208fc10(0);
}

void ActorSwitchObject::vfunc_14(u32 param1) {}
void ActorSwitchObject::vfunc_18(u32 param1) {}

bool ActorSwitchObject::func_ov000_0208fc10(s32 param1) {
    this->mUnk_130 = param1;

    switch (param1) {
        case 0: this->func_ov00_020c1c20(0, 0); break;
        case 1:
            this->func_ov00_020c1c20(0, 1);
            if (this->mUnk_158 == 0) {
                this->mAlive = false;
            }
            break;
        case 2:
            this->func_ov000_0208fef8();
            this->mActiveFrames = 0;
            break;
    }

    return true;
}

void ActorSwitchObject::func_ov000_0208fc7c() {
    this->mUnk_158 = this->mUnk_020.mUnk_00[1];
    this->mUnk_15c = this->mUnk_020.mUnk_00[2];
    this->mUnk_164 = this->mUnk_020.mUnk_0a[1];
    this->mUnk_168 = this->mUnk_164 + this->mUnk_020.mUnk_00[0];
    this->mUnk_16c = this->mUnk_020.mUnk_08[1];
    this->mUnk_160 = this->mUnk_164;
}

bool ActorSwitchObject::func_ov000_0208fcb4() {}
void ActorSwitchObject::func_ov000_0208fef8() {}

void ActorSwitchObject::func_ov000_0209032c() {
    unk32 i;
    for (i = this->mUnk_164; i < this->mUnk_168; i++) {
        gMapManager->func_ov00_02084b38(i, this->mUnk_16c, 0);
    }
}

ActorSwitchObject::~ActorSwitchObject() {}
