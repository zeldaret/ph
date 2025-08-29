#include "Player/LinkStateBase.hpp"

void LinkStateBase::vfunc_00() {}
void LinkStateBase::OnStateEnter() {}
void LinkStateBase::OnStateLeave(s32 param1) {}
bool LinkStateBase::vfunc_20(s32 param1) {}
bool LinkStateBase::vfunc_24(s32 param1) {}
bool LinkStateBase::vfunc_28() {}
bool LinkStateBase::vfunc_34(Vec3p *param1) {}
void LinkStateBase::GiveControlToLink() {}
void LinkStateBase::SetPlayerCharacter(PlayerCharacter character) {}
void LinkStateBase::ChangeLinkState(LinkStateId id) {}
void LinkStateBase::ChangeLinkSubState(LinkStateId id, s32 subState) {}
void LinkStateBase::EquipItem_vfunc_28() {}
void LinkStateBase::UpdateSwordShieldInUse() {}
void LinkStateBase::func_ov00_020a81b8(unk32 param1, unk32 param2) {}
LinkStateItem *LinkStateBase::GetLinkItemState() {}
void LinkStateBase::LookAt(Vec3p *target) {}
void LinkStateBase::func_ov00_020a81fc(Vec3p *param1, unk32 param2) {}
void LinkStateBase::AddHealth(s16 amount) {}
void LinkStateBase::func_ov00_020a8224(unk32 param1) {}
void LinkStateBase::TurnTo(s16 angle, unk32 param2, unk32 speed) {}
void LinkStateBase::func_ov00_020a827c(s32 param1, u32 param2) {}
void LinkStateBase::func_ov00_020a8294(s32 param1, u32 param2) {}
void LinkStateBase::func_ov00_020a82ac() {}
void LinkStateBase::ApplyImpulse(s32 angle, s32 power) {}
void LinkStateBase::func_ov00_020a8360(unk32 param1) {}
void LinkStateBase::func_ov00_020a8390(unk32 param1, void *param2) {}
void LinkStateBase::func_ov00_020a84bc(s32 param1) {}
void LinkStateBase::func_ov00_020a8508() {}
void LinkStateBase::func_ov00_020a853c(Vec3p *param1) {}
void LinkStateBase::Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5) {}
void LinkStateBase::PlayerBase_vfunc_38(Vec3p *pos) {}
void LinkStateBase::PlayerLinkBase_vfunc_74() {}
void LinkStateBase::PlayerLinkBase_vfunc_88() {}
unk16 LinkStateBase::Get_PlayerLinkBase_Unk48() {}
bool LinkStateBase::func_ov00_020a8638(unk32 param1) {}
void LinkStateBase::Clear_PlayerLinkBase_Unk48(u16 flags) {}
void LinkStateBase::func_ov00_020a8680(unk32 param1, unk16 param2, bool param3) {}
void LinkStateBase::PlayerLinkBase_func_ov00_020bccc8() {}
bool LinkStateBase::PlayerLinkBase_vfunc_58(unk32 param1, ActorRef *param2) {}
bool LinkStateBase::func_ov00_020a8704(s16 *pAngle) {}
bool LinkStateBase::func_ov00_020a8774(Vec3p *param1, s32 angle) {}
void LinkStateBase::func_ov00_020a8844(Vec3p *param1, bool param2, bool param3) {}
void LinkStateBase::func_ov00_020a8954(bool param1, unk32 *param2) {}
void LinkStateBase::func_ov00_020a8994() {}
void LinkStateBase::func_ov00_020a89bc(LinkStateBase_UnkStruct1 *param1, unk32 param2) {}
void LinkStateBase::func_ov00_020a8a08(unk32 param1) {}
void LinkStateBase::func_ov00_020a8a4c(const void *param1, unk32 param2) {}
void LinkStateBase::func_ov00_020a8a90(unk32 param1) {}
void LinkStateBase::func_ov00_020a8ab0(unk32 param1) {}
void LinkStateBase::func_ov00_020a8ad0(unk32 param1) {}
void LinkStateBase::func_ov00_020a8b04(s32 param1, bool param2) {}
unk32 LinkStateBase::func_ov00_020a8b3c(s32 param1) {}
bool LinkStateBase::func_ov00_020a8b80() {}
bool LinkStateBase::HasFlags_PlayerLinkBase_Unk48(u16 flags) {}
unk8 LinkStateBase::Get_PlayerLinkBase_Unk5e() {}
unk32 LinkStateBase::Get_PlayerControlData_Unk004() {}
PlayerCharacter LinkStateBase::GetCurrentCharacter() {}
PlayerControlData *LinkStateBase::GetPlayerControlData() {}
LinkStateId LinkStateBase::GetStateId() {}
s32 LinkStateBase::GetHealth() {}
s32 LinkStateBase::GetCurrentCharacterHealth() {}
bool LinkStateBase::func_ov00_020a8c34() {}
Vec3p *LinkStateBase::GetPlayerPos() {}
Vec3p *LinkStateBase::GetPlayerVel() {}
unk8 *LinkStateBase::func_ov00_020a8c64() {}
s16 *LinkStateBase::GetPlayerAngle() {}
void *LinkStateBase::GetPlayer_Unk18() {}
s32 LinkStateBase::Get_PlayerControlData_Unk32() {}
Actor *LinkStateBase::GetGrabActor() {}
ActorRef *LinkStateBase::GetGrabActorRef() {}
unk32 LinkStateBase::Grab() {}
s32 LinkStateBase::Get_PlayerLinkBase_Unk44() {}
bool LinkStateBase::IsEquipBeingUsed(ItemFlag id) {}
EquipItem *LinkStateBase::GetEquipItem(ItemFlag id) {}
UnkStruct_027e0fd4 *LinkStateBase::func_ov00_020a8d40() {}
unk32 LinkStateBase::func_ov00_020a8d50() {}
unk32 LinkStateBase::func_ov00_020a8d6c() {}
s32 LinkStateBase::PlayerControlData_vfunc_14(s32 param1) {}
unk32 LinkStateBase::Get_PlayerControlData_Unk100() {}
unk32 LinkStateBase::Get_PlayerControlData_Unk120() {}
s32 LinkStateBase::Get_PlayerLinkBase_Unk38() {}
DebugHierarchy *LinkStateBase::GetDebugHierarchy0() {}
DebugHierarchy *LinkStateBase::GetDebugHierarchy1() {}
