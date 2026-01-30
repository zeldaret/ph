#include "Player/LinkStateBase.hpp"
#include "Actor/ActorSpawner.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerControl.hpp"

extern "C" bool func_01ffe468(unk32 param1, Vec3p *param2, s32 *param3, s32 *param4, bool param5);
extern "C" void ApproachAngle_thunk(s16 *src, s16 dst, u32 param3);
extern "C" void func_ov000_020b1a4c(Vec3p *, Vec3p *);
extern "C" void func_ov000_020b1498(s32, s32, s16);
extern "C" void func_ov000_0207c5d4(unk32 *, unk32, s32);
extern unk32 *data_027e0e58;
extern unk32 data_027e0fb0;

static char *gShipParts[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

static const LinkStateId data_ov000_020dc510[] = {
    LinkStateId_Move, LinkStateId_Follow, LinkStateId_Move, LinkStateId_Move, LinkStateId_Move, LinkStateId_Move,
};

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
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
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
        default:
            break;
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

ARM void LinkStateBase::func_ov00_020a81b8(unk32 param1, Vec3p *param2) {
    this->GetLinkItemState()->func_ov005_02106980(0, param1, (s32 *) param2);
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
        // pActor->SetUnk_11b();
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

ARM void LinkStateBase::PlayerLinkBase_vfunc_88(unk32 param_1) {
    this->mLink->vfunc_88(param_1); // fake?
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

ARM bool LinkStateBase::PlayerLinkBase_vfunc_58(unk32 param1, ActorRef *param2) {
    this->mLink->vfunc_58(param1, param2);
}

// non-matching
ARM bool LinkStateBase::func_ov00_020a8704(s16 *pAngle) {
    UnkStruct_027e0fd4 *iVar2;
    UnkStruct_027e0fd4 *iVar3;

    iVar2 = func_ov00_020a8d40();
    iVar3 = func_ov00_020a8d40();

    if (iVar3->mUnk_05c > 0 && (iVar3->mUnk_064 != 0 || iVar2->mUnk_06c != 0)) {
        s16 uVar1  = FX_Atan2Idx(iVar2->mUnk_064, iVar2->mUnk_06c);
        s16 *angle = (s16 *) GetPlayerAngle();

        *pAngle = *angle - uVar1;
        return true;
    }

    return false;
}

// non-matching
ARM bool LinkStateBase::func_ov00_020a8774(Vec3p *param1, s32 angle) {}

// non-matching
ARM void LinkStateBase::func_ov00_020a8844(Vec3p *param1, bool param2, bool param3) {
    Vec3p uStack_1c;
    s32 uStack_20;
    s32 uStack_24;

    if (gPlayerControl->mUnk_7d == false) {
        return;
    }

    if (gGame.mUnk_101) {
        return;
    }

    uStack_1c = *param1;

    if (func_01ffe468(data_027e0f64->func_ov000_0208b180(), &uStack_1c, &uStack_20, &uStack_24, false)) {
        return;
    }

    if (param2) {
        func_ov000_020b1498(uStack_20, uStack_24, *GetPlayerAngle());
    }

    if (param3) {
        func_ov000_020b1498(uStack_20, uStack_24, (*GetPlayerAngle() - 0x8000) * 0x10000 >> 0x10);
    }
}

ARM void LinkStateBase::func_ov00_020a8954(bool param1, unk32 *param2) {
    static unk32 data_ov000_020e5670                    = 0x29;
    static LinkStateBase_UnkStruct1 data_ov000_020e5674 = {
        .mUnk_00   = 0x27,
        .mUnk_04.x = FLOAT_TO_Q20(1.0),
        .mUnk_04.y = FLOAT_TO_Q20(0.0),
        .mUnk_04.z = FLOAT_TO_Q20(5.0),
    };

    if (param1) {
        data_ov000_020e5670 = 0x29;
    } else {
        data_ov000_020e5670 = 0x27;
    }

    this->func_ov00_020a8a4c(&data_ov000_020e5674, 1);
    *param2 = 0;
}

unk32 data_ov000_020e5684[] = {1, 0x1333, 0, 0x3C000};
unk32 data_ov000_020e5694[] = {0x1F, 0x1000, 0, 0x3C000};

ARM void LinkStateBase::func_ov00_020a8994() {
    this->ChangeLinkState(data_ov000_020dc510[this->func_ov00_020a8d40()->mUnk_05a]);
}

ARM void LinkStateBase::func_ov00_020a89bc(LinkStateBase_UnkStruct1 *param1, unk8 param2) {
    UnkStruct_027e0fd4 *pUVar1 = this->func_ov00_020a8d40();

    if (!(pUVar1->mUnk_05a != 1 && pUVar1->mUnk_05a != 2)) {
        this->func_ov005_0211097c(param1, 1, param2);
        return;
    }

    this->func_ov00_020a8a4c(param1, param2);
}

ARM void LinkStateBase::func_ov00_020a8a08(LinkStateBase_UnkStruct1 *param1) {
    UnkStruct_027e0fd4 *pUVar1 = this->func_ov00_020a8d40();

    if (!(pUVar1->mUnk_05a != 1 && pUVar1->mUnk_05a != 2)) {
        this->func_ov005_0211097c(param1, 0, 1);
        return;
    }

    this->func_ov00_020a8a90(param1);
}

ARM void LinkStateBase::func_ov00_020a8a4c(LinkStateBase_UnkStruct1 *param1, unk8 param2) {
    PlayerControlData *pPVar1 = gPlayerControlData;

    pPVar1->func_ov000_020b45f8(param1, 1, param2);

    if (pPVar1->mUnk_118 != NULL) {
        pPVar1->mUnk_118->mUnk_0c.mUnk_02 = 0;
    }

    if (pPVar1->mUnk_138 != NULL) {
        pPVar1->mUnk_138->mUnk_0c.mUnk_02 = 0;
    }
}

ARM void LinkStateBase::func_ov00_020a8a90(LinkStateBase_UnkStruct1 *param1) {
    gPlayerControlData->func_ov000_020b45f8(param1, 0, 1);
}

ARM void LinkStateBase::func_ov00_020a8ab0(unk32 *param1) {
    gPlayerControlData->func_ov000_020b464c(param1, 1, 1);
}

ARM void LinkStateBase::func_ov00_020a8ad0(unk32 param1) {
    gPlayerControlData->mUnk_118->func_ov000_020c0e24(param1);
    gPlayerControlData->mUnk_138->func_ov000_020c0e24(param1);
}

ARM void LinkStateBase::func_ov00_020a8b04(s32 param1, bool param2) {
    PlayerControlData *pPlayerControlData = gPlayerControlData;

    if (param2) {
        pPlayerControlData->mUnk_118->mUnk_0c.func_0202e310(param1);
    } else {
        pPlayerControlData->mUnk_138->mUnk_0c.func_0202e310(param1);
    }
}

ARM unk32 LinkStateBase::func_ov00_020a8b3c(s32 param1) {
    PlayerControlData *pPlayerControlData = gPlayerControlData;
    unk32 uVar2                           = 0;
    PlayerControlData_118 *iVar3;

    if (param1 != 0) {
        iVar3 = pPlayerControlData->mUnk_118;
    } else {
        iVar3 = pPlayerControlData->mUnk_138;
    }

    if (iVar3->mUnk_0c.func_0202e58c() && !(iVar3->mUnk_0c.mUnk_02 & 5)) {
        uVar2 = 1;
    }

    return uVar2;
}

ARM bool LinkStateBase::func_ov00_020a8b80() {
    return data_027e0fd4->mUnk_0c6 >= 0;
}

ARM bool LinkStateBase::HasFlags_PlayerLinkBase_Unk48(u16 flags) {
    return this->mLink->mUnk_48 & flags;
}

ARM u8 LinkStateBase::Get_PlayerLinkBase_Unk5e() {
    return this->mLink->mUnk_5c[2];
}

ARM unk32 *LinkStateBase::Get_PlayerControlData_Unk004() {
    return &gPlayerControlData->mUnk_004;
}

ARM PlayerCharacter LinkStateBase::GetCurrentCharacter() {
    return this->mLink->GetCurrentCharacter();
}

ARM PlayerControlData *LinkStateBase::GetPlayerControlData() {
    return gPlayerControlData;
}

ARM LinkStateId LinkStateBase::GetStateId() {
    return this->mLink->GetStateId();
}

ARM s32 LinkStateBase::GetHealth() {
    return this->mLink->mHealth;
}

ARM s32 LinkStateBase::GetCurrentCharacterHealth() {
    PlayerLinkBase *pLink = this->mLink;

    pLink->GetHealth(pLink->GetCurrentCharacter());
}

ARM bool LinkStateBase::func_ov00_020a8c34(unk32 param1, Vec3p *param2, unk32 param3) {
    return data_027e0fd4->func_ov000_020b5268(param1, param2, param3);
}

ARM Vec3p *LinkStateBase::GetPlayerPos() {
    return &gPlayerPos;
}

ARM Vec3p *LinkStateBase::GetPlayerVel() {
    return &gPlayerVel;
}

ARM UnkStruct_027e0fd4_90 *LinkStateBase::func_ov00_020a8c64() {
    return &data_027e0fd4->mUnk_090;
}

ARM u16 *LinkStateBase::GetPlayerAngle() {
    return (u16 *) &gPlayerAngle;
}

ARM void *LinkStateBase::GetPlayer_Unk18() {
    return &data_027e0fb0;
}

ARM s32 LinkStateBase::Get_PlayerControlData_Unk32() {
    return gPlayerControlData->mUnk_032;
}

ARM Actor *LinkStateBase::GetGrabActor() {
    return gActorManager->GetActor(&this->mLink->mGrabActor);
}

ARM ActorRef *LinkStateBase::GetGrabActorRef() {
    return &this->mLink->mGrabActor;
}

ARM unk32 LinkStateBase::Grab() {
    return this->mLink->Grab();
}

ARM s32 *LinkStateBase::Get_PlayerLinkBase_Unk44() {
    return &this->mLink->mUnk_44;
}

ARM bool LinkStateBase::IsEquipBeingUsed(ItemFlag id) {
    EquipItem *pEquipItem = gItemManager->GetEquipItem(id);
    return pEquipItem != NULL && pEquipItem->IsInUse();
}

ARM EquipItem *LinkStateBase::GetEquipItem(ItemFlag id) {
    return gItemManager->GetEquipItem(id);
}

ARM UnkStruct_027e0fd4 *LinkStateBase::func_ov00_020a8d40() {
    return data_027e0fd4;
}

ARM unk32 LinkStateBase::func_ov00_020a8d50() {
    return gPlayerControlData->mUnk_138->func_ov000_020c0d68();
}

ARM unk32 LinkStateBase::func_ov00_020a8d6c() {
    return gPlayerControlData->mUnk_118->func_ov000_020c0d68();
}

ARM s32 LinkStateBase::PlayerControlData_vfunc_14(s32 param1) {
    u16 *iVar1 = gPlayerControlData->vfunc_14(param1);
    return iVar1 != 0 ? iVar1[2] << 12 : 0x1000;
}

ARM unk32 LinkStateBase::Get_PlayerControlData_Unk100() {
    return gPlayerControlData->mUnk_100;
}

ARM unk32 LinkStateBase::Get_PlayerControlData_Unk120() {
    return gPlayerControlData->mUnk_120;
}

ARM s32 *LinkStateBase::Get_PlayerLinkBase_Unk38() {
    return &this->mLink->mUnk_38;
}

ARM Bhio *LinkStateBase::GetBhio0() {
    return this->mLink->mBhio_0;
}

ARM Bhio *LinkStateBase::GetBhio1() {
    return this->mLink->mBhio_1;
}
