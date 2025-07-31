#include "Actor/Navi/ActorNavi.hpp"
#include "Actor/Navi/ActorNaviBase.hpp"
#include "DTCM/UnkStruct_027e0fd4.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerBase.hpp"
#include "Player/PlayerControl.hpp"

extern const ItemManager_Unk1 data_ov000_020dc7d0;
extern const ItemManager_Unk1 data_ov000_020dc7e4;
extern u32 data_ov000_020e9370[];
extern "C" void Vec3p_RotateY(u32, Vec3p *);
extern "C" void func_ov005_02102c2c(u32 *param_1, int param_2, Vec3p *param_3, int param_4, int param_5, u32 param_6,
                                    int param_7, char param_8, char param_9, char param_10);

ARM bool ActorNavi::func_ov059_0219933c(u32 param1) {}
ARM void ActorNavi::func_ov059_0219a0ac() {}

// non-matching
ARM void ActorNavi::func_ov059_0219aa08() {
    int iVar1;
    s64 lVar2;
    u16 uVar3;
    u32 uVar4;
    Vec3p VStack_60;
    Vec3p uStack_54;
    Mat3p MStack_48;
    Vec3p VStack_24;

    if (this->mUnk_3c0[0] != 0) {
        VStack_24.x = this->mPos.x;
        VStack_24.y = this->mPos.y + 0x333; // FLOAT_TO_Q20(0.2)?
        VStack_24.z = this->mPos.z;

        uVar3 = this->mUnk_340 - 0x4000; // FLOAT_TO_Q20(12.0)?
        Mat3p_InitYRotation(&MStack_48, SIN(uVar3), COS(uVar3));

        uStack_54.x = uStack_54.y = uStack_54.z = this->mUnk_344;
        this->mUnk_294.vfunc_38();
        this->mUnk_294.SetTransform(&uStack_54, &MStack_48, &VStack_24);
        lVar2 = 0x666 * this->mUnk_344;
        uVar4 = lVar2;

        this->mUnk_334.x =
            ROUND_Q20(uVar4) | ((this->mUnk_344 >> 0x1F) * 0x666 + (lVar2 >> 0x20) + (~0x800 < uVar4)) * 0x100000;

        Mat3p_MultiplyVec(&this->mUnk_334, &this->mUnk_384, &this->mUnk_334);
        Vec3p_RotateY(uVar3, &this->mUnk_334);
        Vec3p_Add(&this->mUnk_334, &VStack_24, &this->mUnk_334);
        VStack_60.z = this->mUnk_334.z;
        VStack_60.x = this->mUnk_334.x;
        lVar2       = 0x333 * this->mUnk_344;
        uVar4       = lVar2;
        VStack_60.y = this->mUnk_334.y + 0x800;
        uVar4       = ROUND_Q20(uVar4) | ((this->mUnk_344 >> 0x1F) * 0x333 + (lVar2 >> 0x20) + (~0x800 < uVar4)) * 0x100000;
        func_ov005_02102c2c(&data_ov000_020e9370[0], 0, &VStack_60, uVar4, uVar4, 0, 0x10, 0, 0, 0);
    }
}

// non-matching
ARM void ActorNavi::func_ov059_0219aba8(u32 param1) {
    switch (param1) {
        case 3: {
            LinkStateItem *uVar1 = EquipHammer::GetLinkStateItem();

            if (uVar1->mUnk_25[2] != 0 && uVar1->mUnk_25[3] != 0) {
                break;
            }

            Vec3p local_11c = data_027e0fd4->mUnk_020.pos;

            q20 iVar5 = gPlayerPos.y + FLOAT_TO_Q20(0.5);
            q20 uVar4 = this->mPos.x;
            q20 uVar6 = this->mPos.z;

            UnkStruct auStack_80;
            local_11c.y = iVar5;

            Vec3p local_110 = {uVar4, iVar5, uVar6};

            Vec3p local_e4 = local_11c;

            // if (gMapManager->func_01ffbf5c(&auStack_80, &local_110, &local_11c, this->mUnk_08c.size, 0, 0, NULL, 0) ? false
            if (gMapManager->func_01ffbf5c(&auStack_80, &local_110, &local_11c, this->mUnk_08c.size, this->mRef.id,
                                           this->mUnk_09c.mUnk_0, this->mUnk_09c.mUnk_4, 0)
                    ? false
                    : true) {
                this->mOffsetPos.x = uVar4;
                this->mOffsetPos.y = iVar5;
                this->mOffsetPos.z = uVar6;
            } else {
                this->mPos.x     = local_e4.x;
                this->mPos.y     = local_e4.y;
                this->mPos.z     = local_e4.z;
                this->mPrevPos   = local_e4;
                this->mOffsetPos = local_e4;
            }
        } break;
        case 4: {
            LinkStateItem *uVar1 = EquipHammer::GetLinkStateItem();

            if (uVar1->mUnk_25[2] != 0 && uVar1->mUnk_25[3] != 0) {
                break;
            }

            Vec3p local_f8 = data_027e0fd4->mUnk_020.pos;
            local_f8.y     = gPlayerPos.y + FLOAT_TO_Q20(0.5);
            Vec3p local_104;
            bool bVar1  = gPlayerControl->UpdateAimWorld(&local_104);
            local_104.y = local_f8.y;
            UnkStruct auStack_e0;
            bool bVar7 = false;
            UnkStruct auStack_80;

            if (bVar1) {
                s32 id          = this->mRef.id;
                Vec3p local_128 = local_f8;

                Vec3p local_134;
                local_134   = local_104;
                local_134.y = local_f8.y;

                if (!gMapManager->func_01ffbf5c(&auStack_e0, &local_134, &local_128, this->mUnk_08c.size, id,
                                                this->mUnk_09c.mUnk_0, this->mUnk_09c.mUnk_4, 0)) {
                    bVar7 = true;
                }

                if (!bVar7) {
                    this->mPos       = auStack_e0.mUnk_3c;
                    this->mPrevPos   = auStack_e0.mUnk_3c;
                    this->mOffsetPos = auStack_e0.mUnk_3c;
                }
                break;
                default:
                    this->func_ov000_020b853c();
                    break;
            }
        }
    }

    void *pvVar2;
    switch (param1) {
        case 3:
            pvVar2 = gItemManager->func_ov00_020ad538(&data_ov000_020dc7d0);
            this->mUnk_2f0.func_ov000_020c0c44(pvVar2);
            this->mUnk_2f0.func_ov000_020c0e5c(0);
            break;
        case 4:
            this->mUnk_348 = 0;
            pvVar2         = gItemManager->func_ov00_020ad538(&data_ov000_020dc7e4);
            this->mUnk_2f0.func_ov000_020c0c44(pvVar2);
            this->mUnk_2f0.func_ov000_020c0e5c(1);
            break;
        default:
            break;
    }
}

ARM bool ActorNavi::func_ov059_0219af14() {
    int iVar1;

    if (this->mUnk_3c0[2] != 0) {
        return false;
    }

    iVar1 = this->mUnk_130;

    switch (this->mUnk_130) {
        case 3:
            if (this->mUnk_348 > 0) {
                this->mVel.x = 0;
                this->mVel.y = 0;
                this->mVel.z = 0;
                this->mUnk_348--;
                return true;
            }
            break;
        case 4:
            if (this->mHammer->IsReleased()) {
                this->mVel.y = this->mOffsetPos.y - this->mPos.y;
                return true;
            } else {
                this->func_ov000_020b8c50(0x3000);
                this->mVel.y = this->mOffsetPos.y - this->mPos.y;
                return true;
            }
        default:
            break;
    }

    return false;
}

ARM bool ActorNavi::func_ov059_0219afc4() {
    this->mUnk_3c0[2] = 0;
    this->func_ov059_0219933c(0);

    switch (this->mUnk_130) {
        case 3:
            this->mOffsetPos.y = gPlayerPos.y + 0x1666;
            return true;
        case 4:
            return true;
        default:
            break;
    }

    return false;
}

ARM void ActorNavi::func_ov059_0219b020() {
    if (gItemManager->GetEquippedFairy() != FairyId_Courage) {
        ItemManager *itemMgr = gItemManager;

        this->mPrevPos = this->mOffsetPos = this->mPos = itemMgr->GetFairy(itemMgr->GetEquippedFairy())->mPos;
    } else {
        this->mOffsetPos = this->mPos;
    }

    gPlayerControl->mAimWorld = this->mOffsetPos;

    this->mHammer     = GetEquipHammer();
    this->mUnk_3c0[0] = 0x0;
    this->mUnk_3c0[2] = 0x0;
    this->SetActive(3);
}
