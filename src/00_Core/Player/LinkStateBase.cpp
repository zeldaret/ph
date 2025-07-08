#include "Player/LinkStateBase.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Message/MessageManager.hpp"
#include "Player/PlayerControl.hpp"

THUMB void LinkStateBase::vfunc_00() {}

ARM void LinkStateBase::OnStateEnter() {}

ARM void LinkStateBase::OnStateLeave(s32 param1) {}

ARM bool LinkStateBase::vfunc_20(s32 param1) {
    return false;
}

ARM bool LinkStateBase::vfunc_24(s32 param1) {
    bool bVar1;
    bool bVar2;

    bVar1 = false;
    bVar2 = false;

    if (this->func_ov00_020a8b80()) {
        UnkStruct_027e0fd4 *pUnkStruct_027e0fd4 = this->func_ov00_020a8d40();

        if (pUnkStruct_027e0fd4->mUnk_0c8 < 0) {
            bVar2 = true;
        }
    }

    if (bVar2 && this->mLink->mUnk_5a <= 0) {
        bVar1 = true;
    }

    switch (param1) {
        case 0: break;
        case 1: break;
        case 2: break;
        case 3:
        case 6:
        case 7:
            if (bVar1 && PlayerControl::func_ov00_020aeeac()) {
                return true;
            }

            return false;
        case 5:
            if (bVar1 && !this->HasFlags_PlayerLinkBase_Unk48(0x3F) && PlayerControl::func_ov00_020aeeac()) {
                return true;
            }

            return false;
        case 4:
            if (gAdventureFlags->func_ov00_02097bbc()) {
                return false;
            }

            if (gMessageManager.mUnk_04 == 0 && data_027e0f64->mUnk_4->mUnk_15c == 4) {
                return false;
            }

            if (bVar1 && gPlayerControl->func_ov00_020af4a4()) {
                return true;
            }

            return false;
        default: break;
    }

    return true;
}

ARM bool LinkStateBase::vfunc_28() {}
ARM bool LinkStateBase::vfunc_34(Vec3p *param1) {}
ARM void LinkStateBase::GiveControlToLink() {}
ARM void LinkStateBase::SetPlayerCharacter(PlayerCharacter character) {}
ARM void LinkStateBase::ChangeLinkState(LinkStateId id) {}
ARM void LinkStateBase::ChangeLinkSubState(LinkStateId id, s32 subState) {}
ARM void LinkStateBase::EquipItem_vfunc_28() {}
ARM void LinkStateBase::UpdateSwordShieldInUse() {}
ARM void LinkStateBase::func_ov00_020a81b8(unk32 param1, unk32 param2) {}
ARM LinkStateItem *LinkStateBase::GetLinkItemState() {}
ARM void LinkStateBase::LookAt(Vec3p *target) {}
ARM void LinkStateBase::func_ov00_020a81fc(Vec3p *param1, unk32 param2) {}
ARM void LinkStateBase::AddHealth(s16 amount) {}
ARM void LinkStateBase::func_ov00_020a8224(unk32 param1) {}
ARM void LinkStateBase::TurnTo(s16 angle, unk32 param2, unk32 speed) {}
ARM void LinkStateBase::func_ov00_020a827c(s32 param1, u32 param2) {}
ARM void LinkStateBase::func_ov00_020a8294(s32 param1, u32 param2) {}
ARM void LinkStateBase::func_ov00_020a82ac() {}
ARM void LinkStateBase::ApplyImpulse(s32 angle, s32 power) {}
ARM void LinkStateBase::func_ov00_020a8360(unk32 param1) {}
ARM void LinkStateBase::func_ov00_020a8390(unk32 param1, void *param2) {}
ARM void LinkStateBase::func_ov00_020a84bc(s32 param1) {}
ARM void LinkStateBase::func_ov00_020a8508() {}
ARM void LinkStateBase::func_ov00_020a853c(Vec3p *param1) {}
ARM void LinkStateBase::Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5) {}
ARM void LinkStateBase::PlayerBase_vfunc_38(Vec3p *pos) {}
ARM void LinkStateBase::PlayerLinkBase_vfunc_74() {}
ARM void LinkStateBase::PlayerLinkBase_vfunc_88() {}
ARM unk16 LinkStateBase::Get_PlayerLinkBase_Unk48() {}
ARM bool LinkStateBase::func_ov00_020a8638(unk32 param1) {}
ARM void LinkStateBase::Clear_PlayerLinkBase_Unk48(u16 flags) {}
ARM void LinkStateBase::func_ov00_020a8680(unk32 param1, unk16 param2, bool param3) {}
ARM void LinkStateBase::PlayerLinkBase_func_ov00_020bccc8() {}
ARM bool LinkStateBase::PlayerLinkBase_vfunc_58(unk32 param1, ActorRef *param2) {}
ARM bool LinkStateBase::func_ov00_020a8704(s16 *pAngle) {}
ARM bool LinkStateBase::func_ov00_020a8774(Vec3p *param1, s32 angle) {}
ARM void LinkStateBase::func_ov00_020a8844(Vec3p *param1, bool param2, bool param3) {}
ARM void LinkStateBase::func_ov00_020a8954(bool param1, unk32 *param2) {}
ARM void LinkStateBase::func_ov00_020a8994() {}
ARM void LinkStateBase::func_ov00_020a89bc(LinkStateBase_UnkStruct1 *param1, unk32 param2) {}
ARM void LinkStateBase::func_ov00_020a8a08(unk32 param1) {}
ARM void LinkStateBase::func_ov00_020a8a4c(const void *param1, unk32 param2) {}
ARM void LinkStateBase::func_ov00_020a8a90(unk32 param1) {}
ARM void LinkStateBase::func_ov00_020a8ab0(unk32 param1) {}
ARM void LinkStateBase::func_ov00_020a8ad0(unk32 param1) {}
ARM void LinkStateBase::func_ov00_020a8b04(s32 param1, bool param2) {}
ARM unk32 LinkStateBase::func_ov00_020a8b3c(s32 param1) {}
ARM bool LinkStateBase::func_ov00_020a8b80() {}
ARM bool LinkStateBase::HasFlags_PlayerLinkBase_Unk48(u16 flags) {}
ARM unk8 LinkStateBase::Get_PlayerLinkBase_Unk5e() {}
ARM unk32 LinkStateBase::Get_PlayerControlData_Unk004() {}
ARM PlayerCharacter LinkStateBase::GetCurrentCharacter() {}
ARM PlayerControlData *LinkStateBase::GetPlayerControlData() {}
ARM LinkStateId LinkStateBase::GetStateId() {}
ARM s32 LinkStateBase::GetHealth() {}
ARM s32 LinkStateBase::GetCurrentCharacterHealth() {}
ARM bool LinkStateBase::func_ov00_020a8c34() {}
ARM Vec3p *LinkStateBase::GetPlayerPos() {}
ARM Vec3p *LinkStateBase::GetPlayerVel() {}
ARM unk8 *LinkStateBase::func_ov00_020a8c64() {}
ARM s16 *LinkStateBase::GetPlayerAngle() {}
ARM void *LinkStateBase::GetPlayer_Unk18() {}
ARM s32 LinkStateBase::Get_PlayerControlData_Unk32() {}
ARM Actor *LinkStateBase::GetGrabActor() {}
ARM ActorRef *LinkStateBase::GetGrabActorRef() {}
ARM unk32 LinkStateBase::Grab() {}
ARM s32 LinkStateBase::Get_PlayerLinkBase_Unk44() {}
ARM bool LinkStateBase::IsEquipBeingUsed(ItemFlag id) {}
ARM EquipItem *LinkStateBase::GetEquipItem(ItemFlag id) {}
ARM UnkStruct_027e0fd4 *LinkStateBase::func_ov00_020a8d40() {}
ARM unk32 LinkStateBase::func_ov00_020a8d50() {}
ARM unk32 LinkStateBase::func_ov00_020a8d6c() {}
ARM s32 LinkStateBase::PlayerControlData_vfunc_14(s32 param1) {}
ARM unk32 LinkStateBase::Get_PlayerControlData_Unk100() {}
ARM unk32 LinkStateBase::Get_PlayerControlData_Unk120() {}
ARM s32 LinkStateBase::Get_PlayerLinkBase_Unk38() {}
ARM DebugHierarchy *LinkStateBase::GetDebugHierarchy0() {}
ARM DebugHierarchy *LinkStateBase::GetDebugHierarchy1() {}
