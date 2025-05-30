#include "Actor/Player/ActorArrow.hpp"
#include "Player/EquipShield.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"

ActorType ActorArrow::gType = ActorType(ActorTypeId_Arrow, (ActorCreateFunc) ActorArrow::Create, NULL);

UnkStruct_ov000_020beba8 data_ov014_0215abec = UnkStruct_ov000_020beba8(0);

ActorArrow *ActorArrow::Create() {}
void ActorArrow::func_ov014_0211fd80(unk32 param1) {}
void ActorArrow::func_ov014_0211fd90() {}
ActorArrow::ActorArrow() {}
ActorArrow::~ActorArrow() {}
bool ActorArrow::Init() {}
bool ActorArrow::CollidesWith(Actor *other) {}
void ActorArrow::func_ov014_021200d4() {}
void ActorArrow::func_ov014_02120118() {}
bool ActorArrow::func_ov014_02120180() {}
EquipRope *ActorArrow::GetEquipRope() {}
void ActorArrow::vfunc_14(u32 param1) {}
void func_ov014_02120774(u32 *param1, s32 param2) {}
void ActorArrow::vfunc_18(u32 param1) {}
void ActorArrow::vfunc_10(u32 param1) {}
void ActorArrow::func_ov014_021207b8(ActorRef *ref, s32 param2, s32 param3) {}
void ActorArrow::func_ov014_02120998(ActorRef *ref, q20 x, q20 y, q20 z, s16 param5) {}
void func_ov014_02120a80(s32 param1, ActorArrow *arrow) {}
void ActorArrow::func_ov014_02120ac4(unk32 param1, bool param2) {}
void ActorArrow::func_ov014_02120c98(Vec3p *param1) {}
void ActorArrow::func_ov014_02120d58() {}
void ActorArrow::func_ov014_02120da8() {}
bool ActorArrow::func_ov014_02120dec(unk32 param1) {}
bool ActorArrow::vfunc_48(Knockback *param1) {}
EquipShield *GetEquipShield() {}
void ActorArrow::vfunc_20(bool param1) {}