#include "Actor/Dungeon/ActorSwitchObject.hpp"

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
bool ActorSwitchObject::func_ov000_0208fc10(s32 param1) {}
void ActorSwitchObject::func_ov000_0208fc7c() {}
bool ActorSwitchObject::func_ov000_0208fcb4() {}
void ActorSwitchObject::func_ov000_0208fef8() {}
void ActorSwitchObject::func_ov000_0209032c() {}
ActorSwitchObject::~ActorSwitchObject() {}
