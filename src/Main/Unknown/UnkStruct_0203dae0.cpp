#include "Unknown/UnkStruct_0203dae0.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_02075dac.hpp"

extern u32 *data_027e0ce0[];
extern "C" void Fill256(unk32, unk16 *, unk32, unk32);
extern "C" void func_0203fc78(u8, unk32 *, unk32 *);
extern "C" u16 func_0203d318(unk32, unk32);
extern "C" void func_020298b8(unk32 *, unk32, unk32, unk32, unk32);
extern "C" void func_02029830(unk32 *, unk32, unk32, unk32, unk32);
extern "C" unk32 func_0203d400(u8);
extern "C" void func_02035440(u8);

// non-matching
THUMB UnkStruct_0203dae0::UnkStruct_0203dae0(u8 param1) {
    this->mUnk_114 = NULL;
    this->mUnk_118 = -1;
    this->mUnk_11c = 0;
    this->mUnk_11e = 0;
    this->mUnk_11f = 0;
    this->mUnk_120 = 1;
    this->mUnk_121 = param1;
    this->mUnk_122 = 0;

    Fill256(0, &this->mUnk_54, 0xC0, 1);

    if (this->mUnk_121 == 0) {
        this->mUnk_114 = new(data_027e0ce0[1], 4) UnkStruct_0203dae0_114();
    } else {
        this->mUnk_114 = new(data_027e0ce0[1], 4) UnkStruct_0203dae0_114();
    }
}

THUMB UnkStruct_0203dae0::~UnkStruct_0203dae0() {
    if (this->mUnk_114 != NULL) {
        delete this->mUnk_114;
        this->mUnk_114 = NULL;
    }
}

// non-matching (regalloc)
ARM void UnkStruct_0203dae0::func_0203dc10(s32 param1) {
    if (param1 != 0) {
        if (this->mUnk_11c == 0x0) {
            return;
        }

        if (this->mUnk_114->vfunc_08(this) != 0) {
            this->mUnk_10 = this->mUnk_114->func_0203d1b4();
        }
    } else {
        this->mUnk_114->vfunc_0c();
    }

    this->mUnk_122 = param1;
}

ARM bool UnkStruct_0203dae0::func_0203dc74(s32 param1, s32 param2) {
    this->func_0203ddfc();
    this->vfunc_14(param1, param2);
    this->mUnk_11c = 0;
    return true;
}

ARM bool UnkStruct_0203dae0::vfunc_14(s32 param1, s32 param2) {
    unk32 local_c;
    unk32 local_10;

    local_c  = param1;
    local_10 = param2;

    func_0203fc78(this->func_02032fa4(), &local_c, &local_10);
    this->UnkStruct_02032f0c::vfunc_14(local_c, local_10);
    this->mUnk_10 = 0;
    return true;
}

// non-matching
ARM void UnkStruct_0203dae0::func_0203dcfc(u8 param1, unk32 param2, unk32 param3, s32 param4) {
    unk32 *uVar5;

    this->mUnk_50 = param1;
    this->vfunc_14(this->mUnk_4a, this->mUnk_4c);
    this->mUnk_11c = func_0203d318(this->mUnk_10[0x1], this->mUnk_10[0x2]);
    this->func_0203dc10(1);

    if (func_0203d400(this->UnkStruct_02032f0c::func_02032fa4()) != 0x0) {
        uVar5 = this->func_0203ddec();
        func_020298b8(this->mUnk_10, *uVar5, this->mUnk_10[0x1], this->mUnk_10[0x2], 0x4);
    } else {
        uVar5 = this->func_0203ddec();
        func_02029830(this->mUnk_10, *uVar5, this->mUnk_10[0x1], this->mUnk_10[0x2], 0x4);
    }

    this->mUnk_28 = this->mUnk_10;
    this->mUnk_2c = this->mUnk_2c; // this->mUnk_2c = &(UnkStruct_MsgProc_Base_unk_2C*)this->mUnk_10;
    this->mUnk_30 = param4;
    this->mUnk_34 = 3;
    this->vfunc_10(param3, 3);

    this->func_0203de58(param2);
}

ARM unk32 *UnkStruct_0203dae0::func_0203ddec() {
    return this->mUnk_114->func_0203d1b4();
}

ARM void UnkStruct_0203dae0::func_0203ddfc() {
    this->mUnk_114->mUnk_04 = 0;
    this->mUnk_11c          = 0;
}

ARM void UnkStruct_0203dae0::func_0203de14() {
    //! TODO: class?
    func_02035440(this->mUnk_50);
}

// non-matching
ARM s32 UnkStruct_0203dae0::func_0203de24() {
    if (func_0203d400(this->UnkStruct_02032f0c::func_02032fa4()) == 0x0) {
        return this->mUnk_10[5] * this->mUnk_10[6] * 0x20;
    }

    return this->mUnk_10[6] << 0xa;
}

ARM bool UnkStruct_0203dae0::func_0203de58(s32 param1) {}

ARM void UnkStruct_0203dae0::vfunc_10(u32 param1, unk32 param2) {
    this->func_0203dc10(1, param2);
    this->mUnk_11e = param1;
    this->mUnk_118 = -1;
    this->UnkStruct_02032f0c::vfunc_10(param1, -1);
}

ARM void UnkStruct_0203dae0::vfunc_30() {
    unk32 iVar2;

    iVar2          = this->mUnk_118;
    this->mUnk_118 = data_02075dac.func_0203f9b8(this);

    if (this->mUnk_118 == iVar2) {
        return;
    }

    this->func_0203dc10(1);
}

ARM bool UnkStruct_0203dae0::vfunc_28() {
    if (this->mUnk_122 != 0) {
        this->func_0203e0f8();
        this->func_0203dc10(0);
        return true;
    }

    return false;
}

ARM bool UnkStruct_0203dae0::func_0203e0f8() {}

ARM void UnkStruct_0203dae0::vfunc_2c() {
    this->vfunc_30();
}

ARM bool UnkStruct_0203dae0::func_0203e1b0(unk32 param1, unk32 param2, s32 param3) {}

ARM unk32 UnkStruct_0203dae0::vfunc_18(s32 param1) {
    unk32 iVar1;

    iVar1 = this->UnkStruct_02032f0c::vfunc_18(param1);

    if (iVar1 != 0) {
        this->func_0203dc10(1);
    }

    return iVar1;
}

ARM void UnkStruct_0203dae0::vfunc_08(s32 param1, unk32 param2, s16 *param3, unk32 param4) {
    this->func_0203dc10(1);
    this->UnkStruct_02032f0c::vfunc_08(param1, param2, param3, param4);
}

ARM void UnkStruct_0203dae0::func_0203e2e8(s32 param1, s32 param2, unk32 param3, u32 param4) {}
ARM void UnkStruct_0203dae0::func_0203e510(s32 *param1, s32 param2, s32 param3) {}
ARM void UnkStruct_0203dae0::func_0203e62c(s32 *param1, s32 param2) {}
ARM bool UnkStruct_0203dae0::func_0203e6e4(u32 param1, u32 param2, s32 param3) {}
