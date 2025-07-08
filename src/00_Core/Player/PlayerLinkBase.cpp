#include "Player/PlayerLinkBase.hpp"

s32 PlayerLinkBase::GetMaxHealth() {}
void PlayerLinkBase::vfunc_10(Cylinder *param1) {}
void PlayerLinkBase::vfunc_14(Cylinder *param1) {}
void PlayerLinkBase::UnequipPotion() {}
void PlayerLinkBase::ChangeLinkState(s32 index) {}
void PlayerLinkBase::SetLinkSubState(s32 index, unk32 substate) {}
PlayerControlData *PlayerLinkBase::GetPlayerControlData(s32 index) {}
void PlayerLinkBase::GetDistanceTo(Vec3p *vec, q20 *yDist, q20 *xzDist) {}
bool PlayerLinkBase::func_ov000_020bb68c(Vec3p *target) {}
bool PlayerLinkBase::func_ov000_020bb6d4() {}
void PlayerLinkBase::func_ov000_020bb810(Vec3p *target, unk32 param2) {}
void PlayerLinkBase::func_ov000_020bb8c4(Vec3p *param1) {}
void PlayerLinkBase::TurnTo(Vec3p *target) {}
void PlayerLinkBase::func_ov000_020bb9b0() {}
void PlayerLinkBase::func_ov000_020bb9c8() {}
void PlayerLinkBase::func_ov000_020bb9e4() {}
bool PlayerLinkBase::func_ov000_020bba00() {}
bool PlayerLinkBase::func_ov000_020bba14() {}
bool PlayerLinkBase::func_ov000_020bba28() {}
void PlayerLinkBase::func_ov000_020bba48() {}
bool PlayerLinkBase::vfunc_18(s32 param1) {}
bool PlayerLinkBase::CanMove() {}
bool PlayerLinkBase::vfunc_58() {}
bool PlayerLinkBase::vfunc_5c() {}
bool PlayerLinkBase::vfunc_60() {}
void PlayerLinkBase::vfunc_64() {}
bool PlayerLinkBase::func_ov000_020bbabc() {}
bool PlayerLinkBase::func_ov000_020bbb18() {}
bool PlayerLinkBase::func_ov000_020bbb64() {}
bool PlayerLinkBase::func_ov000_020bbb78() {}
void PlayerLinkBase::func_ov000_020bbbb8() {}
bool PlayerLinkBase::func_ov000_020bbbd0(s32 param1, s32 param2) {}
bool PlayerLinkBase::func_ov000_020bbc68(s32 param1) {}
bool PlayerLinkBase::func_ov000_020bbd40() {}
bool PlayerLinkBase::func_ov000_020bbd60() {}
bool PlayerLinkBase::func_ov000_020bbd80(s32 param1) {}
unk32 PlayerLinkBase::func_ov000_020bbe94() {}
bool PlayerLinkBase::vfunc_30(s32 param1, Vec3p *param2, s32 param3) {}
void PlayerLinkBase::func_ov000_020bc088() {}
ItemManager *PlayerLinkBase::GetItemManager() {}
void PlayerLinkBase::vfunc_70(s32 param1, Vec3p *param2, unk32 param3) {}
void PlayerLinkBase::func_ov000_020bc1c8(unk32 param1, unk32 param2, unk32 param3) {}
bool PlayerLinkBase::func_ov000_020bc210() {}
void PlayerLinkBase::SetVelocity(Vec3p *velocity, bool setAngle) {}
void PlayerLinkBase::vfunc_6c() {}
void PlayerLinkBase::func_ov000_020bc280(unk16 param1) {}
unk32 PlayerLinkBase::func_ov000_020bc2d4(unk32 param1) {}
unk32 PlayerLinkBase::func_ov000_020bc320(unk32 param1, unk32 param2, unk32 param3) {}
void PlayerLinkBase::func_ov000_020bc398(unk32 param1, s32 param2) {}
PlayerCharacter PlayerLinkBase::GetCurrentCharacter() {}
s32 PlayerLinkBase::GetHealth(PlayerCharacter character) {}
void PlayerLinkBase::AddHealth2(s16 amount, PlayerCharacter character) {}
void PlayerLinkBase::func_ov000_020bc4ac() {}
s32 PlayerLinkBase::GetStateId() {}
s32 PlayerLinkBase::func_ov000_020bc520(Vec3p *param1) {}
ItemFlag PlayerLinkBase::GetEquipId() {}
unk32 PlayerLinkBase::Grab() {}
void PlayerLinkBase::func_ov000_020bc7e0(unk32 param1) {}
s32 PlayerLinkBase::GetGrabActorId() {}
s32 PlayerLinkBase::func_ov000_020bc808() {}
unk32 PlayerLinkBase::func_ov000_020bc84c() {}
void PlayerLinkBase::func_ov000_020bc854(Vec3p *param1) {}
void PlayerLinkBase::UpdateTilePos(Vec3p *param1, PlayerCharacter character) {}
void PlayerLinkBase::func_ov000_020bc90c(Vec3p *param1, s32 param2) {}
bool PlayerLinkBase::func_ov000_020bc960(unk32 param1, unk32 param2, unk32 param3) {}
bool PlayerLinkBase::TeleportToLastEntrance(bool param1) {}
bool PlayerLinkBase::TeleportToEntrance(unk32 entranceId, bool param2) {}
bool PlayerLinkBase::Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5) {}
void PlayerLinkBase::vfunc_74() {}
bool PlayerLinkBase::GongoronCollidesWith(Cylinder *hitbox) {}
unk32 PlayerLinkBase::vfunc_78() {}
bool PlayerLinkBase::func_ov000_020bcc78() {}
void PlayerLinkBase::func_ov000_020bccc8() {}
void PlayerLinkBase::func_ov000_020bcdb8() {}
void PlayerLinkBase::func_ov000_020bcdec(Vec3p *param1, unk16 param2) {}
bool PlayerLinkBase::PlayItemCutscene(ItemId cutsceneItemId) {}
bool PlayerLinkBase::func_ov000_020bcec8() {}
bool PlayerLinkBase::func_ov000_020bcefc() {}
bool PlayerLinkBase::func_ov000_020bcf2c() {}
bool PlayerLinkBase::func_ov000_020bcf50(Vec3p *param1, unk32 param2) {}
bool PlayerLinkBase::func_ov000_020bcf84(Vec3p *param1, Vec3p *param2) {}
bool PlayerLinkBase::func_ov000_020bcfb8(s32 param1) {}
bool PlayerLinkBase::func_ov000_020bd030(unk32 param1) {}
bool PlayerLinkBase::func_ov000_020bd070(unk32 param1) {}
bool PlayerLinkBase::func_ov000_020bd0a8() {}
bool PlayerLinkBase::func_ov000_020bd0bc(Vec3p *param1, s32 param2) {}
bool PlayerLinkBase::func_ov000_020bd268() {}
bool PlayerLinkBase::func_ov000_020bd2bc() {}
bool PlayerLinkBase::func_ov000_020bd304() {}
bool PlayerLinkBase::func_ov000_020bd318() {}
void PlayerLinkBase::vfunc_7c() {}
void PlayerLinkBase::SetPlayerCharacter(PlayerCharacter character) {}
bool PlayerLinkBase::func_ov000_020bd3b0(unk32 param1, ActorRef *param2, unk32 param3, unk16 param4) {}
void PlayerLinkBase::SetPosition(Vec3p *position) {}
void PlayerLinkBase::SetAngle(s16 *angle) {}
bool PlayerLinkBase::func_ov000_020bd510(s32 param1, unk32 *param2) {}
void PlayerLinkBase::vfunc_68() {}
void PlayerLinkBase::SetUnk_5e() {}
void PlayerLinkBase::ResetUnk_5e() {}
