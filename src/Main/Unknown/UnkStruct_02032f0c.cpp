#include "Unknown/UnkStruct_02032f0c.hpp"
#include "Unknown/UnkStruct_02035064.hpp"

extern "C" void Fill32(unk32, void *, unk32);
extern "C" void Fill16(unk32, void *, unk32);
extern "C" void func_020296e0(unk32 **, UnkStruct_MsgProc_Base_unk_2C **, unk32, unk32, unk32, unk32);
extern THUMB unk32 func_0202ab48(void);

ARM UnkStruct_02032e7c::UnkStruct_02032e7c() {
    this->mUnk_04 = NULL;
    this->mUnk_08 = 0;
    this->mUnk_0a = 0;
    this->mUnk_0c = 0;
    this->mUnk_0e = 0;

    if (func_0202ab48() == 0) {
        this->mUnk_10 = 2;
    } else {
        this->mUnk_10 = 3;
    }
}

THUMB UnkStruct_02032f0c::UnkStruct_02032f0c() {
    this->mUnk_04 = 0;
    this->mUnk_08 = 0;
    this->mUnk_0c = NULL;
    this->mUnk_38 = 0;
    this->mUnk_3c = 0;
    this->mUnk_4a = 0;
    this->mUnk_4c = 0;
    this->mUnk_4d = 0;
    this->mUnk_4e = 0;
    this->mUnk_4f = 0;
    this->mUnk_50 = 0;
    this->mUnk_51 = 0;
    Fill32(0, &this->mUnk_10, 0x18);
    Fill32(0, &this->mUnk_28, 0x10);
    Fill16(0, &this->mUnk_3e, 0xC);
    this->mUnk_10 = NULL;
    this->mUnk_2c = NULL;
    this->mUnk_30 = 2;
    this->mUnk_34 = 3;
}

THUMB UnkStruct_02032f0c::~UnkStruct_02032f0c() {}

ARM void UnkStruct_02032f0c::func_02032f94() {}

ARM u16 **UnkStruct_02032f0c::SetUnk_0c(u16 *value) {
    this->mUnk_0c = value;
    return &this->mUnk_0c;
}

ARM u8 UnkStruct_02032f0c::func_02032fa4() {
    return UnkStruct_02035064::func_02035428(this->mUnk_50);
}

ARM s32 UnkStruct_02032f0c::func_02032fb4() {
    return this->mUnk_2c[0]->mUnk_01 + this->mUnk_34;
}

// non-matching
ARM bool UnkStruct_02032f0c::vfunc_14(s32 param1, s32 param2) {
    s16 iVar1;
    s16 iVar2;

    iVar1         = ((param1 + 0x7 + ((param1 + 0x7) >> 0x1D))) * 0x8;
    iVar2         = ((param2 + 0x7 + ((param2 + 0x7) >> 0x1D))) * 0x8;
    this->mUnk_4a = param1;
    this->mUnk_4c = param2;
    this->mUnk_14 = (iVar1 + (iVar1 >> 0x1D)) * 0x2000 >> 0x10;
    this->mUnk_18 = (iVar2 + (iVar2 >> 0x1D)) * 0x2000 >> 0x10;

    return true;
}

ARM void UnkStruct_02032f0c::vfunc_08(s32 param1, unk32 param2, s16 *param3, unk32 param4) {}

ARM void UnkStruct_02032f0c::vfunc_0c(unk32 param1, unk32 param2, unk32 param3, unk32 param4) {
    func_020296e0(&this->mUnk_10, this->mUnk_2c, param1, param2, param4, param3);
}

ARM void UnkStruct_02032f0c::vfunc_10(u32 param1, unk32 param2) {}
ARM void UnkStruct_02032f0c::func_02033214(unk32 param1, unk32 param2, unk32 param3, u8 param4, unk32 param5) {}
ARM unk32 UnkStruct_02032f0c::vfunc_18(s32 param1) {}
ARM unk32 UnkStruct_02032f0c::vfunc_1c(s32 param1, unk32 *param2, unk32 param3, unk32 param4) {}
ARM unk32 UnkStruct_02032f0c::vfunc_20(s32 param1, s32 *param2) {}
ARM void UnkStruct_02032f0c::func_020334b4(u32 param1, s32 param2, s32 param3, s32 param4) {}
ARM void UnkStruct_02032f0c::func_02033628(unk32 param1, u16 *param2) {}
ARM u32 UnkStruct_02032f0c::func_0203369c(u16 *param1, s32 param2) {}
ARM void UnkStruct_02032f0c::func_02033780(s32 param1) {}

ARM s32 UnkStruct_02032f0c::func_020337d8(s32 param1) {
    return this->mUnk_2c[0]->mUnk_08[1] * param1 + (param1 - 1) * this->mUnk_34;
}

ARM s32 UnkStruct_02032f0c::func_020337fc(s16 *param1, s32 param2) {}
ARM void UnkStruct_02032f0c::func_020338a8(s32 param1, unk32 param2) {}
ARM void UnkStruct_02032f0c::func_020338d0(unk32 *param1, unk32 param2) {}
ARM s32 UnkStruct_02032f0c::func_02033904(unk32 param1, unk32 param2) {}
ARM s32 UnkStruct_02032f0c::func_02033938(unk32 param1) {}
ARM s32 UnkStruct_02032f0c::func_0203396c(u16 *param1) {}
ARM bool UnkStruct_02032f0c::vfunc_24(s16 **param1) {}
ARM u16 *UnkStruct_02032f0c::func_02033b0c(s32 param1) {}
ARM bool UnkStruct_02032f0c::func_02033c6c() {}
ARM unk32 UnkStruct_02032f0c::func_02033c88(u32 param1) {}
ARM s32 UnkStruct_02032f0c::func_02033cbc(s16 *param1) {}

ARM UnkStruct_02032e7c::~UnkStruct_02032e7c() {}
