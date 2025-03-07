#include "Unknown/UnkStruct_02035064.hpp"

ARM UnkStruct_02035064::UnkStruct_02035064() {
    this->mUnk_74 = NULL;
    this->mUnk_78 = NULL;
    this->mUnk_7c = 0;
    this->mUnk_80 = 0;
    this->mUnk_82 = 0;
    this->mUnk_84 = 0;
    this->mUnk_86 = 0;
    this->mUnk_87 = 0;
}

ARM UnkStruct_02035064::~UnkStruct_02035064() {}

ARM void UnkStruct_02035064::func_020350b0() {}

ARM void UnkStruct_02035064::func_020350b4(s32 param1, unk32 param2, unk8 param3, unk16 param4, unk16 param5) {}

ARM void UnkStruct_02035064::func_0203516c() {
    if (this->mUnk_78 != 0x0) {
        if (this->mUnk_86 == false) {
            this->mUnk_5c.func_0202e1e8();
            this->func_020352d8();
        } else {
            this->mUnk_86 = false;
        }
    }
}

ARM s32 UnkStruct_02035064::vfunc_00() {
    return this->mUnk_4c;
}

ARM s32 UnkStruct_02035064::vfunc_04() {
    return this->mUnk_4e;
}

ARM void UnkStruct_02035064::func_020351b8(bool param1, bool param2, bool param3, bool param4) {}
ARM void UnkStruct_02035064::func_020352d8() {}
