#include "Player/PlayerBase.hpp"

bool PlayerBase::vfunc_04() {}
ItemFlag PlayerBase::GetEquipId() {}
bool PlayerBase::CanMove() {}
void PlayerBase::SetUpdatePos(bool updatePos) {}
void PlayerBase::SetVisible(bool visible) {}
EquipSword *PlayerBase::GetEquipSword() {}
EquipShield *PlayerBase::GetEquipShield() {}
void PlayerBase::LookAt(Vec3p *target) {}
bool PlayerBase::func_ov00_020a7c00(s32 param1) {}
bool PlayerBase::CollidesWith(Cylinder *cylinder) {}
bool PlayerBase::func_ov00_020a7c60(Vec3p *param1, Vec3p *param2, s32 param3) {}
bool PlayerBase::EquipCollidesWith(Cylinder *cylinder, ItemFlag equipId) {}
s32 PlayerBase::EquipItem_vfunc_2c() {}
void PlayerBase::SetHealth(s16 health) {}
void PlayerBase::AddHealth(s16 amount) {}
bool PlayerBase::Teleport(Vec3p *pos, s16 angle, unk32 param3, bool param4, bool param5) {}
bool PlayerBase::TeleportToEntrance(Vec3p *pos, unk32 entranceId) {}
bool PlayerBase::TeleportToLastEntrance(bool param1) {}
