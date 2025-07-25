#include "Player/EquipBombchu.hpp"
#include "DTCM/UnkStruct_027e0f6c.hpp"
#include "Map/MapManager.hpp"
#include "Player/LinkStateItem.hpp"

ModelRender EquipBombchu::gModelRenderBombchu;
ModelRender EquipBombchu::gModelRenderBombchuPt;
EquipBombchu_Unk_02198d00 sUnk_02198d00;

ARM bool EquipBombchu_Unk_02198d00::vfunc_08(UnkStruct_ov000_020beba8_08 *param1) {
    Vec3p sp14 = {param1->mUnk_04.x, param1->mUnk_04.y, param1->mUnk_04.z};
    UnkStruct_027e0f6c_20 sp38;
    s32 temp_r1                    = param1->mUnk_00;
    UnkStruct_027e0f6c_20 *temp_r2 = data_027e0f6c->mUnk_20;
    sp38                           = *(temp_r2 + temp_r1);

    Vec3p sp8 = {sp38.mUnk_08.x, sp38.mUnk_08.y, sp38.mUnk_08.z};
    Vec3p_Normalize(&sp8, &sp8);
    Vec3p_Scale(&sp8, -0x400);
    Vec3p_Add(&sp14, &sp8, &sp14);
    MapManager *pMapManager = gMapManager;
    TilePos sp4             = pMapManager->func_ov00_02083a1c(&sp14);
    if ((pMapManager->func_ov00_020840dc(&sp4) == 0x46) && (gMapManager->func_ov00_02083f44(&sp14, 0) <= (sp14.y + 0x17FF))) {
        return 0;
    }
    return this->func_ov014_02124034(param1);
}

ARM UnkStruct_027e0f6c_Unk_1::~UnkStruct_027e0f6c_Unk_1() {}

ARM UnkStruct_027e0f6c_Unk_1::UnkStruct_027e0f6c_Unk_1() {}

ARM bool EquipBombchu_Unk_02198d00::vfunc_14(u16 *param1, s32 param2) {
    Vec3p sp0;

    Actor *temp_r0 = gActorManager->FindActorById(param2);
    if ((temp_r0 != NULL) && (temp_r0->mType == ActorTypeId_PWBS)) {
        mUnk_11   = 1;
        Vec3p vec = *(Vec3p *) ((u32) temp_r0 + 0x820);
        mUnk_14   = vec;
    }
    return true;
}

void EquipBombchu_Unk_02198d00::vfunc_10(s32 *param1) {}
void EquipBombchu::vfunc_00() {}

THUMB void EquipBombchu::vfunc_18() {
    this->UpdateInUse(1);
    mUnk_0c.Reset();
    this->func_ov014_0213eda0();
    this->func_ov014_0213ec64();
}

void EquipBombchu::vfunc_1c() {}
void EquipBombchu::vfunc_30() {}
void EquipBombchu::vfunc_38(unk32 param1) {}
void EquipBombchu::func_ov058_02199220() {}
void EquipBombchu::func_ov058_02199228() {}
void EquipBombchu::func_ov058_02199264() {}
void EquipBombchu::func_ov058_0219926c() {}
bool EquipBombchu::IsUsable(unk32 param1) const {}
bool EquipBombchu::CheckUsable(unk32 param1) const {}
Actor *EquipBombchu::func_ov058_02199400() {}
bool EquipBombchu::func_ov058_02199498(Vec3p *vec) {}
void EquipBombchu::func_ov058_02199ef0(unk16 param1) {}
void EquipBombchu::func_ov058_02199fd8(u32 param1) {}
unk32 EquipBombchu::func_ov058_0219a084(unk16 param1) {}
bool EquipBombchu::func_ov058_0219a3b4(unk16 param1) {}
EquipBombchu_Unk_02198d00::~EquipBombchu_Unk_02198d00() {}
