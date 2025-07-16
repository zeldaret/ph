#include "Player/LinkStateItem.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "DTCM/UnkStruct_027e1098.hpp"
#include "Item/ItemManager.hpp"
#include "Player/EquipBomb.hpp"
#include "Player/EquipHammer.hpp"
#include "Player/EquipItem.hpp"
#include "Player/EquipScoop.hpp"
#include "Player/PlayerControl.hpp"
#include "Save/AdventureFlags.hpp"

extern void func_ov000_020b7e6c(s32 *param1);

THUMB void LinkStateItem::vfunc_00() {}

ARM LinkStateId LinkStateItem::GetId() {
    return LinkStateId_Item;
}

ARM s32 LinkStateItem::IsHammerEquipped() {
    switch (this->mEquipId) {
        case ItemFlag_Hammer:
            return 0;
        default:
            return -1;
    }
}

ARM void LinkStateItem::OnStateLeave(s32 param1) {
    EquipItem *pEVar1;
    LinkStateMove *pLVar2;
    s32 iVar3;
    unk32 *puVar4;

    LinkStateBase::OnStateLeave(param1);

    switch (this->mEquipId) {
        case ItemFlag_BombchuBag:
            iVar3 = data_027e103c->func_ov000_020cf01c();
            if (*(u8 *) (iVar3 + 0xe0) == '\0') {
                GetEquipBombchu()->func_ov014_0213ec64();
            }
            data_027e1098->func_ov014_0211fd04();
            break;
        case ItemFlag_OshusSword:
            break;
        case ItemFlag_WoodenShield:
            break;
        case ItemFlag_Boomerang:
            break;
        case ItemFlag_BombBag:
            this->StopUsingBomb(param1);
            break;
        case ItemFlag_Bow:
            break;
        case ItemFlag_GrapplingHook:
            this->StopUsingRope();
            break;
        case ItemFlag_Hammer:
            this->StopUsingHammer();
            break;
        case ItemFlag_PotionA:
        case ItemFlag_PotionB:
            UnkStruct_027e103c *pData_027e103c = data_027e103c;
            pData_027e103c->mUnk_2a            = 0;
            pData_027e103c->func_ov000_020cf9dc(0, 0);
            break;
        case ItemFlag_Shovel:
            this->StopUsingScoop();
            break;
    }

    if (this->mEquipId != ItemFlag_None) {
        pEVar1 = this->GetEquipItem(this->mEquipId);
        pEVar1->vfunc_1c();
    }

    switch (this->mEquipId) {
        case ItemFlag_None:
        case ItemFlag_OshusSword:
            break;
        case ItemFlag_WoodenShield:
            break;
        case ItemFlag_PotionA:
        case ItemFlag_PotionB:
            this->EquipItem_vfunc_28();
            break;
        default:
            this->EquipItem_vfunc_28();
            if (param1 != 4 && param1 != 2) {
                pLVar2          = this->GetLinkStateMove();
                pLVar2->mUnk_14 = true;
            }
    }

    this->mNextEquip = ItemFlag_None;

    puVar4 = (unk32 *) this + 20;
    for (; puVar4 != (unk32 *) this + 22; puVar4++) {
        func_ov000_020b7e6c(puVar4);
    }
    if (gPlayerControl->mUnk_80 != false) {
        gPlayerControl->StopFollowing();
    }
    this->mUnk_25[1] = 0;
    return;
}

ARM EquipBombchu *LinkStateItem::GetEquipBombchu() {
    return (EquipBombchu *) ItemManager::GetEquipItemUnchecked(ItemFlag_BombchuBag);
}

ARM LinkStateMove *LinkStateItem::GetLinkStateMove() {
    return (LinkStateMove *) GetLinkState(LinkStateId_Move);
}

ARM bool LinkStateItem::func_ov00_020abf70() {
    return gAdventureFlags->func_ov00_02097b9c(this->mUnk_5c);
}

ARM bool LinkStateItem::vfunc_28() {
    return this->mUnk_5c < 0;
}
