#include "Map/MapBase.hpp"
#include "Map/MapManager.hpp"

MapBase::~MapBase() {}
MapBase_Unk_180::~MapBase_Unk_180() {}
void MapBase::SetBounds(unk32 map, unk32 course) {}
MapManager_Unk2::~MapManager_Unk2() {}
void MapBase::GetMapFilePath(char *courseName, unk32 num1, unk32 buf) {}
void MapBase::vfunc_18() {}
void MapBase::func_ov00_0207ddf8(bool param_2) {}
void MapBase::func_ov00_0207de68(unk32 param_2) {}
void MapBase::func_ov00_0207de88() {}
void MapBase::func_ov00_0207dea0(bool param_2) {}
void MapBase::vfunc_b0(unk32 param_2, unk32 param_3) {}
bool MapBase::func_ov00_0207e08c(s32 *param_2, s32 param_3) {}
s32 MapBase::func_ov00_0207e0f0(s32 param_2) {}
s32 MapBase::func_ov00_0207e28c(s32 param_2) {}
void MapBase::vfunc_b4() {}
void MapBase::vfunc_48() {}
unk32 MapBase::vfunc_50() {}
unk32 MapBase::vfunc_54(Vec2b *param_1) {}
unk32 MapBase::vfunc_58(Vec2b *param_1, int param_2) {}
unk32 MapBase::vfunc_5c() {}
unk32 MapBase::vfunc_60(Vec2b *param_1) {}
unk32 MapBase::vfunc_64() {}
unk32 MapBase::vfunc_68(Vec3p *param_1, bool param_2) {}
unk8 MapBase::func_ov00_0207e940(unk8 *param_1) {}
unk8 MapBase::func_ov00_0207e968() {}
unk8 MapBase::func_ov00_0207e96c() {}
unk8 MapBase::vfunc_6c(unk32 param_2, unk32 param_3, unk32 param_4) {}
unk32 MapBase::vfunc_70(Vec3p *param_2) {}
unk32 *MapBase::vfunc_74(Vec3p *param_2) {}
unk8 MapBase::func_ov00_0207f100() {}
bool MapBase::func_ov00_0207f104(unk32 param_2, unk32 param_3) {}
unk32 MapBase::func_ov00_0207f1f4(Vec3p *param_2, unk32 *param_3) {}
unk32 MapBase::vfunc_88() {}
unk32 MapBase::vfunc_8c() {}
void MapBase::vfunc_9c() {}
void MapBase::vfunc_a0() {}
unk32 MapBase::vfunc_a4(unk8 *param_1) {}
void MapBase::vfunc_a8() {}
void MapBase::vfunc_ac() {}
unk32 *MapBase::vfunc_78(Vec2b *param_1) {}
s32 MapBase::vfunc_7c(s32 param_1, unk32 *param_2, s32 param_3, short param_4[4]) {}
unk32 MapBase::vfunc_80() {}
void MapBase::vfunc_84(unk32 param_2) {}
bool MapBase::func_ov00_0207f38c(s32 *param_2) {}
unk8 MapBase::vfunc_90(Vec2b *param_2, unk32 param_3) {}
void MapBase::vfunc_94() {}
void MapBase::func_ov00_0207f4a4(Vec2s *param_2, unk32 param_3) {}
void MapBase::func_ov00_0207f53c(Vec2s *param_1, MapBase *param_2, Vec3p *param_3) {}
void MapBase::func_ov00_0207f588(Vec2s *param_1, MapBase *param_2, Vec2b *param_3, unk32 param_4) {}
void MapBase::func_ov00_0207f630(Vec2s *param_2, Vec3p *param_3) {}
unk8 MapBase::GetTileStartX(unk32 x) {}
unk8 MapBase::GetTileStartZ(unk32 z) {}
s32 MapBase::GetTileEndX(unk32 x) {}
s32 MapBase::GetTileEndZ(unk32 z) {}
void MapBase::GetTileBounds(Vec2b *tilePos, AABB *bounds) {}
s32 MapBase::GetClampedTileX(s32 worldX) {}
s32 MapBase::GetClampedTileY(s32 worldZ) {}
unk8 MapBase::GetTileX(s32 worldX) {}
unk8 MapBase::GetTileY(s32 worldZ) {}
bool MapBase::IsInBounds(Vec3p *tileWorldPos) {}
s32 MapBase::AddEntrance(Entrance *param_2) {}
Entrance *MapBase::FindEntrance(unk32 id) {}
void MapBase::func_ov00_0207f924(s32 param_2) {}
unk8 MapBase::func_ov00_0207f934() {}
unk8 MapBase::func_ov00_0207f948(unk32 param_2) {}
void MapBase::AddTrigger(TriggerParams *param_2) {}
void TriggerBase::vfunc_08() {}
s32 MapBase::GetTriggerBoundingBox(unk32 param_2, AABB *param_3) {}
bool TriggerBase::GetBoundingBox(AABB *bbox) {}
s32 MapBase::GetTriggerBoundingBoxes(s32 param_2, AABB *param_3, s32 param_4) {}
unk8 MapBase::GetOverlappingTrigger(Vec3p *param_2) {}
bool TriggerBase::Overlaps(Vec3p *point) {}
TriggerBase *MapBase::FindTrigger(unk32 type) {}
unk8 MapBase::GetOverlappingTriggers(Vec3p *param_2, TriggerBase **triggers, unk32 capacity) {}
bool MapBase::IsTriggerTypeOverlapped(unk32 type, Vec3p *param_3) {}
bool MapBase::AnyTrigger_func_0c(unk32 type) {}
unk32 TriggerBase::vfunc_0c() {}
unk8 MapBase::Trigger_vfunc_08() {}
bool MapBase::AddTrigger(unk32 param_2) {}
bool MapBase::func_ov00_0207ff88(s32 param_2) {}
void MapBase::func_ov00_0208005c(s32 param_2, s32 param_3, unk32 param_4) {}
void MapBase::func_ov00_0208006c(unk32 param_2, s32 param_3) {}
void MapBase::func_ov00_0208007c(s32 param_2, s32 param_3) {}
void MapBase::func_ov00_0208008c(u32 param_2) {}
unk8 MapBase::AddExit(Exit *param_2) {}
char MapBase::func_ov00_02080140(Exit *param_2) {}
void MapBase_Unk1::func_ov00_02080324(s32 param_2, s32 param_3, s32 param_4) {}
bool MapBase::FindExit(u32 param_2, Exit *param_3) {}
unk8 MapBase::AddCameraViewpoint(CameraViewpoint *param_2) {}
bool MapBase::FindViewpoint_Unk_4(char id, CameraViewpoint *param_3) {}
bool MapBase::FindViewpoint_Unk_0(s32 param_2, CameraViewpoint *param_3) {}
void MapBase::GetCurrentViewpoint(CameraViewpoint *param_2, s32 param_3) {}
unk32 MapBase::GetCurrentViewpoint_Unk_00(s32 param_2) {}
unk32 MapBase::vfunc_b8() {}
bool MapBase::func_ov00_02080824(u32 param_2, unk8 *param_3) {}
bool MapBase::AddUnk_130(s32 param_2) {}
bool MapBase::func_ov00_020809b8(s32 param_2) {}
unk8 MapBase::func_ov00_02080a78(Vec3p *param_2) {}
void MapBase_Unk2::func_ov00_02080ad0(TriggerBase **param_2, TriggerBase **param_3) {}
unk8 MapBase::func_ov00_02080b24(Vec2b *param_2) {}
void MapBase::func_ov00_02080d08(Vec2b *param_2) {}
void MapBase::vfunc_bc() {}
void MapBase::vfunc_98(unk32 param_2, unk32 param_3, unk32 param_4) {}
void MapBase::vfunc_c0() {}
bool MapBase::TriggerOfType_vfunc_10(unk32 type) {}
unk32 TriggerBase::vfunc_10() {}
void MapBase::func_ov00_02080de4() {}
unk8 MapBase::func_ov00_02080de8(unk32 param_2) {}
void MapBase::func_ov00_02080edc() {}
