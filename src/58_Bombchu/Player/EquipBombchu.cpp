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

ModelRender EquipBombchu::gModelRenderBombchu(0);
ModelRender EquipBombchu::gModelRenderBombchuPt(0);
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
        mUnk_10.y = 1;
        UnkStruct1 unk(*(Vec3p *) ((u32) temp_r0 + 0x820));
        mUnk_14 = unk.mUnk_0c;
    }
    return true;
}

ARM bool EquipBombchu_Unk_02198d00::vfunc_10(s32 *param1) {
    Actor *temp_r0 = (Actor *) param1;
    if (!temp_r0->Grab()) {
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

extern "C" void func_ov014_02124ff4(Sphere *sphere);
extern "C" bool func_0202b2f8(Vec3p *param_1, Vec3p *param_2, unk32 param_3);
THUMB bool EquipBombchu::func_ov058_02199498(Vec3p *vec) {
    struct TempStruct1 {
        /* 00 */ unk8 mUnk_00[0xe];
        /* 0e */ unk8 mUnk_0e;
        /* 0f */ unk8 mUnk_0f;
        /* 10 */ unk8 mUnk_10;
        /* 11 */ unk8 mUnk_11;
        /* 12 */ unk8 mUnk_12[0x6];
        /* 18 */ volatile unk8 mUnk_18;
        /* 19 */ unk8 mUnk_19;
        /* 1a */ unk8 mUnk_1a;
        /* 1b */ unk8 mUnk_1b;
        /* 1c */ unk8 mUnk_1c;
        /* 1d */ unk8 mUnk_1d;
        /* 1e */
    };

    struct TempStruct2 {
        union {
            /* 00 */ Vec3p mUnk_00;
            struct {
                /* 00 */ u16 mUnk_00_x;
                /* 02 */ u16 mUnk_02;
                /* 04 */ u16 mUnk_04;
                /* 06 */ u16 mUnk_06;
                /* 08 */ unk32 mUnk_08;
            };
        };
        /* 0c */ unk8 mUnk_0c[0x34];
        /* 40 */
    };

    TempStruct1 sp214;
    TempStruct2 sp1D4;
    AABB sp1BC;
    Vec3p sp1B0;
    Vec3p sp1A4;
    Sphere sp194;
    Vec3p sp188;
    Vec3p sp17C;
    Vec3p sp170;
    Vec3p sp164;
    Vec3p sp158;
    Vec3p sp14C;
    Vec3p sp140;
    Vec3p sp134;
    Vec3p sp128;
    Vec3p sp11C;
    Vec3p sp110;
    Vec3p sp104;
    Vec3p spF8;
    Vec3p spEC;
    Vec3p spE0;
    Vec3p spD4;
    Vec3p spBC;
    Vec3p spB0;
    Vec3p spA4;
    Vec3p sp98;
    Vec3p sp8C;
    Vec3p sp80;
    Vec3p sp74;
    unk32 sp64;
    u32 sp60;
    u32 sp5C;
    unk32 sp50;
    unk32 sp48;
    unk32 sp44;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 temp_r0_13;
    s32 temp_r0_16;
    s32 temp_r0_21;
    s32 temp_r0_22;
    s32 temp_r0_23;
    s32 temp_r0_24;
    s32 temp_r0_25;
    s32 temp_r0_27;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r1;
    s32 temp_r1_10;
    s32 temp_r1_14;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r7_2;
    s32 temp_r7_3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r6;
    s32 var_r6_2;
    s32 var_r6_3;
    s32 var_r7;

    data_ov058_0219aee0 = -1;
    if ((mUnk_18 >= 0x64) || (!mUnk_47)) {
        return 0;
    }
    gMapManager->func_ov00_0208346c(&sp1BC);
    sp128.x = vec->x;
    sp128.y = vec->y;
    sp128.z = vec->z;
    if (!sp1BC.Contains(&sp128)) {
        var_r0 = 1;
    } else {
        var_r0 = 0;
    }
    if (var_r0 != 0) {
        if (mUnk_18 > 0) {
            mUnk_47 = 0;
        }
        return 0;
    }
    TilePos sp5a = gMapManager->func_ov00_02083a1c(vec);
    sp1B0.x      = vec->x;
    sp1B0.y      = vec->y;
    sp1B0.z      = vec->z;
    gMapManager->func_ov00_02083c7c(&sp1B0, sp5a);
    sp1B0.y = vec->y;
    temp_r1 = mUnk_18;
    if (temp_r1 > 0) {
        TilePos sp24_unk1C = sp5a;
        TilePos sp24_unk6  = mUnk_1c[temp_r1 - 1];
        TilePos sp24_unk1E = sp24_unk6;
        if (sp24_unk1E == sp24_unk1C) {
            return 0;
        }
        gMapManager->func_ov00_02083c7c(&sp1A4, sp24_unk6);
        var_r1 = vec->x - sp1A4.x;
        if (var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        if (var_r1 < 0x1000) {
            var_r1_2 = vec->z - sp1A4.z;
            if (var_r1_2 < 0) {
                var_r1_2 = 0 - var_r1_2;
            }
            if (var_r1_2 < 0x1000) {
                return 0;
            }
        }
    }
    func_ov014_02124ff4(&sp194);
    if (mUnk_18 <= 0) {
        var_r6  = gPlayerPos.y;
        sp18    = gPlayerPos.x;
        sp1B0.y = var_r6;
        sp14    = gPlayerPos.z;
    } else {
        var_r6  = mUnk_2c.y;
        sp18    = mUnk_2c.x;
        sp14    = mUnk_2c.z;
        sp11C.x = sp1B0.x;
        sp11C.y = sp1B0.y;
        sp11C.z = sp1B0.z;
        sp1B0.y = gMapManager->MapData_vfunc_68(&sp11C, 0);
    }
    var_r6_2  = var_r6 + sp194.pos.y;
    temp_r1_2 = sp1B0.y + sp194.pos.y;
    sp1B0.y   = temp_r1_2;
    sp188.x   = sp1B0.x;
    sp188.y   = temp_r1_2;
    sp188.z   = sp1B0.z;
    sp110.x   = sp18;
    sp110.y   = var_r6_2;
    sp110.z   = sp14;
    Vec3p_Sub(&sp188, &sp110, &sp188);
    var_r7  = sp188.y;
    sp188.y = 0;
    sp20    = Vec3p_Length(&sp188);
    sp1C    = 0;
    if (Vec3p_TryNormalize(&sp188) == 0) {
        return 0;
    }
    if (sp20 > 0x7000) {
        Vec3p_Scale(&sp188, 0x7000);
        sp1C = 1;
    } else if (sp20 >= 0x1000) {
        if (mUnk_18 > 0 || ABS(var_r7) > 0) {
            Vec3p_Scale(&sp188, 0x1000);
            sp1C = 1;
        }
    }
    if (sp1C != 0) {
        sp1B0.x      = sp18 + sp188.x;
        sp1B0.z      = sp14 + sp188.z;
        TilePos sp58 = gMapManager->func_ov00_02083a1c(&sp1B0);
        gMapManager->func_ov00_02083c7c(&sp1B0, sp58);
        temp_r1_3 = sp1B0.y + 0x999;
        sp1B0.y   = temp_r1_3;
        sp104.x   = sp1B0.x;
        sp104.x   = temp_r1_3;
        sp104.x   = sp1B0.z;
        temp_r0_3 = gMapManager->MapData_vfunc_68(&sp104, 0);
        sp1B0.y   = temp_r0_3;
        temp_r0_4 = temp_r0_3 + sp194.pos.y;
        sp1B0.y   = temp_r0_4;
        vec->x    = sp1B0.x;
        vec->y    = temp_r0_4;
        vec->z    = sp1B0.z;
    }
    if (this->func_ov058_0219a3b4(sp5a) != 0) {
        temp_r0_5 = this->func_ov058_02199ef0(sp5a);
        sp1B0.y   = temp_r0_5;
        temp_r0_6 = temp_r0_5 + sp194.pos.y;
        sp1B0.y   = temp_r0_6;
        vec->x    = sp1B0.x;
        vec->y    = temp_r0_6;
        vec->z    = sp1B0.z;
    }
    if (mUnk_18 > 0) {
        if (this->func_ov058_0219a3b4(mUnk_1c[mUnk_18 - 1]) != 0) {
            var_r6_2 = this->func_ov058_02199ef0(mUnk_1c[mUnk_18 - 1]);
        }
        if (gMapManager->MapData_vfunc_54(&mUnk_1c[mUnk_18 - 1]) == 0x19) {
            temp_r0_7 = gMapManager->MapData_vfunc_60(&mUnk_1c[mUnk_18 - 1]);
            spF8.x    = sp18;
            spF8.y    = temp_r0_7 - 0x1333;
            spF8.z    = sp14;
            var_r6_2  = gMapManager->MapData_vfunc_68(&spF8, 0);
            if ((sp1B0.y - var_r6_2) >= 0x999) {
                return 0;
            }
        }
    }
    sp1D4.mUnk_00_x = -1;
    sp1D4.mUnk_02   = -1;
    sp1D4.mUnk_04   = -1;
    sp1D4.mUnk_06   = -1;
    sp1D4.mUnk_00.z = 0;
    sp214.mUnk_0e   = 0;
    sp214.mUnk_0f   = 0;
    sp214.mUnk_10   = 0;
    sp214.mUnk_11   = 0;
    sp214.mUnk_18   = 0U;
    sp214.mUnk_19   = 0U;
    sp214.mUnk_1a   = 0;
    sp214.mUnk_1b   = 0;
    sp214.mUnk_1c   = 0;
    sp214.mUnk_1d   = 0;
    if (var_r6_2 < sp1B0.y) {
        if ((sp1B0.y - var_r6_2) < 0x999) {
            var_r6_2 = sp1B0.y;
        } else {
            spEC.x = sp18;
            spEC.z = sp14;
            spEC.y = var_r6_2;
            gMapManager->MapData_vfunc_6c(&spEC, &sp64, &sp17C);
            if ((sp17C.x != 0) || (sp17C.z != 0)) {
                var_r6_2 += 0x99A;
                if (var_r6_2 >= sp1B0.y) {
                    var_r6_2 = sp1B0.y;
                }
            }
        }
    } else {
        sp1B0.y = var_r6_2;
    }
    sUnk_02198d00.mUnk_10.x = 0;
    sUnk_02198d00.mUnk_10.y = 0;
    spD4.y                  = var_r6_2;
    spE0.x                  = sp1B0.x;
    spE0.y                  = sp1B0.y;
    spE0.z                  = sp1B0.z;
    spD4.x                  = sp18;
    spD4.z                  = sp14;
    sp194.pos.y             = 9;
    sp194.pos.z             = 0xCF;
    sp194.radius            = 1;
    temp_r0_8               = gMapManager->func_01ffbe78(&sp1D4.mUnk_00, &spE0, &spD4, &sp194);
    if (sUnk_02198d00.mUnk_10.x != 0) {
        return 0;
    }
    if (temp_r0_8 != 0) {
        if (sUnk_02198d00.mUnk_10.y != 0) {
            sp1B0.x      = sUnk_02198d00.mUnk_14.x;
            sp1B0.y      = sUnk_02198d00.mUnk_14.y;
            sp1B0.z      = sUnk_02198d00.mUnk_14.z;
            sp1B0.y      = mUnk_20.y;
            TilePos sp56 = gMapManager->func_ov00_02083a1c(&sp1B0);
            sp5a.x       = sp56.x;
            sp5a.y       = sp56.y;
            vec->x       = sp1B0.x;
            vec->y       = sp1B0.y;
            vec->z       = sp1B0.z;
            mUnk_38.x    = sp1B0.x;
            mUnk_38.y    = sp1B0.y;
            mUnk_38.z    = sp1B0.z;
            mUnk_47      = 0;
            mUnk_46      = 1;
        } else {
            if (sp214.mUnk_18 != 0) {
                if (mUnk_18 <= 0) {
                    return 0;
                }
                sp170.x      = sp1D4.mUnk_00.x;
                sp170.y      = sp1D4.mUnk_00.y;
                sp170.z      = sp1D4.mUnk_00.z;
                TilePos sp54 = gMapManager->func_ov00_02083a1c(&sp170);
                sp5a         = sp54;
                if (this->func_ov058_0219a3b4(sp5a) != 0) {
                    return 0;
                }
                gMapManager->func_ov00_02083c7c(&sp170, sp5a);
                TilePos sp24_unk18 = sp5a;
                TilePos sp24_unk1A = mUnk_1c[mUnk_18 - 1];
                if (sp24_unk1A == sp24_unk18) {
                    sp164.x = sp1D4.mUnk_00.x;
                    spBC.y  = var_r6_2;
                    sp164.y = sp1D4.mUnk_00.y;
                    sp164.z = sp1D4.mUnk_00.z;
                    spBC.x  = sp18;
                    spBC.z  = sp14;
                    Vec3p_Sub(&sp164, &spBC, &sp164);
                    var_r0_2 = sp164.z;
                    if (var_r0_2 < 0) {
                        var_r0_2 = 0 - var_r0_2;
                    }
                    var_r1_3 = sp164.x;
                    if (var_r1_3 < 0) {
                        var_r1_3 = 0 - var_r1_3;
                    }
                    if (var_r1_3 > var_r0_2) {
                        sp164.z = 0;
                    } else {
                        sp164.x = 0;
                    }
                    if (Vec3p_TryNormalize(&sp164) != 0) {
                        sp170.x = sp18;
                        sp170.y = var_r6_2;
                        sp170.z = sp14;
                        Vec3p_Add(&sp170, &sp164, &sp170);
                    } else {
                        return 0;
                    }
                    TilePos sp52 = gMapManager->func_ov00_02083a1c(&sp170);
                    sp5a         = sp52;
                    if (this->func_ov058_0219a3b4(sp5a) != 0) {
                        return 0;
                    }
                    sUnk_02198d00.mUnk_10.x = 0;
                    sUnk_02198d00.mUnk_10.y = 0;
                    spB0.y                  = var_r6_2;
                    spB0.x                  = sp18;
                    spB0.z                  = sp14;
                    sp194.pos.y             = 9;
                    sp194.pos.z             = 0xCF;
                    sp194.radius            = 1;
                    temp_r0_16              = gMapManager->func_01ffbe78(&sp1D4.mUnk_00, &sp170, &spB0, &sp194);
                    if (sUnk_02198d00.mUnk_10.x != 0) {
                        return 0;
                    }
                    if (temp_r0_16 == 0) {
                        TilePos sp50       = gMapManager->func_ov00_02083a1c(&sp170);
                        TilePos sp24_unk4  = sp50;
                        TilePos sp24_unk14 = sp24_unk4;
                        TilePos sp24_unk16 = mUnk_1c[mUnk_18 - 1];
                        if (sp24_unk16 == sp24_unk14) {
                            return 0;
                        }
                        gMapManager->func_ov00_02083c7c(&sp170, sp24_unk4);
                    } else {
                        if (sp214.mUnk_18 == 0) {
                            return false;
                        }
                        sp170.x            = sp1D4.mUnk_00.x;
                        sp170.y            = sp1D4.mUnk_00.y;
                        sp170.z            = sp1D4.mUnk_00.z;
                        TilePos sp4E       = gMapManager->func_ov00_02083a1c(&sp170);
                        sp5a               = sp4E;
                        TilePos sp24_unk2  = sp5a;
                        TilePos sp24_unk10 = sp24_unk2;
                        TilePos sp24_unk12 = mUnk_1c[mUnk_18 - 1];
                        if (sp24_unk12 == sp24_unk10) {
                            return 0;
                        }
                        gMapManager->func_ov00_02083c7c(&sp170, sp24_unk2);
                    }
                }
                sp1B0.x    = sp170.x;
                spA4.x     = sp170.x;
                temp_r1_14 = sp170.y + 0x999;
                sp1B0.y    = sp170.y;
                sp1B0.z    = sp170.z;
                spA4.z     = sp170.z;
                sp1B0.y    = temp_r1_14;
                spA4.y     = temp_r1_14;
                temp_r0_21 = gMapManager->MapData_vfunc_68(&spA4, 0);
                sp1B0.y    = temp_r0_21;
                temp_r0_22 = temp_r0_21 + sp194.pos.y;
                sp1B0.y    = temp_r0_22;
                vec->x     = sp1B0.x;
                vec->y     = temp_r0_22;
                vec->z     = sp1B0.z;
            } else {
                if (sp214.mUnk_19 == 0) {
                    return 0;
                }
                sp158.x           = sp1D4.mUnk_00.x;
                sp158.y           = sp1D4.mUnk_00.y;
                sp158.z           = sp1D4.mUnk_00.z;
                TilePos sp4C      = gMapManager->func_ov00_02083a1c(&sp158);
                sp5a.x            = sp4C.x;
                sp5a.y            = sp4C.y;
                TilePos sp24_unk0 = sp5a;
                TilePos sp24_unkC = sp24_unk0;
                TilePos sp24_unkE = mUnk_1c[mUnk_18 - 1];
                if (sp24_unkE == sp24_unkC) {
                    return 0;
                }
                gMapManager->func_ov00_02083c7c(&sp158, sp24_unk0);
                sp1B0.x    = sp158.x;
                sp98.x     = sp158.x;
                temp_r1_10 = sp158.y + 0x999;
                sp1B0.y    = sp158.y;
                sp1B0.z    = sp158.z;
                sp98.z     = sp158.z;
                sp1B0.y    = temp_r1_10;
                sp98.y     = temp_r1_10;
                temp_r0_13 = gMapManager->MapData_vfunc_68(&sp98, 0);
                sp1B0.y    = temp_r0_13;
                sp1B0.y    = temp_r0_13 + sp194.pos.y;
            }
        }
    } else {
        MapManager *temp_r7_2 = gMapManager;
        TilePos sp4a          = temp_r7_2->func_ov00_02083a1c(&sp1B0);
        if (temp_r7_2->MapData_vfunc_54(&sp4a) == 0x19) {
            MapManager *temp_r7_3 = gMapManager;
            TilePos sp48          = temp_r7_3->func_ov00_02083a1c(&sp1B0);
            temp_r0_9             = temp_r7_3->MapData_vfunc_60(&sp48);
            sp1B0.y               = temp_r0_9;
            sp1B0.y               = temp_r0_9 - 0x1333;
        }
        sp8C.x  = sp1B0.x;
        sp8C.y  = sp1B0.y;
        sp8C.z  = sp1B0.z;
        sp1B0.y = gMapManager->MapData_vfunc_68(&sp8C, 0);
    }
    sp14C.y  = var_r6_2;
    sp14C.x  = sp18;
    sp140.y  = var_r6_2;
    sp14C.z  = sp14;
    var_r6_3 = 1;
    sp140.x  = sp18;
    sp140.z  = sp14;
    while (true) {
        if (func_0202b2f8(&sp14C, &sp1B0, 0x1000) != 0) {
            var_r6_3 = 0;
        }
        MapManager::func_ov00_02083fb0(&sp60, gMapManager, &sp14C);
        if (((3 & (sp60 >> 5)) == 2) && ((sp60 & 0x1F) != 0xA)) {
            sp1B0.y           = sp140.y;
            temp_r0_23        = sp140.y + 0x999;
            sp1B0.y           = temp_r0_23;
            sp80.y            = temp_r0_23;
            sp1B0.z           = sp140.z;
            sp80.z            = sp140.z;
            sp1B0.x           = sp140.x;
            sp80.x            = sp140.x;
            temp_r0_24        = gMapManager->MapData_vfunc_68(&sp80, 0);
            sp1B0.y           = temp_r0_24;
            temp_r0_25        = temp_r0_24 + sp194.pos.y;
            sp1B0.y           = temp_r0_25;
            vec->x            = sp1B0.x;
            vec->y            = temp_r0_25;
            vec->z            = sp1B0.z;
            TilePos sp46      = gMapManager->func_ov00_02083a1c(&sp1B0);
            sp5a              = sp46;
            TilePos sp24_unk8 = sp5a;
            TilePos sp24_unkA = mUnk_1c[mUnk_18 - 1];
            if (sp24_unkA == sp24_unk8) {
                return 0;
            }
            goto block_114;
        } else {
            sp140.x = sp14C.x;
            sp140.y = sp14C.y;
            sp140.z = sp14C.z;
        }
        if (var_r6_3 == 0) {
        block_114:
            if (this->func_ov058_0219a3b4(sp5a) != 0) {
                TilePos sp44 = gMapManager->func_ov00_02083a1c(&sp1B0);
                temp_r0_27   = this->func_ov058_02199ef0(sp44);
                sp1B0.y      = temp_r0_27;
                sp1B0.y      = temp_r0_27 + sp194.pos.y;
            } else {
                sp74.x = sp1B0.x;
                sp74.y = sp1B0.y;
                sp74.z = sp1B0.z;
                MapManager::func_ov00_02083fb0(&sp5C, gMapManager, &sp74);
                if (((3 & (sp5C >> 5)) == 2) && ((0x1F & sp5C) != 0xA)) {
                    return 0;
                }
            }
            mUnk_1c[mUnk_18] = sp5a;
            mUnk_18 += 1;
            sp134.x = sp1B0.x;
            sp134.y = sp1B0.y;
            sp134.z = sp1B0.z;
            Vec3p_Sub(&sp134, &mUnk_20, &sp134);
            mUnk_2c = sp1B0;
            if (mUnk_18 <= 1) {
                mUnk_20 = sp1B0;
            }
            mUnk_14 = 1;
            return 1;
        }
    }
}

extern "C" void func_ov000_020a61ac(Vec3p *vec, s16 angle);
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
    if (data_ov058_0219aee0 != -1) {
        if (data_ov058_0219b110 == param1) {
            return data_ov058_0219aee0;
        }
    }
    data_ov058_0219aee0 = this->func_ov058_0219a084(param1);
    data_ov058_0219b110 = param1;
    return data_ov058_0219aee0;
}

ARM unk32 EquipBombchu::func_ov058_0219a084(TilePos param1) {
    Vec3p sp3C[4];

    Vec3p sp30;
    gMapManager->func_ov00_02083c7c(&sp30, param1);
    Vec3p sp24;
    for (s32 i = 0; i < 4; i++) {
        sp24.x = 0;
        sp24.y = 0;
        sp24.z = FLOAT_TO_Q20(0.25);
        func_ov000_020a61ac(&sp24, 0x4000 * i);
        sp3C[i] = sp30;
        Vec3p_Add(&sp3C[i], &sp24, &sp3C[i]);
        sp3C[i].y = gMapManager->func_ov00_02083f44(&sp3C[i], 0);
    }
    if ((sp3C[0].y == sp3C[1].y) && (sp3C[0].y == sp3C[2].y) && (sp3C[0].y == sp3C[3].y)) {
        UnkStruct sp90;
        if (gMapManager->func_01ffbf5c(&sp90, &sp3C[0], &sp3C[2], 0x200, 9, 1, &sUnk_02198d00, 0)) {
            return 7;
        }
        if (gMapManager->func_01ffbf5c(&sp90, &sp3C[1], &sp3C[3], 0x200, 9, 1, &sUnk_02198d00, 0)) {
            return 7;
        }
        if (gMapManager->func_01ffbf5c(&sp90, &sp3C[2], &sp3C[0], 0x200, 9, 1, &sUnk_02198d00, 0)) {
            return 7;
        }
        if (gMapManager->func_01ffbf5c(&sp90, &sp3C[3], &sp3C[1], 0x200, 9, 1, &sUnk_02198d00, 0)) {
            return 7;
        }
        return 0;
    }
    if ((sp3C[0].y == sp3C[1].y) && (sp3C[2].y == sp3C[3].y)) {
        if (sp3C[0].y < sp3C[2].y) {
            return 4;
        }
        return 1;
    }
    if ((sp3C[0].y == sp3C[3].y) && (sp3C[1].y == sp3C[2].y)) {
        if (sp3C[0].y < sp3C[1].y) {
            return 3;
        }
        return 2;
    }

    Vec3p sp18;
    unk32 sp14;
    gMapManager->MapData_vfunc_6c(&sp30, &sp14, &sp18);
    if ((sp18.x != 0) || (sp18.z != 0)) {
        return 5;
    }
    return 7;
}

bool EquipBombchu::func_ov058_0219a3b4(TilePos param1) {
    switch (this->func_ov058_02199fd8(param1)) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 7:
            return true;
        default:
            return false;
    }
}
