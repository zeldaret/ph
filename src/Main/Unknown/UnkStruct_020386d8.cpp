#include "Actor/ActorManager.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/Random.hpp"
#include "Unknown/UnkStruct_02037750.hpp"

// non-matching
ARM UnkStruct_020386d8::UnkStruct_020386d8() :
    UnkStruct_02037750(1 << 24, 0) {
    this->mUnk_20 = -1;
    this->mUnk_24.func_020376c0(&gVec3p_ZERO);
}

ARM void UnkStruct_020386d8::vfunc_08(u32 param1) {
    this->UnkStruct_02037750::vfunc_08(param1);
    this->mUnk_20 = 0xff;
}

ARM bool UnkStruct_020386d8::vfunc_24(unk32 param1) {
    return this->func_020385d0(param1, &this->mUnk_24.mUnk_00) != 0;
}

ARM unk32 UnkStruct_020386d8::vfunc_28(s32 param1) {
    this->mUnk_20 = this->UnkStruct_02037750::vfunc_28(param1);
    return this->mUnk_20;
}

ARM bool UnkStruct_020386d8::vfunc_30() {
    return gMessageManager.func_020366c4()->mUnk_15c <= 0;
}

ARM UnkStruct_020386d8::~UnkStruct_020386d8() {}
