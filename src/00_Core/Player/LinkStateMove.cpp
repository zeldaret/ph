#include "Player/LinkStateMove.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"

unk32 LinkStateMove::data_ov000_020e56f0 = 0x800;

THUMB void LinkStateMove::vfunc_00() {}

ARM LinkStateId LinkStateMove::GetId() {
    return LinkStateId_Move;
}

THUMB void LinkStateMove::CreateDebugHierarchy() {
    unk32 id = 'LMOV';
    // Breath volume decay rate "息吹きボリューム低下率"
    const char *description = "\x91\xa7\x90\x81\x82\xab\x83{\x83\x8a\x83\x85\x81[\x83\x80\x92\xe1\x89\xba\x97\xa6";

    DebugHierarchy *debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e56f0);

    debugHierarchy->GetChildNode(1, description, id, &data_ov000_020e56f0, 8, 0, 0x1000, 0);
}

ARM void LinkStateMove::OnStateEnter() {
    this->mUnk_0c = 0;
    this->mUnk_10 = 0;
    this->mUnk_12 = 0;
    if (this->mUnk_14 == 0) {
        return;
    }

    EquipItem *sword = this->GetEquipItem(ItemFlag_OshusSword);
    sword->UpdateInUse(1);
    EquipItem *shield = this->GetEquipItem(ItemFlag_WoodenShield);
    shield->UpdateInUse(1);

    PlayerBase::GetEquipSword()->func_ov000_020c06b0(-1);
    data_ov000_020eec9c.func_ov000_020d77e4(0xD);
}

ARM void LinkStateMove::OnStateLeave(s32 param1) {
    LinkStateBase::OnStateLeave(param1);
    this->mUnk_14 = 0;
    this->mUnk_15 = 0;
    this->mUnk_16 = 0;
}

ARM bool LinkStateMove::vfunc_24(s32 param1) {
    if (this->GetHealth() > 0) {
        return LinkStateBase::vfunc_24(param1);
    }
    switch (param1) {
        case 2:
            return true;
        default:
            return false;
    }
}

ARM bool LinkStateMove::func_ov00_020a8f2c() {
    static unk32 data_ov000_020e56f4 = 0x100;
    return this->mUnk_0c > data_ov000_020e56f4;
}

ARM bool LinkStateMove::func_ov00_020a8f4c() {
    if (this->mUnk_15) {
        return false;
    }
    this->mUnk_15 = true;
    this->mUnk_16 = false;
    return true;
}
