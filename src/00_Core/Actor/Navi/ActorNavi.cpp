#include "Actor/Navi/ActorNavi.hpp"
#include "DTCM/UnkStruct_027e0f6c.hpp"
#include "Game/Game.hpp"
#include "Item/ItemManager.hpp"
#include "Player/EquipHammer.hpp"

static char *sShipParts[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

ActorType ActorNavi::gType = ActorType(ActorTypeId_Navi, (ActorCreateFunc) ActorNavi::Create, NULL);
UnkStruct_ov000_020b8110 data_ov000_020ee1cc;

extern u32 **data_027e0fe0[];
ARM ActorNavi *ActorNavi::Create() {
    return new(*data_027e0fe0[0], 4) ActorNavi();
}

ARM UnkStruct_ov000_020b8110::UnkStruct_ov000_020b8110() :
    UnkStruct_ov000_020beba8(7) {}

ARM UnkStruct_ov000_020b8110::~UnkStruct_ov000_020b8110() {}

ARM bool UnkStruct_ov000_020b8110::vfunc_08(UnkStruct_ov000_020beba8_08 *param1) {
    u32 temp_r0;
    UnkStruct_027e0f6c::func_ov000_02093a1c(&temp_r0, data_027e0f6c, param1->mUnk_00);
    if ((temp_r0 & 0x1f) == 0 && ((temp_r0 >> 7) & 0x3) == 2) {
        return true;
    }
    return UnkStruct_ov000_020beba8::vfunc_08(param1);
}

ARM bool UnkStruct_ov000_020b8110::vfunc_18(s32 *param1) {
    switch ((*(unk32(**)(s32 *))((*param1) + 0x1c))(param1)) {
        case 0x10:
        case 0x17:
            return false;
    }
    return UnkStruct_ov000_020beba8::vfunc_18(param1);
}

ARM bool UnkStruct_ov000_020b8110::vfunc_14(u16 *param1) {
    return UnkStruct_ov000_020beba8::vfunc_14(param1);
}

ARM void ActorNavi::func_ov000_020b8200() {
    mUnk_09c.mUnk_4 = &data_ov000_020ee1cc;
}

ARM u16 ActorNavi::vfunc_c4() {
    if ((gGame.mModeId != GameModeId_Battle) && (mUnk_3c1 == 0)) {
        return ActorNaviBase::vfunc_c4();
    }
    return mUnk_3c4;
}

ARM u16 ActorNavi::vfunc_c8() {
    if ((gGame.mModeId != GameModeId_Battle) && (mUnk_3c1 == 0)) {
        return ActorNaviBase::vfunc_c8();
    }
    return mUnk_3c6;
}

ARM FairyId ActorNavi::GetFairyId() {
    return FairyId_Courage;
}

ARM s32 ActorNavi::vfunc_b8() {
    return 58;
}

ARM void ActorNavi::vfunc_d4() {
    if (mHammer != NULL && this->func_ov059_0219af14()) {
        return;
    }
    return ActorNaviBase::vfunc_d4();
}

ARM void ActorNavi::vfunc_d0() {
    if (mHammer != NULL && this->func_ov059_0219afc4()) {
        return;
    }
    ActorNaviBase::vfunc_d0();
}

extern void func_ov000_020b7e6c(s32 *param1);
ARM void ActorNavi::SetActive(unk32 active) {
    s32 temp_r4;
    s32 var_r5;
    var_r5  = (s32) mUnk_34c;
    temp_r4 = (s32) (mUnk_34c + 4);
    if (var_r5 != temp_r4) {
        do {
            func_ov000_020b7e6c((s32 *) var_r5);
            var_r5 += 4;
        } while (var_r5 != temp_r4);
    }
    if (mHammer != NULL) {
        this->func_ov059_0219aba8(active);
    }
    return ActorNaviBase::SetActive(active);
}

ARM void ActorNavi::vfunc_e0() {
    void (*var_r1)();
    s32 temp_r0;
    void **temp_r0_2;

    if (mUnk_3b8.mUnk_00 != NULL) {
        if (mUnk_130 != 0) {
            this->SetActive(1);
        } else {
            (*(void (**)())((*(unk32 *) ((s32) this + (mUnk_3b8.mUnk_04 >> 1))) + mUnk_3b8.mUnk_00))();
            return;
        }
    }
    if (mHammer != NULL) {
        if (!mHammer->IsInUse()) {
            this->func_ov000_020b853c();
        } else {

            if (mUnk_130 != 0) {
                return;
            }
            this->SetActive(3);
            return;
        }
    }
    return ActorNaviBase::vfunc_e0();
}

ARM void ActorNavi::vfunc_d8() {
    if (mHammer != NULL) {
        this->func_ov059_0219a0ac();
        return;
    }
    ActorNaviBase::vfunc_d8();
}

ARM void ActorNavi::vfunc_20(bool param1) {

    ActorNaviBase::vfunc_20(param1);
    u8 var_r0 = param1 ? mUnk_0a4.mUnk_01 : mUnk_0a4.mUnk_00;
    if ((var_r0 != 0) && mHammer != NULL) {
        this->func_ov059_0219aa08(param1);
    }
}

ARM bool ActorNavi::vfunc_cc(unk32 *param1) {
    if (mHammer != NULL || mUnk_3b8.mUnk_00 != 0) {
        return false;
    }
    return ActorNaviBase::vfunc_cc(param1);
}

ARM bool ActorNavi::vfunc_c0(Vec3p *param1) {
    if (mHammer != NULL || mUnk_3b8.mUnk_00 != 0) {
        return false;
    }
    return ActorNaviBase::vfunc_c0(param1);
}

static unk32 data_ov000_020e6554 = 0x2000;

ARM void ActorNavi::vfunc_e8() {
    ActorNaviBase::vfunc_e8();
    if (mHammer == NULL) {
        return;
    }
    mUnk_2f0.mUnk_0c.mUnk_04 = data_ov000_020e6554;
    mUnk_2f0.func_ov000_020c0e04();
}

ARM bool ActorNavi::vfunc_8c() {
    return true;
}

ARM void ActorNavi::vfunc_ec() {
    if (mUnk_3b8.mUnk_00 != 0 || mHammer != NULL) {
        return;
    }
    if (gGame.mModeId == GameModeId_Battle) {
        return;
    }
    if (!GetEquipHammer()->IsInUse()) {
        return;
    }
    this->func_ov059_0219b020();
}

ARM EquipHammer *GetEquipHammer() {
    return (EquipHammer *) gItemManager->GetEquipItemUnchecked(ItemFlag_Hammer);
}

ARM void ActorNavi::func_ov000_020b853c() {
    mHammer  = NULL;
    mUnk_3c0 = 0;
    mUnk_348 = 0;
}

ActorNavi::~ActorNavi() {}
