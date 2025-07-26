#include "Player/EquipBombchu.hpp"
#include "Actor/ActorSpawner.hpp"
#include "DTCM/UnkStruct_027e077c.hpp"
#include "DTCM/UnkStruct_027e0c54.hpp"
#include "DTCM/UnkStruct_027e0de4.hpp"
#include "DTCM/UnkStruct_027e0f6c.hpp"
#include "DTCM/UnkStruct_027e0fd4.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Map/MapManager.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerControl.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"
#include "Unknown/UnkStruct_ov000_020e9c88.hpp"

static char *sShipParts[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

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

static unk32 data_ov058_0219aee0 = -1;

ModelRender EquipBombchu::gModelRenderBombchu;
ModelRender EquipBombchu::gModelRenderBombchuPt;
static unk16 data_ov058_0219b090;
extern UnkStruct_ov000_020c0c08_04 data_ov058_0219b0c4;
static UnkStruct_ov000_020c0c08 data_ov058_0219b0a0(&data_ov058_0219b0c4, 0);
static UnkStruct_ov000_020c0c08_04 data_ov058_0219b0c4;
static EquipBombchu_Unk_02198d00 sUnk_02198d00;
static TilePos data_ov058_0219b110;

ARM UnkStruct_027e0f6c_Unk_1::~UnkStruct_027e0f6c_Unk_1() {}

ARM UnkStruct_027e0f6c_Unk_1::UnkStruct_027e0f6c_Unk_1() {}

struct UnkStruct1 {
    /* 00 */ unk8 mUnk_00[0xc];
    /* 0c */ Vec3p mUnk_0c;
    /* 18 */

    UnkStruct1(Vec3p vec) :
        mUnk_0c(vec) {}
};

ARM bool EquipBombchu_Unk_02198d00::vfunc_14(u16 *param1, s32 param2) {
    Actor *temp_r0 = gActorManager->FindActorById(param2);
    if ((temp_r0 != NULL) && (temp_r0->mType == ActorTypeId_PWBS)) {
        mUnk_11 = 1;
        UnkStruct1 unk(*(Vec3p *) ((u32) temp_r0 + 0x820));
        mUnk_14 = unk.mUnk_0c;
    }
    return true;
}

ARM bool EquipBombchu_Unk_02198d00::vfunc_10(s32 *param1) {
    Actor *temp_r0 = (Actor *) param1;
    if (!temp_r0->SetUnk_11b()) {
        return false;
    }
    bool result;
    if ((*(s32 *) ((s32) param1 + 4) & 0x800) == 0) {
        return false;
    }
    sUnk_02198d00.mUnk_10 = true;
    return false;
}

static const ItemManager_Unk1 sEquipBombchu_Unk1 = {
    .mUnk_00 = "bomchu_pt",
    .mUnk_10 = {0, 100},
};

THUMB void EquipBombchu::vfunc_00() {
    gModelRenderBombchu.vfunc_0c(gItemManager->GetItemModel(ItemModelId_Bombchu));
    gModelRenderBombchuPt.vfunc_0c(gItemManager->GetItemModel(ItemModelId_BombchuPt));
    data_ov058_0219b0a0.mUnk_08 = gItemManager->GetItemModel(ItemModelId_BombchuPt);
    data_ov058_0219b0a0.func_ov000_020c0c44(gItemManager->func_ov00_020ad538(&sEquipBombchu_Unk1));
    data_ov058_0219b0a0.func_ov000_020c0e5c(0);
    gModelRenderBombchuPt.vfunc_24(&data_ov058_0219b0a0);
    data_ov058_0219b090 = 2;
}

THUMB void EquipBombchu::vfunc_18() {
    this->UpdateInUse(1);
    mBombchuRef.Reset();
    this->func_ov014_0213eda0();
    this->func_ov014_0213ec64();
}

THUMB void EquipBombchu::vfunc_1c() {
    data_ov058_0219b090 = 2;
}

THUMB void EquipBombchu::vfunc_30() {
    mUnk_44 += 1;
    if ((gPlayerControl->IsUntouchedNow() || !mUnk_47) && !mUnk_48 && mUnk_18 > 0) {
        data_027e103c->func_ov005_0210418c(1);
        mUnk_48 = true;
    }
    if (mUnk_18 <= 0) {
        return;
    }

    data_ov058_0219b0a0.func_ov000_020c0e04();
    if (data_027e077c.mUnk_0 != 0xd) {
        return;
    }

    Vec3p local_18 = mUnk_2c;
    Vec3p_Sub(&local_18, &mUnk_20, &local_18);
    q20 length = Vec3p_Length(&local_18);
    if (length < FLOAT_TO_Q20(0.2)) {
        mUnk_20 = mUnk_2c;
    } else if (Vec3p_TryNormalize(&local_18)) {
        if (length < FLOAT_TO_Q20(1.0)) {
            Vec3p_Scale(&local_18, FLOAT_TO_Q20(0.2));
        } else {
            Vec3p_Scale(&local_18, FX_Mul(length, FLOAT_TO_Q20(0.2)));
        }
        Vec3p_Add(&mUnk_20, &local_18, &mUnk_20);
    } else {
        mUnk_20 = mUnk_2c;
    }
    gPlayerLink->func_ov000_020bb810(&mUnk_20, 0x800);
}

void func_ov058_02199220(EquipBombchu *bombchu);
void func_ov058_02199264(EquipBombchu *bombchu);

THUMB void EquipBombchu::vfunc_38(unk32 param1) {
    if (this->IsInUse()) {
        Vec3p VStack_1c;
        this->func_ov000_020be99c(&VStack_1c);
        VStack_1c.y += FLOAT_TO_Q20(0.7);
        gModelRenderBombchu.func_ov000_020b413c(mUnk_04, &VStack_1c);
        if ((mUnk_14 == 1) && (mUnk_18 > 0)) {
            data_ov000_020e9c88.func_ov000_0207b89c(param1, &mUnk_20, (void (*)(void *)) &func_ov058_02199220, this);
        }
    } else {
        if (this->CheckUsable(1)) {
            if (data_ov058_0219b090 > 0) {
                data_ov058_0219b090 -= 1;
            }
        } else {
            data_ov058_0219b090 = 2;
        }
    }
    if (mUnk_46 && data_027e077c.mUnk_0 == 0xd) {
        data_027e0de4.func_ov000_0207bb1c(5, (void (*)(void *)) &func_ov058_02199264, this);
    }
    return;
}

THUMB void func_ov058_02199220(EquipBombchu *bombchu) {
    bombchu->func_ov058_02199228();
}

extern "C" void func_020197bc(void *param1, unk32 param2);
extern "C" void func_0201987c(void *param1, unk32 param2);
THUMB void EquipBombchu::func_ov058_02199228() {
    unk32 uVar1  = data_ov000_020e9360.func_ov000_02079e68(2);
    void *pvVar2 = gModelRenderBombchuPt.GetLcdcAddress();
    func_020197bc(pvVar2, uVar1);
    pvVar2 = gModelRenderBombchuPt.GetLcdcAddress();
    func_0201987c(pvVar2, 1);
    gModelRenderBombchuPt.SetTranslation(&mUnk_20);
}

THUMB void func_ov058_02199264(EquipBombchu *bombchu) {
    bombchu->func_ov058_0219926c();
}

THUMB void EquipBombchu::func_ov058_0219926c() {
    this->func_ov000_020be9e4(mUnk_38, mUnk_44);
}

ARM bool EquipBombchu::IsUsable(unk32 param1) const {
    if (!this->CheckUsable(param1)) {
        return false;
    }
    if ((param1 != 0) && (data_ov058_0219b090 > 0)) {
        return false;
    }
    return true;
}

extern "C" unk32 func_ov014_0212505c();
ARM bool EquipBombchu::CheckUsable(unk32 param1) const {
    if (!gMapManager->func_ov00_0208499c() || data_027e0c54.mUnk_0 || data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 0x33) {
        return false;
    }
    if (data_027e0fd4->mUnk_05a != 0) {
        return false;
    }
    if (this->GetAmmo() <= 0) {
        return false;
    }
    if (param1 != 0) {
        if (!gPlayerLink->func_ov000_020bba28()) {
            return false;
        }
        switch (data_027e077c.mUnk_0) {
            case 0x1:
            case 0xb:
            case 0xc:
            case 0xd:
            case 0x33:
            case 0x34:
                return this->func_ov014_0213ed74() == NULL || func_ov014_0212505c() != 0;
        }
        return false;
    }
    return true;
}

THUMB Actor *EquipBombchu::func_ov058_02199400() {
    if (this->EquipItem::GetAmmo() <= 0 || mUnk_18 <= 0) {
        return NULL;
    }
    Vec3p *playerPos = EquipItem::GetPlayerPos();
    Vec3p spawnPos   = *playerPos;
    spawnPos.y += FLOAT_TO_Q20(0.5);
    ActorSpawnOptions options;
    options.mUnk_1c.id = 1;
    options.mAngle     = mUnk_04;
    gActorSpawner->Spawn(ActorTypeId_Bombchu, &spawnPos, &options, &mBombchuRef);
    Actor *iVar3 = this->func_ov014_0213ed74();
    if (iVar3 != NULL) {
        this->GiveAmmo(-1);
    }
    this->UpdateInUse(0);
    return iVar3;
}

extern "C" void func_ov014_02124ff4(Vec4p *vec);
extern "C" bool func_0202b2f8(Vec3p *param_1, Vec3p *param_2, unk32 param_3);
THUMB bool EquipBombchu::func_ov058_02199498(Vec3p *vec) {
    TilePos tilePos;
    s32 pEVar3;
    bool bVar4;
    bool bVar5;
    int iVar6;
    u32 dVar7;
    s32 pEVar8;
    void *pvVar9;
    s32 pEVar10;
    TilePos local_24c;
    int local_234;
    s32 local_230;
    u32 local_1ec;
    u32 local_1e8[5];
    Vec3p local_1d4;
    Vec3p local_1c8;
    Vec3p local_1bc;
    Vec3p local_1b0;
    Vec3p local_1a4;
    Vec3p local_198;
    Vec3p local_18c[2];
    Vec3p local_174;
    Vec3p local_168;
    s32 local_15c;
    s32 local_158;
    s32 local_154;
    Vec3p local_150;
    Vec3p local_144;
    Vec3p local_138;
    Vec3p local_12c;
    Vec3p local_120;
    Vec3p local_114;
    Vec3p local_108;
    Vec3p local_fc;
    Vec3p local_f0;
    Vec3p local_e4;
    Vec3p local_d8;
    s32 local_cc;
    s32 local_c4;
    Vec3p local_c0;
    Vec4p VStack_b4;
    Vec3p local_a4;
    Vec3p local_98;
    AABB AStack_8c;
    Vec3p local_74[3];
    unk16 local_50;
    unk16 local_4e;
    unk16 local_4c;
    unk16 local_4a;
    unk16 local_48;
    unk8 local_26;
    unk8 local_25;
    unk8 local_24;
    unk8 local_23;
    char local_1c;
    char local_1b;
    unk8 local_1a;
    unk8 local_19;
    unk8 local_18;
    unk8 local_17;

    data_ov058_0219aee0 = -1;
    if (mUnk_18 > 99 || !mUnk_47) {
        return false;
    }
    gMapManager->func_ov00_0208346c(&AStack_8c);
    local_120 = *vec;
    if (!AStack_8c.Contains(&local_120)) {
        if (mUnk_18 > 0) {
            mUnk_47 = 0;
        }
        return false;
    }
    TilePos local_1ee = gMapManager->func_ov00_02083a1c(vec);
    local_98          = *vec;
    local_24c         = local_1ee;
    gMapManager->func_ov00_02083c7c(&local_98, local_24c);
    local_98.y = vec->y;
    if (mUnk_18 > 0) {
        iVar6 = mUnk_18 - 1;

        tilePos = mUnk_1c[iVar6];
        if (tilePos == local_1ee) {
            return false;
        }
        local_24c = tilePos;
        gMapManager->func_ov00_02083c7c(&local_a4, local_24c);
        local_a4.x = vec->x - local_a4.x;
        if (local_a4.x < 0) {
            local_a4.x = -local_a4.x;
        }
        if (local_a4.x < 0x1000) {
            local_a4.z = vec->z - local_a4.z;
            if (local_a4.z < 0) {
                local_a4.z = -local_a4.z;
            }
            if (local_a4.z < 0x1000) {
                return false;
            }
        }
    }
    func_ov014_02124ff4(&VStack_b4);
    if (mUnk_18 < 1) {
        local_230  = gPlayerPos.x;
        local_98.y = gPlayerPos.y;
        local_234  = gPlayerPos.z;
        iVar6      = gPlayerPos.y;
    } else {
        local_230   = mUnk_2c.x;
        iVar6       = mUnk_2c.y;
        local_234   = mUnk_2c.z;
        local_12c.x = local_98.x;
        local_12c.y = local_98.y;
        local_12c.z = local_98.z;
        gMapManager->MapData_vfunc_68(&local_12c, false);
        local_98.y = dVar7;
    }
    pEVar10     = iVar6 + VStack_b4.y;
    local_c0.y  = local_98.y + VStack_b4.y;
    local_c0.x  = local_98.x;
    local_c0.z  = local_98.z;
    local_138.x = (int) local_230;
    local_138.z = local_234;
    local_138.y = (int) pEVar10;
    local_98.y  = local_c0.y;
    Vec3p_Sub(&local_c0, &local_138, &local_c0);
    pEVar8     = local_c0.y;
    local_c0.y = 0;
    iVar6      = Vec3p_Length(&local_c0);
    bVar5      = false;
    bVar4      = Vec3p_TryNormalize(&local_c0);
    if (!bVar4) {
        return false;
    }
    if (iVar6 < 0x7001) {
        if (0xfff < iVar6) {
            if (mUnk_18 > 0) {
                if ((int) pEVar8 < 0) {
                    pEVar8 = -pEVar8;
                }
                if ((int) pEVar8 < 1) {
                    goto LAB_arm9_ov058__0219968e;
                }
            }
            Vec3p_Scale(&local_c0, 0x1000);
            bVar5 = true;
        }
    } else {
        Vec3p_Scale(&local_c0, 0x7000);
        bVar5 = true;
    }
LAB_arm9_ov058__0219968e:
    if (bVar5) {
        local_98.x        = (int) local_230 + local_c0.x;
        local_98.z        = local_234 + local_c0.z;
        TilePos local_1f0 = gMapManager->func_ov00_02083a1c(&local_98);
        local_1ee.x       = local_1f0.x;
        local_1ee.y       = local_1f0.y;
        local_24c         = local_1f0;
        gMapManager->func_ov00_02083c7c(&local_98, local_24c);
        local_144.y = local_98.y + 0x999;
        local_144.x = local_98.x;
        local_144.z = local_98.z;
        local_98.y  = local_144.y;
        gMapManager->MapData_vfunc_68(&local_144, false);
        local_98.y = dVar7 + VStack_b4.y;
        vec->x     = local_98.x;
        vec->y     = local_98.y;
        vec->z     = local_98.z;
    }
    local_24c = local_1ee;
    if (this->func_ov058_0219a3b4(local_24c)) {
        local_24c = local_1ee;
        this->func_ov058_02199ef0(local_24c);
        local_98.y = pEVar8 + VStack_b4.y;
        vec->x     = local_98.x;
        vec->y     = local_98.y;
        vec->z     = local_98.z;
    }
    if (mUnk_18 > 0) {
        iVar6     = mUnk_18 - 1;
        local_24c = mUnk_1c[iVar6];
        if (this->func_ov058_0219a3b4(local_24c)) {
            iVar6     = mUnk_18 - 1;
            local_24c = mUnk_1c[iVar6];
            this->func_ov058_02199ef0(local_24c);
        }
        iVar6 = gMapManager->MapData_vfunc_54(&mUnk_1c[mUnk_18 - 1]);
        if (iVar6 == 0x19) {
            local_150.y = gMapManager->MapData_vfunc_60(&mUnk_1c[mUnk_18 - 1]);
            local_150.x = (int) local_230;
            local_150.y = local_150.y + -0x1333;
            local_150.z = local_234;
            pEVar10     = gMapManager->MapData_vfunc_68(&local_150, false);
            if (0x998 < local_98.y - pEVar10) {
                return false;
            }
        }
    }
    local_50 = 0xffff;
    local_4e = 0xffff;
    local_4c = 0xffff;
    local_4a = 0xffff;
    local_48 = 0;
    local_26 = 0;
    local_25 = 0;
    local_24 = 0;
    local_23 = 0;
    local_1c = '\0';
    local_1b = '\0';
    local_1a = 0;
    local_19 = 0;
    local_18 = 0;
    local_17 = 0;
    pEVar8   = pEVar10;
    pEVar3   = pEVar10;
    if (((int) pEVar10 < local_98.y) && (pEVar8 = local_98.y, pEVar3 = local_98.y, 0x998 < local_98.y - (int) pEVar10)) {
        local_15c = local_230;
        local_154 = local_234;
        local_158 = pEVar10;
        gMapManager->MapData_vfunc_6c(local_15c, local_154, local_158);
        pEVar3 = local_98.y;
        if (((local_cc != 0) || (pEVar8 = pEVar10, local_c4 != 0))) {
            pEVar8 = pEVar10 + 0x999;
            if (local_98.y <= (int) pEVar8) {
                pEVar8 = local_98.y;
            }
        }
    }
    local_98.y            = (int) pEVar3;
    sUnk_02198d00.mUnk_10 = false;
    sUnk_02198d00.mUnk_11 = false;
    local_168.x           = local_98.x;
    local_168.y           = local_98.y;
    local_168.z           = local_98.z;
    local_174.x           = (int) local_230;
    local_174.z           = local_234;
    local_174.y           = (int) pEVar8;
    bVar5                 = gMapManager->func_01ffbe78(local_74, &local_168, &local_174, &VStack_b4);
    if (!sUnk_02198d00.mUnk_10) {
        return false;
    }
    if (bVar5) {
        if (!sUnk_02198d00.mUnk_11) {
            if (!local_1c) {
                if (!local_1b) {
                    return false;
                }
                local_f0.x        = local_74[0].x;
                local_f0.y        = local_74[0].y;
                local_f0.z        = local_74[0].z;
                TilePos local_1fc = gMapManager->func_ov00_02083a1c(&local_f0);
                local_1ee.x       = local_1fc.x;
                local_1ee.y       = local_1fc.y;
                iVar6             = mUnk_18 - 1;
                if (mUnk_1c[iVar6] == local_1fc) {
                    return false;
                }
                local_24c = local_1fc;
                gMapManager->func_ov00_02083c7c(&local_f0, local_24c);
                local_98.x  = local_f0.x;
                local_1b0.x = local_f0.x;
                local_1b0.y = local_f0.y + 0x999;
                local_98.z  = local_f0.z;
                local_1b0.z = local_f0.z;
                local_98.y  = local_1b0.y;
                dVar7       = gMapManager->MapData_vfunc_68(&local_1b0, false);
                local_98.y  = dVar7 + VStack_b4.y;
            } else {
                if (mUnk_18 < 1) {
                    return false;
                }
                local_d8.x        = local_74[0].x;
                local_d8.y        = local_74[0].y;
                local_d8.z        = local_74[0].z;
                TilePos local_1f4 = gMapManager->func_ov00_02083a1c(&local_d8);
                local_1ee.x       = local_1f4.x;
                local_1ee.y       = local_1f4.y;
                local_24c         = local_1f4;
                if (this->func_ov058_0219a3b4(local_24c)) {
                    return false;
                }
                local_24c = local_1ee;
                gMapManager->func_ov00_02083c7c(&local_d8, local_24c);
                iVar6 = mUnk_18 - 1;
                ;
                if (mUnk_1c[iVar6] == local_1ee) {
                    local_e4.x     = local_74[0].x;
                    local_e4.y     = local_74[0].y;
                    local_e4.z     = local_74[0].z;
                    local_18c[0].x = (int) local_230;
                    local_18c[0].z = local_234;
                    local_18c[0].y = (int) pEVar8;
                    Vec3p_Sub(&local_e4, local_18c, &local_e4);
                    iVar6 = local_e4.z;
                    if (local_e4.z < 0) {
                        iVar6 = -local_e4.z;
                    }
                    pvVar9 = (void *) local_e4.x;
                    if (local_e4.x < 0) {
                        pvVar9 = (void *) -local_e4.x;
                    }
                    if (iVar6 < (int) pvVar9) {
                        local_e4.z = 0;
                    } else {
                        local_e4.x = 0;
                    }
                    bVar5 = Vec3p_TryNormalize(&local_e4);
                    if (!bVar5) {
                        return false;
                    }
                    local_d8.x = (int) local_230;
                    local_d8.z = local_234;
                    local_d8.y = (int) pEVar8;
                    Vec3p_Add(&local_d8, &local_e4, &local_d8);
                    TilePos local_1f6 = gMapManager->func_ov00_02083a1c(&local_d8);
                    local_1ee.x       = local_1f6.x;
                    local_1ee.y       = local_1f6.y;
                    local_24c         = local_1f6;
                    if (this->func_ov058_0219a3b4(local_24c)) {
                        return false;
                    }
                    sUnk_02198d00.mUnk_10 = false;
                    sUnk_02198d00.mUnk_11 = false;
                    local_198.x           = (int) local_230;
                    local_198.z           = local_234;
                    local_198.y           = (int) pEVar8;
                    bVar5 = gMapManager->MapManager::func_01ffbe78(local_74, &local_d8, &local_198, &VStack_b4);
                    if (!sUnk_02198d00.mUnk_10) {
                        return false;
                    }
                    if (bVar5) {
                        if (local_1c == '\0') {
                            return false;
                        }
                        local_d8.x        = local_74[0].x;
                        local_d8.y        = local_74[0].y;
                        local_d8.z        = local_74[0].z;
                        TilePos local_1fa = gMapManager->func_ov00_02083a1c(&local_d8);
                        local_1ee.x       = local_1fa.x;
                        local_1ee.y       = local_1fa.y;
                        iVar6             = mUnk_18 - 1;
                        if (mUnk_1c[iVar6] == local_1fa) {
                            return false;
                        }
                        local_24c = local_1fa;
                        gMapManager->func_ov00_02083c7c(&local_d8, local_24c);
                    } else {
                        TilePos local_1f8 = gMapManager->func_ov00_02083a1c(&local_d8);
                        local_1ee.x       = local_1f8.x;
                        local_1ee.y       = local_1f8.y;
                        iVar6             = mUnk_18 - 1;
                        if (mUnk_1c[iVar6] == local_1f8) {
                            return false;
                        }
                        local_24c = local_1f8;
                        gMapManager->func_ov00_02083c7c(&local_d8, local_24c);
                    }
                }
                local_98.x  = local_d8.x;
                local_1a4.x = local_d8.x;
                local_1a4.y = local_d8.y + 0x999;
                local_98.z  = local_d8.z;
                local_1a4.z = local_d8.z;
                local_98.y  = local_1a4.y;
                dVar7       = gMapManager->MapData_vfunc_68(&local_1a4, false);
                local_98.y  = dVar7 + VStack_b4.y;
                vec->x      = local_98.x;
                vec->y      = local_98.y;
                vec->z      = local_98.z;
            }
        } else {
            local_98.x        = sUnk_02198d00.mUnk_14.x;
            local_98.z        = sUnk_02198d00.mUnk_14.z;
            local_98.y        = mUnk_20.y;
            TilePos local_1f2 = gMapManager->func_ov00_02083a1c(&local_98);
            local_1ee.x       = local_1f2.x;
            local_1ee.y       = local_1f2.y;
            vec->x            = local_98.x;
            vec->y            = local_98.y;
            vec->z            = local_98.z;
            mUnk_38.x         = local_98.x;
            mUnk_38.y         = local_98.y;
            mUnk_38.z         = local_98.z;
            mUnk_47           = false;
            mUnk_46           = true;
        }
    } else {
        TilePos VStack_1fe = gMapManager->func_ov00_02083a1c(&local_98);
        iVar6              = gMapManager->MapData_vfunc_54(&VStack_1fe);
        if (iVar6 == 0x19) {
            TilePos VStack_200 = gMapManager->func_ov00_02083a1c(&local_98);
            iVar6              = gMapManager->MapData_vfunc_60(&VStack_200);
            local_98.y         = iVar6 - 0x1333;
        }
        local_1bc.x = local_98.x;
        local_1bc.y = local_98.y;
        local_1bc.z = local_98.z;
        dVar7       = gMapManager->MapData_vfunc_68(&local_1bc, false);
        local_98.y  = dVar7;
    }
    local_fc.x = local_230;
    local_fc.z = local_234;
    bVar5      = true;
    local_fc.y = pEVar8;
    while (true) {
        local_108 = local_fc;
        if (func_0202b2f8(&local_fc, &local_98, 0x1000)) {
            bVar5 = false;
        }
        MapManager::func_ov00_02083fb0(local_1e8, gMapManager, &local_fc);
        if (((local_1e8[0] >> 5 & 3) == 2) && ((local_1e8[0] & 0x1f) != 10)) {
            break;
        }
        local_108 = local_fc;
        if (!bVar5) {
        LAB_arm9_ov058__02199e0c:
            local_24c = local_1ee;
            if (this->func_ov058_0219a3b4(local_24c)) {
                TilePos local_204 = gMapManager->func_ov00_02083a1c(&local_98);
                local_24c         = local_204;
                pEVar8            = this->func_ov058_02199ef0(local_24c);
                local_98.y        = pEVar8 + VStack_b4.y;
            } else {
                local_1d4 = local_98;
                MapManager::func_ov00_02083fb0(&local_1ec, gMapManager, &local_1d4);
                if (((local_1ec >> 5 & 3) == 2) && ((local_1ec & 0x1f) != 10)) {
                    return false;
                }
            }
            mUnk_1c[mUnk_18] = local_1ee;
            mUnk_18 += 1;
            local_114 = local_98;
            Vec3p_Sub(&local_114, &mUnk_20, &local_114);
            mUnk_2c = local_98;
            if (mUnk_18 < 2) {
                mUnk_20 = local_98;
            }
            mUnk_14 = 1;
            return true;
        }
    }
    local_1c8.y       = 0x999;
    local_98.z        = local_108.z;
    local_1c8.z       = local_108.z;
    local_98.x        = local_108.x;
    local_1c8.x       = local_108.x;
    local_98.y        = local_1c8.y;
    dVar7             = gMapManager->MapData_vfunc_68(&local_1c8, false);
    local_98.y        = dVar7 + VStack_b4.y;
    vec->x            = local_98.x;
    vec->y            = local_98.y;
    vec->z            = local_98.z;
    TilePos local_202 = gMapManager->func_ov00_02083a1c(&local_98);
    local_1ee.x       = local_202.x;
    local_1ee.y       = local_202.y;
    if (mUnk_1c[mUnk_18 - 1] == local_202) {
        return false;
    }
    goto LAB_arm9_ov058__02199e0c;
}

extern "C" void func_ov000_020a61ac(Vec3p *param1, int param2);
ARM unk32 EquipBombchu::func_ov058_02199ef0(TilePos param1) {
    s32 iVar1;
    s32 iVar2;
    s16 sVar3;
    s32 result;
    Vec3p local_58;
    Vec3p local_4c;
    Vec3p local_40;

    TilePos local_5c = param1;
    gMapManager->func_ov00_02083c7c(&local_40, local_5c);
    for (s32 iVar2 = 0; iVar2 < 4; iVar2++) {
        sVar3      = 0;
        local_58.x = 0;
        local_58.y = 0;
        local_58.z = 0x400;
        func_ov000_020a61ac(&local_58, (int) sVar3);
        local_4c.x = local_40.x;
        local_4c.y = local_40.y;
        local_4c.z = local_40.z;
        Vec3p_Add(&local_4c, &local_58, &local_4c);
        if (iVar2 == 0) {
            result = gMapManager->func_ov00_02083f44(&local_4c, false);
        } else {
            iVar1 = gMapManager->func_ov00_02083f44(&local_4c, false);
            if (result <= iVar1) {
                result = iVar1;
            }
        }
        sVar3 = sVar3 + 0x4000;
    }
    return result;
}

ARM unk32 EquipBombchu::func_ov058_02199fd8(TilePos param1) {
    u32 temp_r0;
    TilePos spC;

    if (data_ov058_0219aee0 != -1 && data_ov058_0219b110.x == spC.x && data_ov058_0219b110.y == spC.y) {
        return data_ov058_0219aee0;
    }
    TilePos temp_r3     = spC;
    temp_r0             = this->func_ov058_0219a084(temp_r3);
    data_ov058_0219aee0 = temp_r0;
    data_ov058_0219b110 = spC;
    return temp_r0;
}

unk32 EquipBombchu::func_ov058_0219a084(TilePos param1) {}
bool EquipBombchu::func_ov058_0219a3b4(TilePos param1) {}
ARM EquipBombchu_Unk_02198d00::~EquipBombchu_Unk_02198d00() {}
