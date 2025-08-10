#include "Player/LinkStateDamage.hpp"
#include "Game/Game.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_ov000_020e9c88.hpp"

extern "C" unk32 func_0201e388(void *param1, const char *param2);
extern "C" void func_02019534(void *model, unk32 param1, unk32 param2);

static char *gShipParts[8] = {"brg", "anc", "pdl", "hul", "can", "dco", "bow", "fnl"};

THUMB void LinkStateDamage::vfunc_00() {}

LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5acc = {74, {0x1000, 0, 0x3E000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5adc = {43, {0x1000, 0, 0x5000}};
unk32 LinkStateDamage::data_ov000_020e5aec                    = 6;
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5af0 = {12, {0x1800, 0, 0xa000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b00 = {13, {0x1800, 0, 0xa000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b10 = {12, {0x1000, 0, 0xa000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b20 = {13, {0x1000, 0, 0xa000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b30 = {39, {0x1000, 0, 0x2000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b40 = {10, {0x800, 0, 0x4000}};
LinkStateBase_UnkStruct1 LinkStateDamage::data_ov000_020e5b50 = {84, {0x1000, 0, 0x19000}};

THUMB void LinkStateDamage::CreateDebugHierarchy() {
    unk32 id = 'LDMG';

    s32 unk1 = this->PlayerControlData_vfunc_14(data_ov000_020e5af0.mUnk_00);

    // Front minor damage regeneration speed "前小ダメ再生速度"
    const char *description1 = "\x91O\x8f\xac\x83_\x83\x81\x8d\xc4\x90\xb6\x91\xac\x93x\x00\x00\x00";

    // Front minor damage start frame "前小ダメ開始フレーム"
    const char *description2 = "\x91O\x8f\xac\x83_\x83\x81\x8aJ\x8en\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00";

    // Front minor damage end frame "前小ダメ終了フレーム"
    const char *description3 = "\x91O\x8F\xAC\x83_\x83\x81\x8FI\x97\xB9\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00";

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
    const char *description4 = "\x8c\xE3\x8F\xAC\x83_\x83\x81\x8D\xC4\x90\xB6\x91\xAC\x93x\x00\x00\x00";

    // Back minor damage start frame "後小ダメ開始フレーム"
    const char *description5 = "\x8C\xE3\x8F\xAC\x83_\x83\x81\x8AJ\x8En\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00";

    // Back minor damage end frame "後小ダメ終了フレーム"
    const char *description6 = "\x8C\xE3\x8F\xAC\x83_\x83\x81\x8FI\x97\xB9\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00";

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
    const char *description7 = "\x83r\x83\x8A\x83r\x83\x8A\x89\xF1\x90\x94\x00\x00\x00";

    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->GetChildNode(0, description7, id, &data_ov000_020e5aec, 6, 0, 0x14, 0);

    // Tear [verb] playback speed "ビリビリ再生速度"
    const char *description8 = "\x83r\x83\x8A\x83r\x83\x8A\x8D\xC4\x90\xB6\x91\xAC\x93x\x00\x00\x00";

    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5adc.mUnk_04.x);
    debugHierarchy->GetChildNode(1, description8, id, &data_ov000_020e5adc.mUnk_04.x, 8, 0, 0x2000, 0);
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy0();
    this->GetDebugHierarchy1();
}

ARM void LinkStateDamage::OnStateEnter() {
    this->func_ov00_020a8a4c(&data_ov000_020e5b10, 1);
    this->func_ov00_020a8a4c(&data_ov000_020e5b20, 1);
    this->func_ov00_020a8a4c(&data_ov000_020e5b30, 1);
    this->func_ov00_020a8a4c(&data_ov000_020e5b40, 1);
    this->func_ov00_020a8a4c(&data_ov000_020e5b50, 1);
}

ARM void LinkStateDamage::OnStateLeave(s32 param1) {}

ARM void LinkStateDamage::func_ov00_020ac9e4(unk32 param1) {
    if (!this->func_ov005_02110f50(this->mUnk_30, param1, this->mUnk_22, (u32 *) this->mUnk_b0)) {
        this->ChangeLinkState(LinkStateId_Move);
    } else {
        s32 unkInt                 = mUnk_2c;
        UnkStruct_027e0fd4 *unkPtr = this->func_ov00_020a8d40();
        unkPtr->mUnk_09c           = unkInt;
        if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 47) {
            this->func_ov005_0210f7b8();
        }
    }
}

ARM void RespawnLink(LinkStateDamage *linkState) {
    Vec3p new_pos;

    PlayerControlData *ctrlData = linkState->GetPlayerControlData();
    Vec3p *pos                  = linkState->GetPlayerPos();
    Vec3p_Add(pos, &ctrlData->mLastJumpLocation, &new_pos);
    linkState->mUnk_3c.SetTranslation(&new_pos);
}

#pragma readonly_strings on
ARM void LinkStateDamage::SetLinkFrozenMaterial() {
    void *model         = mUnk_3c.GetLcdcAddress();
    u32 materialsOffset = *(u32 *) ((u32) model + 8);
    void *materialList  = (void *) ((u32) model + materialsOffset + 4);
    unk32 unkVar1       = func_0201e388(materialList, "link_ice1");
    unk32 unkVar2       = data_ov000_020e9360.func_ov000_02079e68(1);
    void *model2        = mUnk_3c.GetLcdcAddress();
    func_02019534(model2, unkVar1, unkVar2);
}
#pragma readonly_strings reset

ARM void LinkStateDamage::vfunc_30(unk32 param1) {
    if (mUnk_18 == 6) {
        Vec3p *playerPos = this->GetPlayerPos();
        Vec3p unkPos;
        unkPos.x = playerPos->x;
        unkPos.y = playerPos->y;
        unkPos.z = playerPos->z;
        unkPos.y += 0x999;
        data_ov000_020e9c88.func_ov000_0207b89c(param1, &unkPos, (void (*)(void *)) &RespawnLink, this);
    }
}

ARM void LinkStateDamage::func_ov00_020acb6c(Vec3p *param1, unk32 param2) {}

ARM void LinkStateDamage::Knockback(Vec3p *knockbackVec, unk32 param2) {
    this->mUnk_18     = 2;
    Vec3p *playerVel  = this->GetPlayerVel();
    playerVel->x      = knockbackVec->x;
    playerVel->y      = knockbackVec->y;
    playerVel->z      = knockbackVec->z;
    s16 groundAngle   = FX_Atan2Idx(knockbackVec->x, knockbackVec->z);
    s16 *playerAngle  = this->GetPlayerAngle();
    *playerAngle      = groundAngle - 0x8000;
    this->mUnk_24[12] = 0;
    this->mUnk_22     = param2;
}

ARM bool LinkStateDamage::vfunc_24(s32 param1) {
    switch (param1) {
        case 3:
            return false;
        case 2:
            return mUnk_18 != 0xd;
        default:
            break;
    }

    return false;
}

ARM bool LinkStateDamage::vfunc_20(s32 param1) {
    if (this->func_ov00_020a8b80()) {
        if (this->GetCurrentCharacterHealth() <= 0) {
            if (gGame.mModeId == 2) {
                if (this->GetPlayerVel()->y <= 0) {
                    if (gItemManager->HasPurplePotion()) {
                        mUnk_18 = 0xe;
                    } else {
                        mUnk_18 = 0xf;
                    }
                    this->func_ov00_020a82ac();
                } else {
                    return false;
                }
            } else {
                this->func_ov00_020a82ac();
                mUnk_18 = 0xe;
            }
            return true;
        }
        if (mUnk_32 > 0) {
            this->func_ov00_020a82ac();
            mUnk_18 = 0xe;
            return true;
        }
    }
    return false;
}

ARM void LinkStateDamage::func_ov00_020acfe8(bool param1) {
    if (param1) {
        this->func_ov00_020a8a4c(&data_ov000_020e5b00, 1);
    } else {
        this->func_ov00_020a8a4c(&data_ov000_020e5af0, 1);
    }
}

ARM LinkStateId LinkStateDamage::GetId() {
    return LinkStateId_Damage;
}
