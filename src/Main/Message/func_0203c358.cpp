#include "DTCM/UnkStruct_027e103c.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/SysNew.hpp"
#include "global.h"

extern "C" void func_0203fc78(unk32 *, unk32 *);

THUMB MsgProc_Type2::MsgProc_Type2(unk32 param_2, unk16 param_3, unk32 param_4) :
    UnkStruct_02038aa0(0, 0) {
    this->mUnk_162 = 4;
    this->mUnk_164 = 1;
    this->mUnk_166 = 0;
    this->mUnk_168 = -1;
    this->mUnk_16a = 0;
    this->mUnk_16c = 1;
    this->mUnk_16e = 0;
}

// non-matching
THUMB void MsgProc_Type2::func_0203c39c(unk32 param_2, unk32 param_3) {
    u16 uVar1;
    unk32 uVar2;
    s16 uVar3;
    s32 iVar4;
    s32 local_20;
    s32 local_1c[2];

    this->func_02038b28();
    uVar3 = 0;

    for (iVar4 = 0; iVar4 < 2; iVar4++) {
        local_1c[0] = 0xC0;
        local_20    = 0x10;

        if (iVar4 != 0) {
            func_0203fc78(local_1c, &local_20);
        }

        uVar1 = this->func_0203d318((s32) (local_1c[0] + 7 + ((u32) (local_1c[0] + 7 >> 2) >> 0x1D)) >> 3,
                                    (s32) (local_20 + 7 + ((u32) (local_20 + 7 >> 2) >> 0x1D)) >> 3);

        if (uVar3 < uVar1) {
            uVar3 = uVar1;
        }
    }

    if (this->mUnk_114->vfunc_08(this) != 0) {
        this->mUnk_10 = this->mUnk_114->func_0203d1b4();
    }
}

ARM void MsgProc_Type2::vfunc_3C(u16 *param_2) {
    if (this->mUnk_15c > 0 && this->mUnk_122 != 1) {
        if (this->func_0203de14(param_2) != 0) {
            this->vfunc_40(0, 0);
        }
    }
}

ARM void MsgProc_Type2::vfunc_40(unk32 param_2, unk32 param_3) {
    param_2 += this->mUnk_166;
    param_3 += this->mUnk_168;

    this->func_0203c4ac(param_2 + this->mUnk_16a, param_3 + this->mUnk_16c);
    this->UnkStruct_02038aa0::vfunc_30(param_2, param_3);
}

ARM bool MsgProc_Type2::vfunc_14(unk32 param_2, unk32 param_3) {
    return this->UnkStruct_0203dae0::vfunc_14(param_2 + this->mUnk_162, param_3);
}

ARM MsgProc_Type2::~MsgProc_Type2() {}
