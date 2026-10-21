#include "Actor/Character/ActorTetra.hpp"
#include "DTCM/UnkStruct_027e0fec.hpp"
#include "Save/AdventureFlags.hpp"

extern u32 **data_027e0fe0[];
extern UnkStruct_027e0fec *data_027e0fec;

extern void CleanDataCacheLines(void *, unk32);
extern bool func_02017d30(bool, unk32, ActorTetra_4cc *, unk32);

ARM ActorTetra *ActorTetra::Create() {
    return new(*data_027e0fe0[0], 4) ActorTetra();
}

ARM bool ActorTetra::vfunc_f4() {
    static const unk32 sUnk1[] = {0x800, 0x4cd, 0x10cd};
    static const char sUnk2[8] = "wait";
    static const char sUnk3[4] = "TTR";
    static const char sUnk4[8] = "sekika";

    if (gAdventureFlags->Get(AdventureFlag_PlayedBellumTakesOverGhostShipCS)) {
        return false;
    }
    mUnk_1d8.func_ov014_02145a74(0x37, 0x37);
    mUnk_1d8.func_ov014_02145ae8(0x37, sUnk3, sUnk4);
    func_ov014_021451f0(sUnk1);
    mUnk_448 = 4;
    if (mUnk_020.mUnk_00[0] == 0 && mUnk_020.mUnk_00[2] == 1) {
        mUnk_1d8.mUnk_18          = sUnk2;
        mUnk_1d8.mUnk_020.mUnk_8e = true;
        mUnk_1d8.func_ov014_02146120(0);
        mUnk_469         = true;
        mUnk_468         = true;
        mUnk_4b0.mUnk_04 = 0;
        mUnk_4b0.mUnk_00 = 0x1000;
    }
    mUnk_4b0.func_ov031_02181610(data_027e0fec->mUnk_c10, 0x800, 0x800, 0x800, 0x318C);
    return true;
}

ARM void ActorTetra::vfunc_c4() {
    if (mUnk_020.mUnk_00[0] == 0 && mUnk_020.mUnk_00[2] == 1) {
        mUnk_1d8.mUnk_10->mUnk_0c.mUnk_04 = 0;
    }
    ActorGenericCharacter::vfunc_c4();
}

ARM void ActorTetra::vfunc_20(bool param1) {
    bool state = param1 ? mUnk_0a4.mUnk_01 : mUnk_0a4.mUnk_00;
    if (!state) {
        return;
    }
    ActorCharacter::vfunc_20(param1);
    mUnk_4b0.func_ov031_02181798();
}

/* UnkStruct_027e0fec mUnk_c10 type to change from func_ov031_02181610_param1 to correct type */
ARM void ActorTetra_4b0::func_ov031_02181610(func_ov031_02181610_param1 *param1, unk32 param2, unk32 param3, unk32 param4,
                                             u16 param5) {
    func_ov031_02181610_stack s;
    s.sp0 = this;

    this->mUnk_08 = (unk32 *) ((unk32) param1 + param1->mUnk_38);
    this->mUnk_18 = ((u32) (param1->mUnk_2c << 0x10) >> 0xD);
    unk32 temp1   = param1->mUnk_30;
    u32 temp2     = this->mUnk_14;

    s.sp4 = param3;
    s.sp8 = temp1 * 8;

    if (temp2 < (u32) (temp1 * 8)) {
        s.sp8 = temp2;
    }
    if (s.sp8 < temp2) {
        s.sp0->mUnk_14 = s.sp8;
    }

    unk32 temp5  = (param5 & 0x7c00) >> 0xa;
    u32 temp9    = s.sp8 >> 1;
    unk32 temp4  = (param5 & 0x3e0) >> 5;
    unk32 *var7  = s.sp0->mUnk_08;
    unk32 *var8  = (unk32 *) s.sp0->mUnk_0c;
    unk32 temp11 = (unk32) ((param2 * CoDivide64By32(0x1f000, ((param5 & 0x1f) + 0x1f) * 4096)) + 0x800) >> 0xc;
    unk32 temp6  = (unk32) ((s.sp4 * CoDivide64By32(0x1f000, (temp4 + 0x1f) * 4096)) + 0x800) >> 0xc;
    unk32 var2   = 0;
    unk32 temp14 = (s32) ((param4 * CoDivide64By32(0x1f000, (temp5 + 0x1f) * 4096)) + 0x800) >> 0xc;

    if ((s32) temp9 > 0) {
        do {
            unk32 temp10 = *var7;
            var2 += 1;
            var7 += 2;
            unk32 temp10_2 = (((unk32) temp10 >> 0xa) & 0x1f) + ((temp10 & 0x1f) + (((unk32) temp10 >> 5) & 0x1f));
            unk32 var3     = (unk32) ((temp10_2 * temp11) + ((u32) (param5 << 0x1b) >> 0xf)) >> 0xc;
            unk32 varip    = (unk32) ((temp10_2 * temp6) + (temp4 << 0xc)) >> 0xc;
            if (varip > 0x1f) {
                varip = 0x1f;
            }
            unk32 var0 = (unk32) ((temp10_2 * temp14) + (temp5 << 0xc)) >> 0xc;
            if (var0 > 0x1f) {
                var0 = 0x1f;
            }
            *var8 = var3 | (varip << 5) | (var0 << 0xa);
            var8 += 2;
        } while (var2 < (unk32) temp9);
    }
    CleanDataCacheLines(s.sp0->mUnk_0c, s.sp8);
}

ARM void ActorTetra_4b0::func_ov031_02181798() {
    unk32 uVar1;
    int iVar2;
    int iVar3;
    u32 uVar4;
    int iVar5;
    ActorTetra_4cc *puVar6;
    int iVar7;
    u32 uVar8;
    unk32 *puVar9;
    ActorTetra_4cc *puVar10;

    if (this->mUnk_00 == this->mUnk_04) {
        return;
    }
    this->mUnk_04 = this->mUnk_00;
    uVar1         = this->mUnk_14;
    iVar7         = 0;
    puVar6        = this->mUnk_10;
    puVar9        = this->mUnk_08;
    puVar10       = this->mUnk_0c;
    if (uVar1 >> 1 != 0) {
        /*do {
            uVar8   = (uint) *puVar10;
            uVar4   = (uint) *puVar9;
            iVar2   = *param_1;
            iVar7   = iVar7 + 1;
            iVar3   = 0x1000 - iVar2;
            param_3 = (uVar4 & 0x1f) * iVar3 + (uVar8 & 0x1f) * iVar2;
            iVar5   = ((int) (uVar4 & 0x7c00) >> 10) * iVar3 + ((int) (uVar8 & 0x7c00) >> 10) * iVar2 >> 0xc;
            *puVar6 = (ushort) ((((int) (uVar4 & 0x3e0) >> 5) * iVar3 + ((int) (uVar8 & 0x3e0) >> 5) * iVar2 >> 0xc) << 5) |
                      (ushort) (param_3 >> 0xc) | (ushort) (iVar5 << 10);
            puVar6  = puVar6 + 1;
            puVar9  = puVar9 + 1;
            puVar10 = puVar10 + 1;
        } while (iVar7 < (int) (uVar1 >> 1));
    */}
        CleanDataCacheLines(this->mUnk_10, this->mUnk_14);
        func_02017d30(true, this->mUnk_18, this->mUnk_10, this->mUnk_14);
}
