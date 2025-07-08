#include "Player/LinkStateBase.hpp"
#include "Actor/ActorSpawner.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerControl.hpp"

extern "C" void ApproachAngle_thunk(s16 *src, s16 dst, u32 param3);
extern "C" void func_ov000_020b1a4c(Vec3p *, Vec3p *);
extern "C" void func_ov000_0207c5d4(unk32 *, unk32, s32);
extern unk32 *data_027e0e58;

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

ARM bool LinkStateBase::vfunc_28() {
    return true;
}

ARM bool LinkStateBase::vfunc_34(Vec3p *param1) {
    return false;
}

ARM void LinkStateBase::GiveControlToLink() {}

ARM void LinkStateBase::SetPlayerCharacter(PlayerCharacter character) {
    this->mLink->SetPlayerCharacter(character);
}

ARM void LinkStateBase::ChangeLinkState(LinkStateId id) {
    this->mLink->ChangeLinkState(id);
}

ARM void LinkStateBase::ChangeLinkSubState(LinkStateId id, s32 subState) {
    this->mLink->SetLinkSubState(id, subState);
}

ARM void LinkStateBase::EquipItem_vfunc_28() {
    for (s32 i = 0; i < 11; i++) {
        EquipItem *pEquipItem = gItemManager->GetEquipItem(i);

        if (pEquipItem != NULL) {
            pEquipItem->UpdateInUse(0);
        }
    }
}

ARM void LinkStateBase::UpdateSwordShieldInUse() {
    gItemManager->UpdateSwordShieldInUse();
}

ARM void LinkStateBase::func_ov00_020a81b8(unk32 param1, s32 *param2) {
    this->GetLinkItemState()->func_ov005_02106980(0, param1, param2);
}

ARM LinkStateItem *LinkStateBase::GetLinkItemState() {
    return (LinkStateItem *) GetLinkState(LinkStateId_Item);
}

ARM void LinkStateBase::LookAt(Vec3p *target) {
    this->mLink->LookAt(target);
}

ARM void LinkStateBase::func_ov00_020a81fc(Vec3p *param1, unk32 param2) {
    this->mLink->func_ov000_020bb810(param1, param2);
}

ARM void LinkStateBase::AddHealth(s16 amount) {
    this->mLink->AddHealth(amount);
}

ARM void LinkStateBase::func_ov00_020a8224(unk32 param1) {
    this->mLink->func_ov000_020bbbd0(param1, 1);
}

ARM void LinkStateBase::TurnTo(s16 angle, unk32 param2, unk32 speed) {
    ApproachAngle_thunk(&gPlayerAngle, angle, speed);

    //! TODO: optimization or conversion macro?
    gPlayerControlData->func_ov000_020b4558((param2 - gPlayerAngle) * 0x10000 >> 0x10, 0x1000);
}

ARM void LinkStateBase::func_ov00_020a827c(s32 param1, u32 param2) {
    gPlayerControlData->func_ov000_020b4558(param1, param2);
}

ARM void LinkStateBase::func_ov00_020a8294(s32 param1, u32 param2) {
    gPlayerControlData->func_ov000_020b44d4(param1, param2);
}

ARM void LinkStateBase::func_ov00_020a82ac() {
    this->mLink->GetPlayerControlData(0)->func_ov000_020b45e0();
}

// non-matching
ARM void LinkStateBase::ApplyImpulse(s32 angle, s32 power) {
    PlayerLinkBase *link;
    int angle2;
    s32 cos;
    unk32 cos2;
    s32 sin;

    sin = SIN(angle & 0xFFFF) * power;
    cos = COS(angle & 0xFFFF) * power;

    this->mLink->mVel = gVec3p_ZERO;

    this->mLink->mVel.x += (sin >> 12 | (sin >> 32) * 0x100000);
    this->mLink->mVel.z += (cos >> 12 | (cos >> 32) * 0x100000);
}

ARM void LinkStateBase::func_ov00_020a8360(ActorTypeId type) {
    Actor_UnkStruct_020 unkStruct_020;
    this->func_ov00_020a8390(type, &unkStruct_020);
}

// non-matching
ARM Actor *LinkStateBase::func_ov00_020a8390(ActorTypeId type, Actor_UnkStruct_020 *param2) {
    Actor *pActor;
    ActorRef *pGrabRef;
    ActorSpawnOptions local_44;
    ActorRef local_4c;
    ActorSpawner *pActorSpawner;

    local_44.mUnk_1c.id    = -1;
    local_44.mUnk_1c.index = -1;
    local_44.func_ov000_020c3348();

    pActorSpawner = gActorSpawner;

    local_44.mUnk_00    = *param2;
    local_44.mUnk_1c.id = 0;

    local_4c.id    = -1;
    local_4c.index = -1;

    pActorSpawner->Spawn(type, this->GetPlayerPos(), &local_44, &local_4c);
    pActor = gActorManager->GetActor(&local_4c);

    if (pActor != NULL) {
        pGrabRef        = this->GetGrabActorRef();
        pGrabRef->id    = pActor->mRef.id;
        pGrabRef->index = pActor->mRef.index;
        pActor->SetUnk_11b();
    }

    return pActor;
}

ARM void LinkStateBase::func_ov00_020a84bc(bool isVisible) {
    s16 sVar1;

    this->mLink->mVisible                 = isVisible;
    sVar1                                 = isVisible ? 0x1F : 0;
    PlayerBase::GetEquipSword()->mUnk_5c  = sVar1;
    PlayerBase::GetEquipShield()->mUnk_0e = sVar1;
    func_ov000_0207c5d4(data_027e0e58, 1, isVisible);
}

ARM void LinkStateBase::func_ov00_020a8508(unk32 param_1) {
    PlayerControlData *pPlayerControlData;
    pPlayerControlData = gPlayerControlData;
    pPlayerControlData->vfunc_70(param_1, this->GetPlayerPos());
}

ARM void LinkStateBase::func_ov00_020a853c(Vec3p *param1) {
    PlayerLinkBase *pLink;
    Vec3p VStack_18;

    if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 0x2E) {
        this->func_ov023_02177ba0(param1);
        return;
    }

    pLink = this->mLink;
    pLink->func_ov000_020bc90c(&VStack_18, pLink->GetCurrentCharacter());
    func_ov000_020b1a4c(param1, &VStack_18);
}

// non-matching
ARM void LinkStateBase::Teleport(Vec3p *pos, s16 angle, unk32 param3, unk32 param4, unk32 param5) {
    this->mLink->Teleport(pos, angle, param3, 0, 1);
}

ARM void LinkStateBase::TeleportToEntrance(Vec3p *pos) {
    this->mLink->TeleportToEntrance(pos, false);
}

ARM void LinkStateBase::PlayerLinkBase_vfunc_74() {
    this->mLink->vfunc_74();
}

// non-matching
ARM void LinkStateBase::PlayerLinkBase_vfunc_88() {
    this->mLink->vfunc_88(); // fake?
}

ARM u16 LinkStateBase::Get_PlayerLinkBase_Unk48() {
    return this->mLink->mUnk_48;
}

ARM bool LinkStateBase::func_ov00_020a8638(unk32 param1) {
    ActorRef local_c;
    local_c.id    = -1;
    local_c.index = -1;
    this->mLink->func_ov000_020bd3b0(param1, &local_c, 0, 0);
}

ARM void LinkStateBase::Clear_PlayerLinkBase_Unk48(u16 flags) {
    this->mLink->mUnk_48 &= ~flags;
}

// non-matching
ARM void LinkStateBase::func_ov00_020a8680(unk32 param1, unk16 param2, bool param3) {
    UnkStruct_027e0fd4 *pUVar1 = data_027e0fd4;

    data_027e0fd4->mUnk_098 = param1;
    data_027e0fd4->mUnk_0a0 = param2;

    if (pUVar1->func_ov000_020b6e70()) {
        data_027e0fd4->mUnk_0a2 = -1;
    } else {
        data_027e0fd4->mUnk_0a2 = !param3;
    }
}

ARM void LinkStateBase::PlayerLinkBase_func_ov00_020bccc8() {
    this->mLink->func_ov000_020bccc8();
}

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
