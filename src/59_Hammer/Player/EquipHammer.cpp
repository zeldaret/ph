#include "Player/EquipHammer.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e0fd4.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerControl.hpp"
#include "Player/PlayerLink.hpp"
#include "Actor/Navi/ActorNavi.hpp"

extern "C" void ApproachAngle_thunk(s16 *src, s16 dst, u32 param3);

struct EquipHammer_UnkStruct {
    /* 00 */ unk8 mUnk_00[0x20];
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk8 mUnk_24[0xC];
    /* 30 */ unk32 mUnk_30;
    /* 34 */ unk8 mUnk_34[0xC];
    /* 40 */ unk32 mUnk_40;
    /* 44 */ unk8 mUnk_44[0xC];
    /* 50 */ unk32 mUnk_50;
    /* 54 */
};

extern EquipHammer_UnkStruct data_ov059_0219b160;
extern unk32 data_ov059_0219b180;
extern unk32 data_ov059_0219b190;
extern unk32 data_ov059_0219b1a0;
extern unk32 data_ov059_0219b1b0;

ARM bool EquipHammer::IsUsable(unk32 param1) const {
    ActorNavi *pAVar3;

    if (this->GetAmmo() <= 0) {
        return false;
    }

    if (data_027e0fd4->mUnk_0f0 != 0 || data_027e0fd4->mUnk_0f8 != 0) {
        return false;
    }

    pAVar3 = (ActorNavi*)gItemManager->GetFairy(FairyId_Courage);

    if (pAVar3 == NULL || pAVar3->mUnk_3b8 != 0) {
        return false;
    }

    if (gItemManager->GetUnk_14d() != 0) {
        return false;
    }

    if (param1 != 0) {
        LinkStateItem *pLVar4 = GetLinkStateItem();

        if (pLVar4->mUnk_25[2] != 0 && pLVar4->mUnk_25[3] == 0) {
            return false;
        }

        if (data_027e0fd4->mUnk_0c6 < 0 && data_027e0d38->mUnk_0c.func_ov000_020a5e9c() != 0x2f) {
            bool bVar5 = false;

            if (gPlayerLink->GetStateId() == 4 && gLinkState != NULL && gLinkState->mSubState == 0) {
                bVar5 = true;
            }

            if (!bVar5) {
                return false;
            }
        }
    }

    return true;
}

ARM LinkStateItem *GetLinkStateItem() {
    return (LinkStateItem *) GetLinkState(LinkStateId_Item);
}

ARM void EquipHammer::vfunc_18() {
    this->mIsHeld     = false;
    this->mIsReleased = false;
    this->mState      = EQUIP_HAMMER_STATE_IDLE;
    this->mUnk_28     = 0x1000;
}

ARM void EquipHammer::vfunc_1c() {
    this->mIsHeld     = false;
    this->mIsReleased = false;
    this->mState      = EQUIP_HAMMER_STATE_IDLE;
}

ARM void EquipHammer::vfunc_30() {
    if (this->mUnk_24 > 0) {
        this->mUnk_24--;

        if (this->mUnk_24 <= 1) {
            this->mState = EQUIP_HAMMER_STATE_IDLE;
        }
    }
}

ARM void EquipHammer::func_ov059_02198e90() {
    if (this->mUnk_24 <= 0 && !this->mIsHeld) {
        this->mIsHeld      = true;
        this->mChargeTimer = HAMMER_CHARGE_TIMER;
    }
}

ARM bool EquipHammer::func_ov059_02198ebc() {
    if (this->mUnk_24 <= 0) {
        this->mIsReleased = true;
    }

    return true;
}

ARM bool EquipHammer::func_ov059_02198ed4() {
    if (this->mChargeTimer > 0) {
        this->mState = EQUIP_HAMMER_STATE_CHARGING;
        this->mChargeTimer--;
        return this->mChargeTimer == 0;
    }

    this->mState = EQUIP_HAMMER_STATE_CHARGED;
    return false;
}

ARM void EquipHammer::func_ov059_02198f10(Vec3p *vec, unk32 param2, s32 param3) {
    Vec3p local_18;

    this->mUnk_0c = *vec;

    if (this->mIsReleased) {
        this->mIsReleased = false;

        if (param3 == 0) {
            local_18 = this->mUnk_0c;
            MapManager::func_ov00_020858b0(gMapManager, &local_18, this->mChargeTimer == 0);
        }
    }

    this->mIsHeld = false;
    this->mUnk_24 = 4;
    this->mUnk_28 = param2;
}

ARM void EquipHammer::func_ov059_02198fa8(unk32 param1) {
    this->mIsReleased = false;
    this->mIsHeld     = false;
    this->mState      = EQUIP_HAMMER_STATE_IDLE;
    this->mUnk_24     = 4;
    this->mUnk_28     = param1;
}

ARM void EquipHammer::vfunc_38(unk32 param1) {}

ARM u32 EquipHammer::vfunc_2c() {
    //! TODO: fake?
    return (this->mState + (s32) ((u32) (this->mState >> 0xB) >> 0x14)) >> 0xC;
}

ARM bool EquipHammer::IsHammerCharged() {
    return this->mState == EQUIP_HAMMER_STATE_CHARGED && this->mChargeTimer == 0;
}

ARM void LinkStateItem::func_ov059_02198ffc() {
    Vec3p local_14;
    Vec3p local_20;
    s16 dest;

    local_14 = this->mUnk_38;
    local_20 = *this->GetPlayerPos();

    Vec3p_Sub(&local_14, &local_20, &local_14);
    dest = Atan2(local_14.x, local_14.z);
    ApproachAngle_thunk(this->GetPlayerAngle(), dest, 0x2000);
}

ARM void LinkStateItem::func_ov059_0219907c() {
    this->func_ov00_020a89bc(&data_ov059_0219b180, 1);
    this->mUnk_25[2] = 0;
    this->mUnk_25[3] = 0;
}

#define CHECK_0219b160(value) ((value) == this->Get_PlayerControlData_Unk100())

ARM void LinkStateItem::func_ov059_021990a4() {
    EquipHammer *pEVar4;
    ActorNavi *pAVar5;

    if (this->mUnk_25[0x2] != 0 && this->mUnk_25[0x3] == 0) {
        return;
    }

    pEVar4 = GetEquipHammer();
    pAVar5 = (ActorNavi*)gItemManager->GetFairy(FairyId_Courage);

    if (CHECK_0219b160(data_ov059_0219b160.mUnk_20)) {
        this->mUnk_38 = gPlayerControl->mAimWorld;

        if (pAVar5->mUnk_3c0[0] != 0 && gPlayerControl->UpdateAimWorld(&this->mUnk_38) && pEVar4->GetState() <= 0) {
            pEVar4->func_ov059_02198e90();

            if (this->mUnk_25[2] != 0 && this->mUnk_25[3] != 0) {
                this->LookAt(&this->mUnk_38);
            }

            this->func_ov00_020a89bc(&data_ov059_0219b190, 1);
        }
    } else {
        if (CHECK_0219b160(data_ov059_0219b160.mUnk_50)) {
            if (this->func_ov00_020a8b3c(1) != 0 || gPlayerControl->UpdateAimWorld(&this->mUnk_38)) {
                this->func_ov00_020a89bc(&data_ov059_0219b180, 1);
            }
        } else if (CHECK_0219b160(data_ov059_0219b160.mUnk_30) || CHECK_0219b160(data_ov059_0219b160.mUnk_40)) {
            gPlayerControl->UpdateAimWorld(&this->mUnk_38);
            pEVar4->func_ov059_02198e90();

            if (this->mUnk_25[0x2] != 0 && this->mUnk_25[0x3] != 0) {
                this->LookAt(&this->mUnk_38);
            }

            if (gPlayerControl->CheckTouching(1) ? false : true) {
                if (pEVar4->GetState() > 0) {
                    pEVar4->func_ov059_02198ebc();
                    this->func_ov00_020a89bc(&data_ov059_0219b1b0, 1);
                }
            } else if (!CHECK_0219b160(data_ov059_0219b160.mUnk_40) && pEVar4->GetChargeTimer() <= 0) {
                this->func_ov00_020a89bc(&data_ov059_0219b1a0, 1);
            }
        } else {
            this->func_ov00_020a89bc(&data_ov059_0219b180, 1);
        }
    }

    if (this->mUnk_25[0x2] == 0 || this->mUnk_25[0x3] == 0) {
        this->func_ov059_02198ffc();
    }
}

ARM EquipHammer *GetEquipHammer() {
    return (EquipHammer *) ItemManager::GetEquipItemUnchecked(ItemFlag_Hammer);
}

ARM void LinkStateItem::StopUsingHammer() {
    ((ActorNavi*)gItemManager->GetFairy(FairyId_Courage))->func_ov000_020b853c();
}
