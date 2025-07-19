#include "Unknown/UnkStruct_02032f0c.hpp"
#include "Message/MessageManager.hpp"
#include "Unknown/UnkStruct_02032e7c.hpp"
#include "Unknown/UnkStruct_02035064.hpp"

extern "C" void func_020296e0(unk32 **, UnkStruct_MsgProc_Base_unk_2C **, unk32, unk32, unk32, unk32);
extern "C" void func_02027ca0(unk32 **, s32, unk32, unk32);
extern "C" unk32 func_02023ea4(UnkStruct_MsgProc_Base_unk_2C **, u16);
extern "C" unk32 func_02023eec(UnkStruct_MsgProc_Base_unk_2C **, unk32);

//! TODO: move?
// ARM UnkStruct_02032e7c::UnkStruct_02032e7c() {
//     this->mUnk_04 = NULL;
//     this->mUnk_08 = 0;
//     this->mUnk_0a = 0;
//     this->mUnk_0c = 0;
//     this->mUnk_0e = 0;

//     if (func_0202ab48() == 0) {
//         this->mUnk_10 = 2;
//     } else {
//         this->mUnk_10 = 3;
//     }
// }

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
    Fill32(0, (u32 *) &this->mUnk_10, 0x18);
    Fill32(0, (u32 *) &this->mUnk_28, 0x10);
    Fill16(0, (u16 *) &this->mUnk_3e, 0xC);
    this->mUnk_10 = NULL;
    this->mUnk_2c = NULL;
    this->mUnk_30 = 2;
    this->mUnk_34 = 3;
}

THUMB UnkStruct_02032f0c::~UnkStruct_02032f0c() {}

ARM u16 **UnkStruct_02032f0c::func_02032f98(u16 *value) {
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

    // alignment?
    iVar1         = ((param1 + 7 + ((u32) ((param1 + 7) >> 2) >> 0x1d)) >> 3) * 8;
    iVar2         = ((param2 + 7 + ((u32) ((param2 + 7) >> 2) >> 0x1d)) >> 3) * 8;
    this->mUnk_4a = param1;
    this->mUnk_4c = param2;
    this->mUnk_14 = (iVar1 + ((u32) (iVar1 >> 2) >> 0x1d)) * 0x2000 >> 0x10;
    this->mUnk_18 = (iVar2 + ((u32) (iVar2 >> 2) >> 0x1d)) * 0x2000 >> 0x10;

    return true;
}

// non-matching
ARM void UnkStruct_02032f0c::vfunc_08(s32 param1, unk32 param2, s16 *param3, unk32 param4) {
    this->mUnk_51 = 1;

    if ((this->mUnk_4d - 1u) <= 1) {
        param1 = (((param1 + (this->mUnk_4a >> 1)) - this->func_02033cbc(param3) / 2) * 0x10000) >> 16;
    }

    if (this->mUnk_4e == 0) {
        func_02027ca0(&this->mUnk_28, param1, param2, param4);
        return;
    }

    if (this->mUnk_4e != 1) {
        return;
    }

    u8 bVar1  = this->mUnk_4f;
    s32 iVar2 = 0;

    if (*param3 == 0) {
        return;
    }

    while (param3[iVar2] != 0) {
        UnkStruct_MsgProc_Base_unk_2C **ppiVar5 = this->mUnk_2c;
        unk32 uVar3                             = func_02023ea4(ppiVar5, param3[iVar2]);

        if (uVar3 == 0xFFFF) {
            uVar3 = (*ppiVar5)->mUnk_02;
        }

        unk32 iVar4 = func_02023eec(ppiVar5, uVar3);

        this->vfunc_0c(
            (((this->mUnk_4f * iVar2 + (((param1 + (bVar1 >> 1)) * 0x10000) >> 16)) - (int) *(char *) (iVar4 + 2) / 2) *
             0x10000) >>
                16,
            param2, param3[iVar2], iVar2);

        iVar2++;
    }
}

ARM void UnkStruct_02032f0c::vfunc_0c(unk32 param1, unk32 param2, unk32 param3, unk32 param4) {
    func_020296e0(&this->mUnk_10, this->mUnk_2c, param1, param2, param4, param3);
}

ARM void UnkStruct_02032f0c::vfunc_10(u32 param1, unk32 param2) {
    if ((s32) param1 < 0) {
        param1 = -param1;
    }

    u32 uVar1 = param1 & 0x0F;
    Fill256((uVar1 << 28) | (uVar1 << 24) | (uVar1 << 20) | (uVar1 << 16) | (uVar1 << 12) | (uVar1 << 8) | (uVar1 << 4) |
                (uVar1 << 0),
            this->mUnk_10, ((u32) (this->mUnk_14 * this->mUnk_18) * 0x200000) >> 16);
}

// non-matching
ARM void UnkStruct_02032f0c::func_02033214(unk32 param1, unk32 param2, unk32 param3, u8 param4,
                                           UnkSubClass1_02256FF8 *param5) {
    this->mUnk_51 = 1;
    this->mUnk_08 = param5;

    unk32 uStack_20 = param3;
    u16 local_38;
    UnkStruct_02032e7c UStack_34;
    MessageManager::func_0203643c((u32 *) &local_38, &gMessageManager, param1);
    UStack_34.mUnk_04 = &local_38;
    UStack_34.mUnk_10 = this->mUnk_4d;
    this->func_020338a8(&UStack_34, -1);
    UStack_34.mUnk_0e = param4;

    u16 *puVar1 = UStack_34.mUnk_04;
    while (puVar1 != NULL && puVar1[0] != 0 && !this->func_02033c6c()) {
        this->vfunc_18(&UStack_34, param2, param3);
        // puVar1++;

        // if (*puVar1 != '\0') {
        //     puVar1 = UStack_34.mUnk_04++;
        // }
    }
}

// non-matching
ARM unk32 UnkStruct_02032f0c::vfunc_18(UnkStruct_02032e7c *param1, unk32 param2, unk32 param3) {
    u16 *puVar3;

    if (this->func_02033c6c()) {
        return this->func_02033628(param1, &this->mUnk_0c, param3);
    }

    if ((param1->mUnk_04 == NULL || param1->mUnk_04[0] == 0) ? 1 : 0) {
        return 1;
    }

    return this->func_02033628(param1, &param1->mUnk_04, param3);
}

ARM unk32 UnkStruct_02032f0c::vfunc_1c(s32 param1, unk32 *param2, unk32 param3, unk32 param4) {}
ARM unk32 UnkStruct_02032f0c::vfunc_20(s32 param1, s32 *param2) {}
ARM void UnkStruct_02032f0c::func_020334b4(u32 param1, s32 param2, s32 param3, s32 param4) {}
ARM unk32 UnkStruct_02032f0c::func_02033628(UnkStruct_02032e7c *param1, u16 **param2, unk32 param3) {}
ARM u32 UnkStruct_02032f0c::func_0203369c(u16 *param1, s32 param2) {}
ARM void UnkStruct_02032f0c::func_02033780(s32 param1) {}

ARM s32 UnkStruct_02032f0c::func_020337d8(s32 param1) {
    return this->mUnk_2c[0]->mUnk_08[1] * param1 + (param1 - 1) * this->mUnk_34;
}

ARM s32 UnkStruct_02032f0c::func_020337fc(s16 *param1, s32 param2) {}
ARM void UnkStruct_02032f0c::func_020338a8(UnkStruct_02032e7c *param1, unk32 param2) {}
ARM void UnkStruct_02032f0c::func_020338d0(unk32 *param1, unk32 param2) {}
ARM s32 UnkStruct_02032f0c::func_02033904(unk32 param1, unk32 param2) {}
ARM s32 UnkStruct_02032f0c::func_02033938(unk32 param1) {}
ARM s32 UnkStruct_02032f0c::func_0203396c(u16 *param1) {}
ARM bool UnkStruct_02032f0c::vfunc_24(s16 **param1) {}
ARM u16 *UnkStruct_02032f0c::func_02033b0c(s32 param1) {}
ARM bool UnkStruct_02032f0c::func_02033c6c() {}
ARM unk32 UnkStruct_02032f0c::func_02033c88(u32 param1) {}
ARM s32 UnkStruct_02032f0c::func_02033cbc(s16 *param1) {}

//! TODO: move?
// ARM UnkStruct_02032e7c::~UnkStruct_02032e7c() {}
