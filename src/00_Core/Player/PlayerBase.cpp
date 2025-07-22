#include "Player/PlayerBase.hpp"
#include "Actor/Navi/ActorNaviBase.hpp"
#include "DTCM/UnkStruct_027e0c54.hpp"
#include "DTCM/UnkStruct_027e0e58.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Player/PlayerControl.hpp"

static const char *sShipParts[] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

ARM bool PlayerBase::vfunc_04() {
    return true;
}

ARM ItemFlag PlayerBase::GetEquipId() {
    return ItemFlag_None;
}

ARM bool PlayerBase::CanMove() {
    return true;
}

ARM void PlayerBase::SetUpdatePos(bool updatePos) {
    mUpdatePos = updatePos;
}

ARM void PlayerBase::SetVisible(bool visible) {
    mVisible = visible;

    ItemManager *pItemManager = gItemManager;
    ActorNaviBase *fairy      = pItemManager->GetFairy(pItemManager->GetEquippedFairy());
    if (fairy != NULL) {
        fairy->mVisible = mVisible;
    }

    s16 var_r0                      = visible ? 0x1f : 0;
    this->GetEquipSword()->mUnk_5c  = var_r0;
    this->GetEquipShield()->mUnk_0e = var_r0;
    data_027e0e58->func_ov000_0207c5d4(1, visible);
}

ARM EquipSword *PlayerBase::GetEquipSword() {
    return (EquipSword *) gItemManager->GetEquipItemUnchecked(ItemFlag_OshusSword);
}

ARM EquipShield *PlayerBase::GetEquipShield() {
    return (EquipShield *) gItemManager->GetEquipItemUnchecked(ItemFlag_WoodenShield);
}

ARM void PlayerBase::LookAt(Vec3p *target) {
    Vec3p vec;
    Vec3p_Sub(target, &gPlayerPos, &vec);
    if (vec.x == 0 && vec.z == 0) {
        return;
    }
    gPlayerAngle = Atan2(*(vs32 *) &vec.x, vec.z);
}

ARM bool PlayerBase::func_ov00_020a7c00(s32 param1) {
    return param1 == data_027e0c54.mUnk_0;
}

ARM bool PlayerBase::CollidesWith(Cylinder *cylinder) {
    Cylinder hitbox;
    this->vfunc_10(&hitbox);
    if (hitbox.size < 0) {
        return false;
    }
    return cylinder->Overlaps(&hitbox);
}

ARM bool PlayerBase::func_ov00_020a7c60(Vec3p *param1, Vec3p *param2, s32 param3) {
    Cylinder hitbox;
    this->vfunc_10(&hitbox);
    if (hitbox.size < 0) {
        return false;
    }
    Vec3p vec1 = {param1->x, param1->y, param1->z};
    Vec3p vec2 = {param2->x, param2->y, param2->z};
    return hitbox.func_ov000_0208f030(&vec1, &vec2, param3);
}

ARM bool PlayerBase::EquipCollidesWith(Cylinder *cylinder, ItemFlag equipId) {
    return gItemManager->EquipCollidesWith(cylinder, equipId);
}

ARM s32 PlayerBase::EquipItem_vfunc_2c() {
    ItemFlag equippedItem = this->GetEquipId();
    if (equippedItem == ItemFlag_None) {
        return 0;
    }
    return gItemManager->EquipItem_vfunc_2c(equippedItem);
}

ARM void PlayerBase::SetHealth(s16 health) {
    if (mInvincible) {
        return;
    }

    mHealth = health;
    if (mHealth > this->GetMaxHealth()) {
        mHealth = this->GetMaxHealth();
    } else if (mHealth < 0) {
        mHealth = 0;
    }
}

ARM void PlayerBase::AddHealth(s16 amount) {
    if (mInvincible) {
        return;
    }

    if (mHealth <= 0) {
        return;
    }
    mHealth += amount;
    if (mHealth > this->GetMaxHealth()) {
        mHealth = this->GetMaxHealth();
    } else if (mHealth < 0) {
        mHealth = 0;
    }
}

ARM bool PlayerBase::TeleportToEntrance(unk32 entranceId, bool param2) {
    Entrance entrance;
    gMapManager->GetEntrancePos(&entrance, entranceId);
    if (this->Teleport(&entrance.mPos, entrance.mAngle, entrance.mUnk_10, param2, false)) {
        mEntranceId = entranceId;
        return true;
    }
    return false;
}

extern unk16 data_027e0fb0;
ARM bool PlayerBase::Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5) {
    gPlayerPos            = *pos;
    Vec3p subroutine_arg0 = {pos->x, pos->y, pos->z};

    q20 maxY = gMapManager->MapData_vfunc_68(&subroutine_arg0, 1);
    q20 y    = pos->y;
    if (y <= maxY) {
        y = maxY;
    }
    gPlayerPos.y = y;

    gPlayerAngle  = angle;
    gPlayerVel.x  = 0;
    data_027e0fb0 = 0;
    gPlayerVel.y  = 0;
    gPlayerVel.z  = 0;

    gPlayerControl->UpdateAim();
    gActorManager->Actor_vfunc_10(param4);
    if (param4) {
        gMapManager->func_ov00_02082af4();
        gAdventureFlags->func_ov00_02097700();
    }
    if (!param5) {
        data_027e0f64->func_ov000_0208ae94();
    }
    return true;
}

ARM bool PlayerBase::TeleportToLastEntrance(bool param1) {
    this->TeleportToEntrance(mEntranceId, param1);
}
