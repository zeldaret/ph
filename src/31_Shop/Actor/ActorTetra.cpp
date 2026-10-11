#include "Actor/Character/ActorTetra.hpp"
#include "DTCM/UnkStruct_027e0fec.hpp"
#include "Save/AdventureFlags.hpp"

extern u32 **data_027e0fe0[];
extern UnkStruct_027e0fec *data_027e0fec;
extern unk32 data_ov031_02181b24;
extern unk32 data_ov031_02181b30;
extern unk32 data_ov031_02183d68;
extern unk32 data_ov031_02183d6c;

extern void CleanDataCacheLines(void *, unk32);
extern bool func_02017d30(bool, unk32, ActorTetra_4cc *, unk32);

ARM ActorTetra *ActorTetra::Create() {
    return new(*data_027e0fe0[0], 4) ActorTetra();
}

ARM bool ActorTetra::vfunc_f4() {
    if (gAdventureFlags->Get(AdventureFlag_PlayedBellumTakesOverGhostShipCS)) {
        return false;
    }
    mUnk_1d8.func_ov014_02145a74(0x37, 0x37);
    mUnk_1d8.func_ov014_02145ae8(0x37, &data_ov031_02183d68, &data_ov031_02183d6c);
    func_ov014_021451f0(&data_ov031_02181b24);
    mUnk_448 = 4;
    if (mUnk_020.mUnk_00[0] == 0 && mUnk_020.mUnk_00[2] == 1) {
        mUnk_1d8.mUnk_18          = &data_ov031_02181b30;
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

ARM void ActorTetra_4b0::func_ov031_02181610(unk32 *param1, unk32 param2, unk32 param3, unk32 param4, u16 param5) {
    s32 iVar1;
    s32 iVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    s32 iVar6;
    s32 iVar7;
    unk32 *puVar8;
    ActorTetra_4cc *puVar9;
    u32 uVar10;
    u32 uVar11;
    s32 iVar12;
    s32 iVar13;
    u32 local_28;

    this->mUnk_08 = (unk32 *) param1[0] + param1[0xe];
    uVar10        = param5;
    this->mUnk_18 = (u32) ((u32) param1[0xb] & 0xffff) << 3;
    uVar4         = param1[0x12];
    uVar5         = this->mUnk_14;
    local_28      = uVar4 << 3;
    if (uVar5 < uVar4 << 3) {
        local_28 = uVar5;
    }
    if (local_28 < uVar5) {
        this->mUnk_14 = local_28;
    }
    iVar1  = (int) (uVar10 & 0x7c00) >> 10;
    iVar2  = (int) (uVar10 & 0x3e0) >> 5;
    puVar8 = this->mUnk_08;
    puVar9 = this->mUnk_0c;
    uVar4  = CoDivide64By32(0x1f000, ((uVar10 & 0x1f) + 0x1f) * 0x1000);
    uVar5  = CoDivide64By32(0x1f000, (iVar2 + 0x1f) * 0x1000);
    uVar3  = CoDivide64By32(0x1f000, (iVar1 + 0x1f) * 0x1000);
    iVar6  = 0;
    if (local_28 >> 1 != 0) {
        /*do {
            uVar11 = (u32) *puVar8;
            iVar6  = iVar6 + 1;
            puVar8 = puVar8 + 1;
            iVar12 = ((int) uVar11 >> 10 & 0x1fU) + (uVar11 & 0x1f) + ((int) uVar11 >> 5 & 0x1fU);
            iVar7  = (int) (iVar12 * ((int) (param_3 * uVar4 + 0x800) >> 0xc) + (uVar10 & 0x1f) * 0x1000) >> 0xc;
            iVar13 = iVar12 * ((int) (param_4 * uVar5 + 0x800) >> 0xc) + iVar2 * 0x1000 >> 0xc;
            if (0x1f < iVar7) {
                iVar7 = 0x1f;
            }
            if (0x1f < iVar13) {
                iVar13 = 0x1f;
            }
            iVar12 = iVar12 * ((int) (param_5 * uVar3 + 0x800) >> 0xc) + iVar1 * 0x1000 >> 0xc;
            if (0x1f < iVar12) {
                iVar12 = 0x1f;
            }
            *puVar9 = (ushort) iVar7 | (ushort) (iVar13 << 5) | (ushort) (iVar12 << 10);
            puVar9  = puVar9 + 1;
        } while (iVar6 < (int) (local_28 >> 1));
    */}
        CleanDataCacheLines(this->mUnk_0c, local_28);
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
