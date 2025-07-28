#include "Actor/Navi/ActorNavi.hpp"
#include "Actor/Navi/ActorNaviBase.hpp"
#include "DTCM/UnkStruct_027e0fd4.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Player/LinkStateItem.hpp"
#include "Player/PlayerBase.hpp"
#include "Player/PlayerControl.hpp"

extern const ItemManager_Unk1 *data_ov000_020dc7d0;
extern const ItemManager_Unk1 *data_ov000_020dc7e4;
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
    bool bVar1;
    LinkStateItem *uVar1;
    ItemManager *pIVar3;
    int uVar4;
    int iVar5;
    int uVar6;
    bool bVar7;
    Vec3p local_134;
    Vec3p local_128;
    Vec3p local_11c;
    Vec3p local_110;
    Vec3p local_104;
    Vec3p local_e4;

    u16 local_bc;
    unk16 local_ba;
    unk16 local_b8;
    unk16 local_b6;
    unk16 local_b4;
    unk32 local_92;
    unk32 local_91;
    unk32 local_90;
    unk32 local_8f;
    unk32 local_88;
    unk32 local_87;
    unk32 local_86;
    unk32 local_85;
    unk32 local_84;
    unk32 local_83;
    u16 local_5c;
    unk16 local_5a;
    unk16 local_58;
    unk16 local_56;
    unk16 local_54;
    unk32 local_32;
    unk32 local_31;
    unk32 local_30;
    unk32 local_2f;
    unk32 local_28;
    unk32 local_27;
    unk32 local_26;
    unk32 local_25;
    unk32 local_24;
    unk32 local_23;
    ItemManager *puVar1;

    switch (param1) {
        case 3: {
            uVar1 = EquipHammer::GetLinkStateItem();

            if (uVar1->mUnk_25[2] != 0 && uVar1->mUnk_25[3] != 0) {
                break;
            }

            local_11c.x = data_027e0fd4->mUnk_020.pos.x;
            local_11c.z = data_027e0fd4->mUnk_020.pos.z;

            iVar5 = gPlayerPos.y + FLOAT_TO_Q20(0.5);
            uVar4 = this->mPos.x;
            uVar6 = this->mPos.z;

            UnkStruct auStack_80;
            local_11c.y = iVar5;

            local_110.x = uVar4;
            local_110.y = iVar5;
            // local_110.z = uVar6;

            local_e4.x = local_11c.x;
            local_e4.y = iVar5;
            local_e4.z = local_11c.z;

            local_5a = local_5c;
            local_58 = local_5c;
            local_56 = local_5c;

            if (gMapManager->func_01ffbf5c(&auStack_80, &local_110, &local_11c, this->mUnk_08c.size, 0, 0, NULL, 0) ? false
                                                                                                                    : true) {
                this->mPos       = local_e4;
                this->mPrevPos   = local_e4;
                this->mOffsetPos = local_e4;
            } else {
                this->mOffsetPos.x = uVar4;
                this->mOffsetPos.y = iVar5;
                this->mOffsetPos.z = uVar6;
            }
        } break;
        case 4: {
            uVar1 = EquipHammer::GetLinkStateItem();

            if (uVar1->mUnk_25[2] != 0 && uVar1->mUnk_25[3] != 0) {
                break;
            }

            UnkStruct auStack_e0;
            auStack_e0.mUnk_3c.x = data_027e0fd4->mUnk_020.pos.x;
            auStack_e0.mUnk_3c.y = gPlayerPos.y + FLOAT_TO_Q20(0.5);
            auStack_e0.mUnk_3c.z = data_027e0fd4->mUnk_020.pos.z;

            bVar1       = gPlayerControl->UpdateAimWorld(&local_104);
            bVar7       = false;
            local_104.y = auStack_e0.mUnk_3c.y;
            UnkStruct auStack_80;
            local_ba = local_bc;
            local_b8 = local_bc;
            local_b6 = local_bc;

            if (bVar1) {
                local_128 = auStack_e0.mUnk_3c;

                // local_134.x = local_104.x;
                // local_134.y = auStack_e0.mUnk_14.y;
                // local_134.z = local_104.z;

                if (!gMapManager->func_01ffbf5c(&auStack_e0, &local_134, &local_128, this->mUnk_08c.size, 0, 0, NULL, 0)) {
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

            pIVar3 = gItemManager;
            void *pvVar2;
            switch (param1) {
                case 3:
                    pvVar2 = pIVar3->func_ov00_020ad538(data_ov000_020dc7d0);
                    this->mUnk_2f0->func_ov000_020c0c44(pvVar2);
                    this->mUnk_2f0->func_ov000_020c0e5c(0);
                    break;
                case 4:
                    this->mUnk_348 = 0;
                    pvVar2         = pIVar3->func_ov00_020ad538(data_ov000_020dc7e4);
                    this->mUnk_2f0->func_ov000_020c0c44(pvVar2);
                    this->mUnk_2f0->func_ov000_020c0e5c(1);
                    break;
                default:
                    break;
            }
        }
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
