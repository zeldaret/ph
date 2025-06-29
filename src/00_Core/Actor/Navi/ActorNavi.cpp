#include "Actor/Navi/ActorNavi.hpp"
#include "Player/EquipHammer.hpp"

ActorType ActorNavi::gType = ActorType(ActorTypeId_Navi, (ActorCreateFunc) ActorNavi::Create, NULL);
UnkStruct_ov000_020b8110 data_ov000_020ee1cc;

ActorNavi *ActorNavi::Create() {}
UnkStruct_ov000_020b8110::UnkStruct_ov000_020b8110() :
    UnkStruct_ov000_020beba8(7) {}
UnkStruct_ov000_020b8110::~UnkStruct_ov000_020b8110() {}
void UnkStruct_ov000_020b8110::vfunc_08(unk16 *param1) {}
void UnkStruct_ov000_020b8110::vfunc_18(s32 *param1) {}
void UnkStruct_ov000_020b8110::vfunc_14(u16 *param1) {}
void ActorNavi::func_ov000_020b8200() {}
void ActorNavi::vfunc_c4() {}
void ActorNavi::vfunc_c8() {}
FairyId ActorNavi::GetFairyId() {}
s32 ActorNavi::vfunc_b8() {}
void ActorNavi::vfunc_d4() {}
void ActorNavi::vfunc_d0() {}
void ActorNavi::SetActive(unk32 active) {}
void ActorNavi::vfunc_e0() {}
void ActorNavi::vfunc_d8() {}
void ActorNavi::vfunc_20(bool param1) {}
bool ActorNavi::vfunc_cc(unk32 *param1) {}
bool ActorNavi::vfunc_c0(Vec3p *param1) {}
void ActorNavi::vfunc_e8() {}
bool ActorNavi::vfunc_8c() {}
void ActorNavi::vfunc_ec() {}
EquipHammer *GetEquipHammer() {}
void ActorNavi::func_ov000_020b853c() {}
ActorNavi::~ActorNavi() {}
