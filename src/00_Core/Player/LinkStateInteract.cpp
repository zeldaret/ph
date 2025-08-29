#include "Player/LinkStateInteract.hpp"
#include "Player/PlayerControl.hpp"
#include "Unknown/UnkStruct_020eec9c.hpp"

static char *sShipTypes[] = {"brg", "anc", "bow", "hul", "can", "dco", "pdl", "fnl"};

THUMB void LinkStateInteract::vfunc_00() {}

ARM LinkStateId LinkStateInteract::GetId() {
    return LinkStateId_Interact;
}

ARM s32 LinkStateInteract::GetGrabActorId() {
    switch (mSubState) {
        case 7:
        case 8:
        case 9:
            return mGrabRef.id;
        default:
            return -1;
    }
}

static unk32 data_ov000_020e5928                    = 0x2;
static LinkStateBase_UnkStruct1 data_ov000_020e592c = {0x1d, {0x1666, 0x0, 0x5000}};
static LinkStateBase_UnkStruct1 data_ov000_020e593c = {0x1e, {0x1999, 0x2000, 0xa000}};
static LinkStateBase_UnkStruct1 data_ov000_020e594c = {0x1e, {0xffffe800, 0xa000, 0x0}};
static LinkStateBase_UnkStruct1 data_ov000_020e595c = {0x22, {0x1000, 0x0, 0xf000}};

THUMB void LinkStateInteract::CreateDebugHierarchy() {
    u32 dVar1;
    DebugHierarchy *piVar2;
    DebugHierarchy *piVar3;
    int iVar4;

    const char *fieldName;

    fieldName = "\x8e\x9d\x82\xbf\x8f\xe3\x82\xb0\x8d\xc4\x90\xb6\x9a\xac\x93x";
    piVar2    = this->GetDebugHierarchy0();
    piVar2->vfunc_3c('LGRB', &data_ov000_020e593c.mUnk_04.x);
    // Lift playback speed "持ち上げ再生速度"
    piVar2->GetChildNode(1, fieldName, 'LGRB', &data_ov000_020e593c.mUnk_04.x, 8, 0, 0x3000, 0);

    fieldName = "\x8e\x9d\x82\xbf\x8f\xe3\x82\xb0\x8AJ\x8en\x8et\x8e\x8c\x81[\x83\x80";
    iVar4     = (int) data_ov000_020e593c.mUnk_04.z / 2;
    piVar3    = this->GetDebugHierarchy0();
    piVar3->vfunc_3c('LGRB', &data_ov000_020e593c.mUnk_04.y);
    // Lift start frame "持ち上げ開始フレーム"
    piVar3->GetChildNode(1, fieldName, 'LGRB', &data_ov000_020e593c.mUnk_04.y, 8, 0, iVar4, 0);

    fieldName = "\x8e\x9d\x82\xbf\x8f\xe3\x82\xb9\x8fI\x97\xb9\x8et\x83\x8c\x81[\x83\x80";
    dVar1     = data_ov000_020e593c.mUnk_04.z;
    piVar3    = this->GetDebugHierarchy0();
    piVar3->vfunc_3c('LGRB', &data_ov000_020e593c.mUnk_04.z);
    // Lift end frame "持ち上げ終了フレーム"
    piVar3->GetChildNode(1, fieldName, 'LGRB', &data_ov000_020e593c.mUnk_04.z, 8, (int) dVar1 / 2, dVar1, 0);

    iVar4 = this->PlayerControlData_vfunc_14(data_ov000_020e595c.mUnk_00);

    fieldName = "\x93\x8a\x82\xb0\x8d\xc4\x90\xb6\x91\xac\x93x";
    piVar3    = this->GetDebugHierarchy0();
    piVar3->vfunc_3c('LGRB', &data_ov000_020e595c.mUnk_04.x);
    // Throw playback speed "投げ再生速度"
    piVar3->GetChildNode(1, fieldName, 'LGRB', &data_ov000_020e595c.mUnk_04.x, 8, 0, 0x3000, 0);

    fieldName = "\x93\x8a\x82\xb0\x8aJ\x8en\x83t\x83\x8c\x81[\x83\x80";
    piVar3    = this->GetDebugHierarchy0();
    piVar3->vfunc_3c('LGRB', &data_ov000_020e595c.mUnk_04.y);
    // Throw start frame "投げ開始フレーム"
    piVar3->GetChildNode(1, fieldName, 'LGRB', &data_ov000_020e595c.mUnk_04.y, 8, 0, iVar4 / 2, 0);

    fieldName = "\x93\x8a\x82\xb9\x8fI\x97\xb9\x83t\x83\x8c\x81[\x83\x80";
    piVar3    = this->GetDebugHierarchy0();
    piVar3->vfunc_3c('LGRB', &data_ov000_020e595c.mUnk_04.z);
    // Throw end frame "投げ終了フレーム"
    piVar3->GetChildNode(1, fieldName, 'LGRB', &data_ov000_020e595c.mUnk_04.z, 8, iVar4 / 2, iVar4, 0);
    this->GetDebugHierarchy0();

    fieldName = "\x92\xe2\x8e~\x8e\x9e\x8a\xd4";
    iVar4     = data_ov000_020e5928 << 1;
    piVar3    = this->GetDebugHierarchy0();
    // Stop time "停止時間"
    piVar3->GetChildNode(0, fieldName, 'LPSH', &data_ov000_020e5928, 6, 0, iVar4, 0);
    this->LinkStateBase::GetDebugHierarchy0();
    return;
}

ARM void LinkStateInteract::OnStateEnter() {
    if (mSubState != 6) {
        this->func_ov00_020a82ac();
        this->EquipItem_vfunc_28();
    }
    switch (mSubState) {
        case 0:
            this->ChangeLinkState(0);
            break;
        case 1:
            gPlayerControl->SetUnk_80();
            this->func_ov00_020a8a4c(&data_ov000_020e592c, 1);
            break;
        case 2:
            this->func_ov00_020a8a4c(&data_ov000_020e593c, 1);
            break;
        case 3:
        case 4:
            if (this->GetGrabActor() != NULL) {
                data_ov000_020eec9c.func_ov000_020d7b20(0x125, this->GetPlayerPos());
                s16 angle               = FX_Atan2Idx(mThrowOffset.x, mThrowOffset.z);
                *this->GetPlayerAngle() = angle;
                this->func_ov00_020a89bc(&data_ov000_020e595c, 1);
            } else {
                this->func_ov00_020a8994();
            }
            break;
        case 5:
            if (this->GetGrabActor() != NULL) {
                s16 angle               = FX_Atan2Idx(mThrowOffset.x, mThrowOffset.z);
                *this->GetPlayerAngle() = angle;
                this->func_ov00_020a8a4c(&data_ov000_020e594c, 1);
            } else {
                this->ChangeLinkState(0);
            }
            break;
        case 7:
            gPlayerControl->SetUnk_80();
            if (gActorManager->GetActor(&mGrabRef) != NULL) {
                *this->Get_PlayerLinkBase_Unk44() = 0;
            } else {
                this->ChangeLinkState(0);
            }
            mUnk_24.func_020350b4(1, 0, 0, 0, 0);
            mUnk_24.func_020351b8(0, 0, 0, 0);
            mUnk_b2 = false;
            break;
        case 8:
            if (mUnk_b0) {
                *this->Get_PlayerLinkBase_Unk44() = 1;
            }
            mUnk_0c = data_ov000_020e5928;
            break;
        case 9:
            if (mUnk_b1) {
                *this->Get_PlayerLinkBase_Unk44() = -1;
            }
            mUnk_0c = data_ov000_020e5928;
            break;
        case 6:
            gPlayerControl->SetUnk_80();
            break;
        default:
            this->ChangeLinkState(0);
            break;
    }
    if (mSubState != 7) {
        mUnk_ac = mSubState;
    }
}

ARM void LinkStateInteract::OnStateLeave(s32 param1) {
    LinkStateBase::OnStateLeave(param1);
    if (gPlayerControl->mUnk_80) {
        gPlayerControl->StopFollowing();
    }
    Actor *actor = this->GetGrabActor();
    if (mSubState != 1) {
        return;
    }
    if (actor == NULL) {
        return;
    }
    if (actor->mGrabbed) {
        return;
    }
    this->GetGrabActorRef()->Reset();
}

ARM bool LinkStateInteract::func_ov00_020aa818() {
    ItemManager *temp_r4 = gItemManager;
    ActorNaviBase *fairy = temp_r4->GetFairy(temp_r4->GetEquippedFairy());
    fairy->func_ov000_020ba458();
}

void LinkStateInteract::func_ov00_020aa844(Actor *param1) {}
bool LinkStateInteract::vfunc_20(s32 param1) {}
LinkStateRoll *LinkStateInteract::GetLinkStateRoll() {}
bool LinkStateInteract::vfunc_24(s32 param1) {}
bool LinkStateInteract::vfunc_34(Vec3p *param1) {}
void LinkStateInteract::SetGrabActorVelocity(Vec3p *velocity) {}
void LinkStateInteract::SetBombVelocity(Vec3p *velocity) {}
void LinkStateInteract::func_ov00_020ab6c8() {}
unk32 LinkStateInteract::func_ov00_020ab770(Vec3p *param1) {}
unk32 LinkStateInteract::func_ov00_020ab7bc(Vec3p *param1, Actor *actor) {}
void LinkStateInteract::SetNormalizedThrowOffset(Vec3p *target) {}
void LinkStateInteract::SetThrowOffset(Vec3p *target) {}
void LinkStateInteract::func_ov00_020ab934(Vec3p *target) {}
void LinkStateInteract::func_ov00_020ab97c(Vec3p *target) {}
void LinkStateInteract::func_ov00_020ab9b8(u32 param1, bool param2) {}
void LinkStateInteract::Grab(ActorRef *ref) {}
void LinkStateInteract::func_ov00_020abba0(ActorRef *ref) {}
void LinkStateInteract::func_ov00_020abbdc(ActorRef *ref) {}
void LinkStateInteract::func_ov00_020abc18(ActorRef *ref) {}
bool LinkStateInteract::func_ov00_020abc40() {}
bool LinkStateInteract::func_ov00_020abc78(ActorRef *ref) {}
