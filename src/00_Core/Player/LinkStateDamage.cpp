#include "Player/LinkStateDamage.hpp"

unk32 LinkStateDamage::data_ov000_020e5ae0 = 0x1000;
unk32 LinkStateDamage::data_ov000_020e5aec = 6;
unk32 LinkStateDamage::data_ov000_020e5af0 = 12;
unk32 LinkStateDamage::data_ov000_020e5af4 = 0x1800;
unk32 LinkStateDamage::data_ov000_020e5af8 = 0;
unk32 LinkStateDamage::data_ov000_020e5afc = 0xa000;
unk32 LinkStateDamage::data_ov000_020e5b00 = 13;
unk32 LinkStateDamage::data_ov000_020e5b04 = 0x1800;
unk32 LinkStateDamage::data_ov000_020e5b08 = 0;
unk32 LinkStateDamage::data_ov000_020e5b0c = 0xa000;

THUMB void LinkStateDamage::vfunc_00() {}
THUMB void LinkStateDamage::CreateDebugHierarchy() {
    unk32 id = 'LDMG';

    s32 unk1 = this->PlayerControlData_vfunc_14(data_ov000_020e5af0);

    // Front minor damage regeneration speed "前小ダメ再生速度"
    const char *description1 = "\x91O\x8f\xac\x83_\x83\x81\x8d\xc4\x90\xb6\x91\xac\x93x\x00\x00\x00\x00";

    // Front minor damage start frame "前小ダメ開始フレーム"
    const char *description2 = "\x91O\x8f\xac\x83_\x83\x81\x8aJ\x8en\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    // Front minor damage end frame "前小ダメ終了フレーム"
    const char *description3 = "\x91O\x8F\xAC\x83_\x83\x81\x8FI\x97\xB9\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    DebugHierarchy *debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5af4);
    debugHierarchy->GetChildNode(1, description1, id, &data_ov000_020e5af4, 8, 0, 0x2000, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5af8);
    debugHierarchy->GetChildNode(1, description2, id, &data_ov000_020e5af8, 8, 0, unk1 / 2, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5afc);
    debugHierarchy->GetChildNode(1, description3, id, &data_ov000_020e5afc, 8, unk1 / 2, unk1, 0);
    unk1 = this->PlayerControlData_vfunc_14(data_ov000_020e5b00);

    // Back minor damage regeneration speed "後小ダメ再生速度"
    const char *description4 = "\x8c\xE3\x8F\xAC\x83_\x83\x81\x8D\xC4\x90\xB6\x91\xAC\x93x\x00\x00\x00\x00";

    // Back minor damage start frame "後小ダメ開始フレーム"
    const char *description5 = "\x8C\xE3\x8F\xAC\x83_\x83\x81\x8AJ\x8En\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    // Back minor damage end frame "後小ダメ終了フレーム"
    const char *description6 = "\x8C\xE3\x8F\xAC\x83_\x83\x81\x8FI\x97\xB9\x83t\x83\x8c\x81[\x83\x80\x00\x00\x00\x00";

    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5b04);
    debugHierarchy->GetChildNode(1, description4, id, &data_ov000_020e5b04, 8, 0, 0x2000, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5b08);
    debugHierarchy->GetChildNode(1, description5, id, &data_ov000_020e5b08, 8, 0, unk1 / 2, 0);
    debugHierarchy = this->GetDebugHierarchy0();
    debugHierarchy->vfunc_3c(id, &data_ov000_020e5b0c);
    debugHierarchy->GetChildNode(1, description6, id, &data_ov000_020e5b0c, 8, unk1 / 2, unk1, 0);

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
void LinkStateDamage::func_ov00_020ac9e4(unk32 param1) {}
ARM void LinkStateDamage::func_ov00_020aca50() {
    Vec3p new_pos;

    PlayerControlData *ctrlData = GetPlayerControlData();
    Vec3p *pos                  = GetPlayerPos();
    Vec3p_Add(pos, &ctrlData->mUnk_01c, &new_pos);
    mUnk_3c.SetTranslation(&new_pos);
    return;
}
void LinkStateDamage::func_ov00_020aca94() {}
void LinkStateDamage::vfunc_30(unk32 param1) {}
void LinkStateDamage::func_ov00_020acb6c(Vec3p *param1, unk32 param2) {}
ARM void LinkStateDamage::SetKnockback(Vec3p *knockbackVec, unk32 param2) {
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
    if (param1 != 2) {
        return mUnk_18 != 13;
    }
    return false;
}
bool LinkStateDamage::vfunc_20(s32 param1) {}
void LinkStateDamage::func_ov00_020acfe8(bool param1) {}
ARM LinkStateId LinkStateDamage::GetId() {
    return LinkStateId_Damage;
}

const char unkString[20] = "link_ice1";
