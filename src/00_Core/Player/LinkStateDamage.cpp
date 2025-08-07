#include "Player/LinkStateDamage.hpp"
#include "Game/Game.hpp"
#include "Unknown/UnkStruct_ov000_020e9c88.hpp"

unk32 LinkStateDamage::data_ov000_020e5ae0                    = 0x1000;
unk32 LinkStateDamage::data_ov000_020e5aec                    = 6;
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5af0 = {12, {0x1800, 0, 0xa000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b00 = {13, {0x1800, 0, 0xa000}};

const char linkFrozenMaterialName[20] = "link_ice1";

THUMB void LinkStateDamage::vfunc_00() {}
THUMB void LinkStateDamage::CreateDebugHierarchy() {
    unk32 id = 'LDMG';

    s32 unk1 = this->PlayerControlData_vfunc_14(data_ov000_020e5af0.mUnk_00);

    // Front minor damage regeneration speed "前小ダメ再生速度"
    const char *description1 = "\x91O\x8f\xac\x83_\x83\x81\x8d\xc4\x90\xb6\x91\xac\x93x\x00\x00\x00\x00";

    // Front minor damage start frame "前小ダメ開始フレーム"
    const char *description2 = "\x91O\x8f\xac\x83_\x83\x81\x8aJ\x8en\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    // Front minor damage end frame "前小ダメ終了フレーム"
    const char *description3 = "\x91O\x8F\xAC\x83_\x83\x81\x8FI\x97\xB9\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    DebugHierarchy *debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5af0.mUnk_04.x);
    debugHierarchy->GetChildNode(1, description1, id, &data_ov000_020e5af0.mUnk_04.x, 8, 0, 0x2000, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5af0.mUnk_04.y);
    debugHierarchy->GetChildNode(1, description2, id, &data_ov000_020e5af0.mUnk_04.y, 8, 0, unk1 / 2, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5af0.mUnk_04.z);
    debugHierarchy->GetChildNode(1, description3, id, &data_ov000_020e5af0.mUnk_04.z, 8, unk1 / 2, unk1, 0);
    unk1 = this->PlayerControlData_vfunc_14(data_ov000_020e5b00.mUnk_00);

    // Back minor damage regeneration speed "後小ダメ再生速度"
    const char *description4 = "\x8c\xE3\x8F\xAC\x83_\x83\x81\x8D\xC4\x90\xB6\x91\xAC\x93x\x00\x00\x00\x00";

    // Back minor damage start frame "後小ダメ開始フレーム"
    const char *description5 = "\x8C\xE3\x8F\xAC\x83_\x83\x81\x8AJ\x8En\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    // Back minor damage end frame "後小ダメ終了フレーム"
    const char *description6 = "\x8C\xE3\x8F\xAC\x83_\x83\x81\x8FI\x97\xB9\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5b00.mUnk_04.x);
    debugHierarchy->GetChildNode(1, description4, id, &data_ov000_020e5b00.mUnk_04.x, 8, 0, 0x2000, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5b00.mUnk_04.y);
    debugHierarchy->GetChildNode(1, description5, id, &data_ov000_020e5b00.mUnk_04.y, 8, 0, unk1 / 2, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5b00.mUnk_04.z);
    debugHierarchy->GetChildNode(1, description6, id, &data_ov000_020e5b00.mUnk_04.z, 8, unk1 / 2, unk1, 0);

    // Number of tears [verb] "ビリビリ回数"
    const char *description7 = "\x83r\x83\x8A\x83r\x83\x8A\x89\xF1\x90\x94\x00\x00\x00\x00";

    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->GetChildNode(0, description7, id, &data_ov000_020e5aec, 6, 0, 0x14, 0);

    // Tear [verb] playback speed "ビリビリ再生速度"
    const char *description8 = "\x83r\x83\x8A\x83r\x83\x8A\x8D\xC4\x90\xB6\x91\xAC\x93x\x00\x00\x00\x00";

    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5ae0);
    debugHierarchy->GetChildNode(1, description8, id, &data_ov000_020e5ae0, 8, 0, 0x2000, 0);
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy1();
}
void LinkStateDamage::OnStateEnter() {}
void LinkStateDamage::OnStateLeave(s32 param1) {}
ARM void LinkStateDamage::func_ov00_020ac9e4(unk32 param1) {
    bool unkBool = func_ov005_02110f50(this->mUnk_30, param1, this->mUnk_22, (u32 *) this->mUnk_b0);
    if (!unkBool) {
        ChangeLinkState(LinkStateId_Move);
        return;
    }
    s32 unkInt                 = mUnk_2c;
    UnkStruct_027e0fd4 *unkPtr = func_ov00_020a8d40();
    unkPtr->mUnk_09c           = unkInt;
    s32 unkInt_2               = data_027e0d38->mUnk_0c.func_ov000_020a5e9c();
    if (unkInt_2 != 47) {
        return;
    }
    func_ov005_0210f7b8();
    return;
}
ARM void RespawnLink(LinkStateDamage *linkState) {
    Vec3p new_pos;

    PlayerControlData *ctrlData = linkState->GetPlayerControlData();
    Vec3p *pos                  = linkState->GetPlayerPos();
    Vec3p_Add(pos, &ctrlData->lastJumpLocation, &new_pos);
    linkState->mUnk_3c.SetTranslation(&new_pos);
    return;
}

void LinkStateDamage::SetLinkFrozen() {}

ARM void LinkStateDamage::vfunc_30(unk32 param1) {
    if (mUnk_18 == 6) {
        Vec3p *playerPos = GetPlayerPos();
        Vec3p unkPos;
        unkPos.x = playerPos->x;
        unkPos.y = playerPos->y;
        unkPos.z = playerPos->z;
        unkPos.y += 0x999;
        data_ov000_020e9c88.func_ov000_0207b89c(param1, &unkPos, (void (*)(void *)) &RespawnLink, this);
        return;
    }
    return;
}

void LinkStateDamage::func_ov00_020acb6c(Vec3p *param1, unk32 param2) {}
ARM void LinkStateDamage::Knockback(Vec3p *knockbackVec, unk32 param2) {
    this->mUnk_18     = 2;
    Vec3p *playerVel  = GetPlayerVel();
    playerVel->x      = knockbackVec->x;
    playerVel->y      = knockbackVec->y;
    playerVel->z      = knockbackVec->z;
    s16 groundAngle   = FX_Atan2Idx(knockbackVec->x, knockbackVec->z);
    s16 *playerAngle  = GetPlayerAngle();
    *playerAngle      = groundAngle - 0x8000;
    this->mUnk_24[12] = 0;
    this->mUnk_22     = param2;
    return;
}
ARM bool LinkStateDamage::vfunc_24(s32 param1) {
    if (param1 == 2) {
        return mUnk_18 != 0xd;
    }
    if (param1 != 3) {
        return false;
    }
    return false;
}
ARM bool LinkStateDamage::vfunc_20(s32 param1) {
    bool unk1 = LinkStateBase::func_ov00_020a8b80();
    if (unk1) {
        s32 health = LinkStateBase::GetCurrentCharacterHealth();
        if (health <= 0) {
            if (gGame.mModeId == 2) {
                Vec3p *vel = LinkStateBase::GetPlayerVel();
                if (0 >= vel->y) {
                    u32 unk2;
                    if (gItemManager->HasPurplePotion()) {
                        mUnk_18 = 0xe;
                    } else {
                        mUnk_18 = 0xf;
                    }
                    LinkStateBase::func_ov00_020a82ac();
                } else {
                    return 0;
                }
            } else {
                LinkStateBase::func_ov00_020a82ac();
                mUnk_18 = 0xe;
            }
            return 1;
        }
        if (0 < mUnk_32) {
            LinkStateBase::func_ov00_020a82ac();
            mUnk_18 = 0xe;
            return 1;
        }
    }
    return 0;
}
ARM void LinkStateDamage::func_ov00_020acfe8(bool param1) {
    if (param1) {
        LinkStateBase::func_ov00_020a8a4c(&data_ov000_020e5b00, 1);
        return;
    }
    LinkStateBase::func_ov00_020a8a4c(&data_ov000_020e5af0, 1);
    return;
}
ARM LinkStateId LinkStateDamage::GetId() {
    return LinkStateId_Damage;
}
