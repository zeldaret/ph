#include "Unknown/UnkStruct_02038aa0.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Message/MessageManager.hpp"

extern u32 data_027e0618[];

ARM UnkStruct_0203881c::UnkStruct_0203881c() {
    this->mUnk_14 = 0x1000;
    this->mUnk_18 = 0;
    this->mUnk_1c = 0;
    this->mUnk_20 = 0;
    this->mUnk_24 = 0;
}

ARM void UnkStruct_0203881c::func_02038858(unk32 param1) {}
ARM void UnkStruct_0203881c::func_02038888() {}
ARM void UnkStruct_0203881c::func_02038950(UnkStruct_02038aa0 *param1, s32 param2) {}
ARM void UnkStruct_0203881c::func_02038a80(s32 param1) {}
ARM UnkStruct_0203881c::~UnkStruct_0203881c() {}

THUMB UnkStruct_02038aa0::UnkStruct_02038aa0(u8 param1, u8 param2) :
    UnkStruct_0203dae0(param1),
    mUnk_124(0) {
    this->func_020387e0(this->mUnk_150);
    this->pInfoEntry = 0;
    this->mUnk_158.y = 0;
    this->mUnk_15c   = 0;
    this->mUnk_15e   = 0xFF;
    this->mUnk_15f   = 0xFF;
    this->mUnk_160   = 1;
    this->mUnk_11e   = param2;
}

THUMB UnkStruct_02038aa0::~UnkStruct_02038aa0() {}

THUMB void UnkStruct_02038aa0::func_02038b28(void) {
    this->mUnk_114->mUnk_04 = NULL;
}

ARM void UnkStruct_02038aa0::vfunc_4c(u32 param1, unk32 param2) {
    this->UnkStruct_0203dae0::vfunc_10(param1, param2);
}

ARM void UnkStruct_02038aa0::vfunc_10() {}

ARM void UnkStruct_02038aa0::func_02038b40() {
    this->mUnk_15c         = -1;
    this->mUnk_128.mUnk_04 = NULL;
    this->func_0203dc10(0);
    this->vfunc_48();
}

ARM void UnkStruct_02038aa0::vfunc_48() {}

ARM void UnkStruct_02038aa0::func_02038b74(void) {}

// non-matching
ARM bool UnkStruct_02038aa0::func_02038b78() {
    if (data_027e0c54 == 0) {
        if ((this->mUnk_50 != 0 && data_027e0c68.func_02036850() != 0) ||
            (this->mUnk_50 == 0 && data_027e0c68.func_02036824() != 0))
        {
            return true;
        }

        return false;
    } else {
        bool ret = CHECK_UNK_FLAGS(1);

        if ((this->mUnk_50 == 0 || ret)) {
            return (this->mUnk_50 != 0 && ret);
        }

        return false;
    }
}

ARM unk32 UnkStruct_02038aa0::vfunc_34(s32 param1) {
    s16 iVar1;
    unk32 iVar2;
    unk32 iVar3;
    unk32 uVar4;

    iVar2 = this->func_02038cf4();
    iVar3 = this->func_02038d10();
    iVar1 = ((this->mUnk_158.y - (this->mUnk_18 << 3) / 2));

    if ((param1 < iVar2 + iVar1) || (iVar2 + iVar3 + iVar1 <= param1)) {
        return -1;
    }

    iVar3 = this->mUnk_34;
    uVar4 = this->func_02032fb4();
    iVar2 = (param1 - iVar1) - iVar2;

    return func_01ff9b4c(iVar2 + iVar3 / 2, uVar4);
}

ARM s32 UnkStruct_02038aa0::func_02038cb8(s32 param1) {
    u8 bVar1    = this->mUnk_2c[0]->mUnk_08[1];
    unk32 iVar2 = this->func_02038cf4();
    unk32 iVar1 = this->func_020337d8(param1 + 1);
    return iVar2 + iVar1 - bVar1;
}

ARM s32 UnkStruct_02038aa0::func_02038cf4() {
    unk32 iVar1;
    unk32 iVar2;

    iVar2 = this->mUnk_18;
    iVar1 = this->func_02038d10();
    return (iVar2 * 8 - iVar1) / 2;
}

ARM s32 UnkStruct_02038aa0::func_02038d10() {
    return this->func_020337d8(this->mUnk_150[0]);
}

ARM void UnkStruct_02038aa0::vfunc_2c() {}

ARM void UnkStruct_02038aa0::vfunc_30(unk32 param_2, unk32 param_3) {
    if (this->mUnk_15c > 0) {
        this->func_0203e090();
    } else {
        this->mUnk_118 = -1;
    }
}

ARM bool UnkStruct_02038aa0::func_02038ef4(s32 param1, s32 param2) {
    unk32 local_14;
    unk32 local_18;

    this->vfunc_70(&local_14, &local_18);
    this->func_0203e1b0(local_14 + param1, local_18 + param2, 0);
}

ARM void UnkStruct_02038aa0::func_02038f40(void) {}

ARM void UnkStruct_02038aa0::vfunc_44(s32 touchLastX, s32 touchLastY) {}

// non-matching
ARM void UnkStruct_02038aa0::vfunc_50(EntryINF1 *param1, u32 param2, s16 *param3, UnkSubClass1_02256FF8 *param4) {
    int iVar1;

    this->pInfoEntry = param1;
    this->mUnk_08    = param4;
    this->mUnk_15f   = -1;
    this->mUnk_15c   = 0x78;
    this->mUnk_15e   = param4->mUnk_0c;
    this->func_0203dcfc(0, 0, this->mUnk_11e, 2);
    this->mUnk_128.func_02038858(param2);
    this->mUnk_30 = this->mUnk_150[4] + 5;

    this->vfunc_54();
    // this->vfunc_60(0, 0, (unk32)param3);
    // this->vfunc_64(param3);

    if (*(unk32 *) data_027e0618 == 2) {
        if (this->func_02032fa4() == 0) {
            data_027e103c->func_ov000_020cfc9c(1, 0);
        } else {
            data_027e103c->func_ov000_020cfc9c(0, 1);
        }
    }

    this->vfunc_5C();
}

// non-matching
ARM void UnkStruct_02038aa0::vfunc_5c(u16 *param_2, UnkStruct_0203b264 *param_3, unk8 param_4, unk32 param_5) {
    u16 sVar1;
    bool bVar5;

    sVar1 = param_2[0];
    bVar5 = (sVar1 == 0xA || sVar1 == 0x20) || sVar1 == 0x3000;

    if (bVar5 && this->mUnk_150[2] != 0) {
        this->mUnk_150[2] = 1;
    } else {
        this->mUnk_150[2] = 0;
    }

    // this->mUnk_150[2] = bVar5;

    // return?
    this->func_02033360();
}

ARM unk32 UnkStruct_02038aa0::vfunc_1c(s32 param1, unk32 *param2, unk32 param3, unk32 param4) {}
ARM unk32 UnkStruct_02038aa0::vfunc_20(s32 param1, s32 *param2) {}
ARM void UnkStruct_02038aa0::func_02039208(unk16 param1) {}

// non-matching
ARM void UnkStruct_02038aa0::vfunc_08(s32 param1, unk32 *param2, s16 *param3, unk32 param4) {
    this->mUnk_15c    = 10;
    this->mUnk_150[2] = 1;
    this->func_0203e2ac(param2);
}

ARM unk32 UnkStruct_02038aa0::func_02039250() {}
ARM void UnkStruct_02038aa0::vfunc_54() {}
ARM void UnkStruct_02038aa0::vfunc_58() {}
ARM void UnkStruct_02038aa0::vfunc_60() {}
ARM void UnkStruct_02038aa0::vfunc_64() {}

ARM s32 UnkStruct_02038aa0::vfunc_68(unk32 param1) {
    switch (param1) {
        case 0: break;
        case 1: this->mUnk_34 = 4; break;
        case 2: this->mUnk_34 = 6; break;
        case 3: this->mUnk_34 = 1; break;
        case 4: this->mUnk_34 = 0; break;
        default: break;
    }

    return ((this->mUnk_18 << 3) - this->func_020337d8(param1)) / 2;
}

ARM void UnkStruct_02038aa0::func_02039440(unk32 param1, unk32 param2) {}
ARM void UnkStruct_02038aa0::vfunc_6c(s32 *param1, s32 *param2) {}

ARM void UnkStruct_02038aa0::vfunc_70(s32 *param1, s32 *param2) {
    this->vfunc_6C(param1, param2);
    *param1 += this->mUnk_158.x;
    *param2 += this->mUnk_158.y;
}

ARM bool UnkStruct_02038aa0::func_0203951c() {}
ARM bool UnkStruct_02038aa0::vfunc_38() {}

ARM void UnkStruct_02038aa0::vfunc_0c(u8 param_2, u8 param_3, u8 param_4, unk32 param_5) {
    this->func_0203dc10(1, param_3);
    this->func_02033190(param_2, param_3, param_4, param_5);
}
