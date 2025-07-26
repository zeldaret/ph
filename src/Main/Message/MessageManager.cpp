#include "Message/MessageManager.hpp"
#include "Actor/ActorManager.hpp"
#include "DTCM/UnkStruct_027e0c54.hpp"
#include "DTCM/UnkStruct_027e0ffc.hpp"
#include "Game/Game.hpp"
#include "Player/TouchControl.hpp"
#include "System/SysNew.hpp"

extern ARM unk32 func_ov000_020d7f18(u32 *, unk32);
extern ARM unk32 func_02037628(u8 *);

extern u32 *data_027e0ce0[];
extern u32 data_02056924[];
extern UnkStruct_MsgProc_Base_unk_2C *data_02068e6c;
extern UnkStruct_MsgProc_Base_unk_2C *data_02068e8c;
extern u16 data_02056918[];
extern ActorTypeId data_0205691c[];

// non-matching
ARM void MessageManager::func_0203643c(u32 *param_1, MessageManager *param_2, u32 param_3) {
    BMGGroups *pBVar2 = param_2->pGroups;

    *param_1 = ((u32) pBVar2->entries[param_3 >> 0x10].pDAT1 +
                (pBVar2->entries[param_3 >> 0x10].func_02037258(param_3 & 0xFFFF)->offset & ~1));
}

// non-matching
THUMB void MessageManager::func_02036490() {
    this->mUnk_03 = 0;
    this->mUnk_0c = 0;

    this->pGroups->func_020372f0(BMG_FILE_INDEX_SYSTEM, 2);

    switch (gGame.mModeId) {
        case GameModeId_FileSelect:
            this->pGroups->func_020372f0(BMG_FILE_INDEX_MAINSELECT, 2);
            this->pGroups->func_020372f0(BMG_FILE_INDEX_BATTLE, 2);
            break;
        case GameModeId_DownloadPlay:
            this->pGroups->func_020372f0(BMG_FILE_INDEX_BATTLE, 2);
            this->pGroups->func_020372f0(BMG_FILE_INDEX_BATTLECOMMON, 2);
            break;
        case GameModeId_Battle:
            this->pGroups->func_020372f0(BMG_FILE_INDEX_BATTLE, 2);
            this->pGroups->func_020372f0(BMG_FILE_INDEX_BATTLECOMMON, 2);
            break;
        case GameModeId_Contact:
            this->pGroups->func_020372f0(BMG_FILE_INDEX_MAINSELECT, 2);
            break;
        default:
            break;
    }

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_18); i++) {
        this->mUnk_18[i] = NULL;
    }

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        this->mUnk_28[i] = NULL;
    }

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_18); i++) {
        this->mUnk_18[i] = new(data_027e0ce0[1], 4) UnkStruct_020386d8();
    }

    this->mUnk_18[0]->mUnk_39 = 0;
    this->mUnk_18[1]->mUnk_39 = 1;

    if (gGame.mModeId == GameModeId_Adventure || gGame.mModeId == GameModeId_FileSelect ||
        gGame.mModeId == GameModeId_Battle) {
        for (s32 i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
            switch (data_02056924[i + 1]) {
                case 0:
                    if (gGame.mModeId != GameModeId_Adventure) {
                        this->mUnk_28[i] = new(data_027e0ce0[1], 4) UnkStruct_020397f8();
                        this->mUnk_28[i]->func_0203dc74(0xE0, 0x40);
                        this->mUnk_28[i]->mUnk_2c = &data_02068e6c;
                        this->mUnk_28[i]->mUnk_50 = i != 0;
                    }
                    break;
                case 1:
                    this->mUnk_28[i] = new(data_027e0ce0[1], 4) MsgProc_Type3();
                    this->mUnk_28[i]->func_0203dc74(0x50, 0x60);
                    this->mUnk_28[i]->mUnk_2c = &data_02068e6c;
                    break;
                case 2:
                    this->mUnk_28[i] = NULL;
                    break;
                case 3:
                    if (func_0202ab48() == 0) {
                        this->mUnk_28[i] = new(data_027e0ce0[1], 4) MsgProc_Type2();
                        this->mUnk_28[i]->func_0203dc74(0xC0, 0x20);
                        this->mUnk_28[i]->mUnk_2c = &data_02068e8c;
                    } else {
                        this->mUnk_28[i] = NULL;
                    }
                    break;
                default:
                    break;
            }

            if (this->mUnk_28[i] != NULL) {
                this->mUnk_28[i]->vfunc_4C();
            }
        }
    }
}

THUMB void MessageManager::func_0203665c(void) {
    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        if (this->mUnk_28[i] != NULL) {
            delete this->mUnk_28[i];

            this->mUnk_28[i] = NULL;
        }
    }

    for (s32 i = 0; i < ARRAY_LEN(this->mUnk_18); i++) {
        if (this->mUnk_18[i] != NULL) {
            delete this->mUnk_18[i];

            this->mUnk_18[i] = NULL;
        }
    }

    this->pGroups->func_020373b4(2);
}

// non-matching
ARM UnkStruct_020397f8 *MessageManager::func_020366c4(void) {
    if ((data_02056be4[data_027e077c.mUnk_0] & 1) && !(data_02056be4[data_027e077c.mUnk_0] & 2)) {
        return (UnkStruct_020397f8 *) this->mUnk_28[2];
    }

    return (UnkStruct_020397f8 *) this->mUnk_28[0];
}

// non-matching
ARM UnkStruct_020397f8 *MessageManager::func_02036700(void) {
    if ((data_02056be4[data_027e077c.mUnk_0] & 1) && !(data_02056be4[data_027e077c.mUnk_0] & 2)) {
        return (UnkStruct_020397f8 *) this->mUnk_28[0];
    }

    return (UnkStruct_020397f8 *) this->mUnk_28[2];
}

ARM UnkStruct_020386d8 *MessageManager::func_0203673c(void) {
    bool iVar1 = this->func_02036824();
    bool iVar2 = this->func_02036850();

    if (iVar1) {
        return this->mUnk_18[0];
    }

    if (iVar2) {
        return this->mUnk_18[1];
    }

    return NULL;
}

ARM bool MessageManager::func_02036770(u32 param_2) {
    return (this->mUnk_18[param_2]->mUnk_18 & ~0xFFFF) == (0x100 << 0x10);
}

ARM unk32 MessageManager::func_02036798(void) {
    unk32 uVar2 = 1;

    if (this->mUnk_04 == 0) {
        bool bVar1 = false;

        if (this->mUnk_18[1] != NULL && (this->mUnk_18[1]->mUnk_18 & 0xFFFF0000) != (1 << 24)) {
            bVar1 = true;
        }

        if (!bVar1) {
            uVar2 = 0;
        }
    }

    return uVar2;
}

ARM bool MessageManager::func_020367dc(int param_2) {
    return param_2 == 0;
}

ARM bool MessageManager::func_020367ec(void) {
    return ((UnkStruct_020397f8 *) this->mUnk_28[0])->mUnk_15c > 0;
}

ARM bool MessageManager::func_02036808(void) {
    return ((UnkStruct_020397f8 *) this->mUnk_28[2])->mUnk_15c > 0;
}

ARM bool MessageManager::func_02036824(void) {
    switch (data_027e077c.mUnk_0) {
        case 0x01:
        case 0x37:
        case 0x3B:
            return true;
        default:
            break;
    }

    return false;
}

// non-matching
ARM bool MessageManager::func_02036850(void) {
    return !(data_02056be4[data_027e077c.mUnk_0] & 2) && (data_02056be4[data_027e077c.mUnk_0] & 1);
}

ARM void MessageManager::func_02036888(UnkStruct_020386d8 *param_2) {
    if ((param_2->mUnk_18 & ~0xFFFF) != (0x100 << 0x10)) {
        UnkStruct_020397f8 *iVar1 = this->func_020366c4();

        if (iVar1->mUnk_15c <= 0) {
            param_2->vfunc_10();
        } else {
            param_2->vfunc_0c(this->func_020366c4());
        }
    }
}

ARM bool MessageManager::func_020368f4(UnkStruct_02037750 *param_2) {
    if (this->mUnk_20[1] != NULL) {
        return false;
    }

    this->mUnk_20[1] = param_2;
    return true;
}

// non-matching
ARM void MessageManager::func_0203690c(unk32 param_2) {
    UnkStruct_020397f8 *unk_28_0;
    UnkStruct_020397f8 *unk_28_2;
    UnkStruct_02038aa0 *pSVar4;
    Actor *pActor;
    bool iVar1;
    bool iVar2;
    s32 i;

    if (!this->func_020367dc(param_2)) {
        return;
    }

    this->mUnk_40[1] = this->mUnk_40[0];

    unk_28_0 = (UnkStruct_020397f8 *) this->mUnk_28[0];

    if (unk_28_0 != NULL && unk_28_0->mUnk_15c > 0) {
        unk_28_2 = (UnkStruct_020397f8 *) this->mUnk_28[2];

        if (unk_28_2 != NULL && unk_28_2->mUnk_15c > 0) {
            this->mUnk_40[0] = this->func_020366c4();
        } else {
            this->mUnk_40[0] = unk_28_2;
        }
    } else {
        unk_28_2 = (UnkStruct_020397f8 *) this->mUnk_28[2];

        if (unk_28_2 != NULL && unk_28_2->mUnk_15c > 0) {
            this->mUnk_40[0] = unk_28_0;
        } else {
            this->mUnk_40[0] = NULL;
        }
    }

    iVar1 = this->func_02036824();
    iVar2 = this->func_02036850();

    if (this->mUnk_20[1] != NULL && ((this->mUnk_20[1]->mUnk_18 & ~0xFFFF) != (0x100 << 0x10))) {
        this->mUnk_20[1]->vfunc_10();
        this->mUnk_20[1] = NULL;
    }

    if (iVar1) {
        this->func_02036888(this->mUnk_18[0]);
    } else if (iVar2) {
        this->func_02036888(this->mUnk_18[1]);
    }

    for (i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        if (this->mUnk_28[i] != NULL) {
            this->mUnk_28[i]->vfunc_2C();
        }
    }

    this->mUnk_04 = 0;

    if (this->mUnk_20[0] != NULL) {
        if ((this->mUnk_20[0]->mUnk_18 & ~0xFFFF) == (0x100 << 0x10)) {
            this->mUnk_20[0] = NULL;
        } else {
            this->mUnk_04 = 1;
        }
    }

    if ((this->mUnk_18[0] != NULL) && ((this->mUnk_18[0]->mUnk_18 & ~0xFFFF) != (0x100 << 0x10))) {
        this->mUnk_04 = 1;

        //! TODO: fake?
        pSVar4 = this->func_02037178((UnkSubClass1_02256FF8 *) this->mUnk_18[0]);

        if (data_027e0c54.mUnk_0 && pSVar4 != NULL && pSVar4->mUnk_50 != ((data_02056be4[data_027e077c.mUnk_0] & 1) != 0)) {
            this->mUnk_04 = 0;
        }
    }

    if (this->mUnk_08 != NULL && this->mUnk_08->mUnk_15c > 0) {
        this->mUnk_04 = 1;
    } else {
        this->mUnk_08 = NULL;
    }

    this->func_02036bbc();

    if (this->mUnk_10 != 0) {
        ActorRef actorRef = gActorManager->FindActorByType(data_0205691c[this->mUnk_10]);
        pActor            = gActorManager->GetActor(&actorRef);

        if (pActor != NULL) {
            data_027e0ffc.func_ov000_020cec60(data_02056918[this->mUnk_10], &pActor->mPos, pActor, 0);
        }
    }
}

ARM void MessageManager::func_02036bbc(void) {
    UnkStruct_02038aa0 *pSVar3;
    bool bVar2;
    bool bVar4;
    s32 i;

    if (data_027e0d04.mUnk_00 > 0) {
        return;
    }

    bVar2 = this->func_02036824();
    bVar4 = this->func_02036850();

    for (i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        pSVar3 = this->mUnk_28[i];

        if (pSVar3 != NULL && ((bVar2 && pSVar3->mUnk_50 == 0) || (bVar4 && pSVar3->mUnk_50 != 0))) {
            pSVar3->vfunc_44(gTouchControl.mTouchLastX, gTouchControl.mTouchLastY);
        }
    }
}

ARM void MessageManager::func_02036c50(u16 *param_2) {
    s32 i;

    for (i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        if (this->mUnk_28[i] != NULL && this->mUnk_28[i]->func_0203de14(param_2) != 0) {
            this->mUnk_28[i]->vfunc_28();
        }
    }
}

ARM void MessageManager::func_02036ca4(unk32 param_2) {
    s32 i;

    for (i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        UnkStruct_02038aa0 *pSVar1 = this->mUnk_28[i];

        if (pSVar1 != NULL) {
            pSVar1->vfunc_3C(param_2);
        }
    }
}

ARM bool MessageManager::func_02036ce4(UnkStruct_020386d8 *param_2, unk32 param_3) {
    u32 uVar1;

    if (param_3 == 0) {
        return false;
    }

    uVar1 = this->pGroups->func_020373ec(param_3);

    if (uVar1 != -1) {
        param_2->vfunc_08(uVar1);
        return true;
    }

    return false;
}

ARM bool MessageManager::func_02036d30(UnkStruct_02037750 *param_2) {
    if (this->mUnk_20[0] != NULL && this->mUnk_20[0] != param_2) {
        return false;
    }

    this->mUnk_20[0] = param_2;
    return true;
}

ARM bool MessageManager::func_02036d4c(UnkStruct_02037750 *param_2) {
    if (this->mUnk_20[0] == param_2) {
        this->mUnk_20[0] = NULL;
        return true;
    }

    return false;
}

ARM void MessageManager::func_02036d6c(void) {
    s32 i;

    for (i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        if (func_0202ab48() == 0 || i != 5) {
            this->mUnk_28[i]->UnkStruct_02038aa0::vfunc_10();
        }
    }
}

// non-matching
ARM UnkStruct_02038aa0 *MessageManager::func_02036da8(u32 param_2, s16 *param_3) {
    EntryINF1 *pEVar1;
    EntryINF1 *pEVar2;
    UnkStruct_02038aa0 *pSVar4;
    BMGGroups *pBVar5;
    bool bVar6;
    s16 iStack_38;
    int iStack_34;
    int iStack_30;

    pEVar1 = this->pGroups->entries[param_2 >> 0x10].func_02037258(param_2 & 0xFFFF);

    if (pEVar1 == NULL) {
        return NULL;
    }

    if ((data_02056be4[data_027e077c.mUnk_0] & 1) == 0) {
        pSVar4 = this->mUnk_28[4];
        func_02037628((u8 *) &iStack_38);

        // ???
        bVar6 = (data_02056be4[data_027e077c.mUnk_0] & 1) == 0;
        if (bVar6) {
            data_02056be4[0] = 1;
        }
        if (!bVar6) {
            data_02056be4[0] = 0;
        }

        iStack_38 = *param_3;
        // iStack_34 = param_3[1];
        // iStack_30 = param_3[2];
        pBVar5 = this->pGroups;
        // pSVar4->vfunc_50(pEVar1, BMG_GET_MSG_ADDR(pBVar5, param_2), (s16*)&iStack_38, 1);
        BMGFileInfo *entry = &(pBVar5)->entries[(param_2) >> 0x10];
        // pSVar4->vfunc_50(pEVar1,
        // ((u32)entry->pDAT1 + (((entry.func_02037258((((param_2))) & 0xFFFF))->offset) & ~1)),
        // // BMG_GET_MSG_ADDR(pBVar5, param_2),
        // (s16*)&iStack_38, 1);

        data_ov000_020eec9c.func_ov000_020d77e4(0x1C);
        return pSVar4;
    }

    return NULL;
}

// non-matching
ARM void MessageManager::func_02036edc(u32 param_2, u8 param_3) {
    UnkStruct_020397f8 *pSVar1;
    u8 auStack_28[24];
    u8 local_13;

    func_02037628(auStack_28);
    local_13 = 0;

    if ((data_02056be4[data_027e077c.mUnk_0] & 1) != 0 && (data_02056be4[data_027e077c.mUnk_0] & 2) == 0) {
        local_13 = 1;
    }

    auStack_28[21] = local_13;
    auStack_28[20] = param_3;
    pSVar1         = this->func_02036f68(param_2, auStack_28);

    if (pSVar1 != NULL) {
        if (this->mUnk_04 == 0) {
            this->mUnk_08 = pSVar1;
        }
    }
}

// non-matching
ARM UnkStruct_020397f8 *MessageManager::func_02036f68(u32 param_2, u8 *param_3) {
    EntryINF1 *pEVar1;
    UnkStruct_02038aa0 *pSVar2;
    EntryINF1 *pEVar3;
    int iVar4;
    UnkStruct_020397f8 *pSVar5;

    pEVar1 = this->pGroups->entries[param_2 >> 0x10].func_02037258(param_2 & 0xffff);

    if (pEVar1 == NULL) {
        return NULL;
    }

    if (param_3[21] != 0) {
        pSVar5 = (UnkStruct_020397f8 *) this->mUnk_28[2];
        pSVar2 = this->mUnk_28[3];
    } else {
        pSVar5 = (UnkStruct_020397f8 *) this->mUnk_28[0];
        pSVar2 = this->mUnk_28[1];
    }

    //! TODO: fake?
    pSVar5->mUnk_164 = (UnkStruct_020397f8 *) pSVar2;
    pSVar5->mUnk_418 = this->mUnk_28[5];

    pSVar5->vfunc_50(pEVar1, BMG_GET_MSG_ADDR(this->pGroups, param_2), (s32 *) param_3, 0);

    if (data_ov000_020eec9c.func_ov000_020d7f18(0x19) == 0 && data_ov000_020eec9c.func_ov000_020d7f18(0x18) == 0 &&
        data_ov000_020eec9c.func_ov000_020d7f18(0x34) == 0 && data_ov000_020eec9c.func_ov000_020d7f18(0x35) == 0 &&
        data_ov000_020eec9c.func_ov000_020d7f18(0x1A) == 0 && data_ov000_020eec9c.func_ov000_020d7f18(0x1B) == 0 &&
        (param_3[12]) != 7) {
        data_ov000_020eec9c.func_ov000_020d77e4(0x1C);
    }

    return pSVar5;
}

ARM UnkStruct_020386d8 *MessageManager::func_020370d0(unk32 param_2, unk32 param_3) {
    return this->func_020370e8(param_2, -1, -1, param_3);
}

ARM UnkStruct_020386d8 *MessageManager::func_020370e8(unk32 param_2, unk16 param_3, unk16 param_4, unk32 param_5) {
    UnkStruct_020386d8 *puVar2;

    if (this->func_02036824()) {
        puVar2 = this->mUnk_18[0];
    } else {
        if (this->func_02036850()) {
            puVar2 = this->mUnk_18[1];
        } else {
            return NULL;
        }
    }

    puVar2->mUnk_30 = param_5;
    puVar2->mUnk_34 = param_3;
    puVar2->mUnk_36 = param_4;

    if (this->func_02036ce4(puVar2, param_2)) {
        return puVar2;
    }

    return NULL;
}

ARM void MessageManager::func_02037158(UnkSubClass1_02256FF8 *param_2) {
    UnkStruct_02038aa0 *pSVar1;

    pSVar1 = this->func_02037178(param_2);

    if (pSVar1 != NULL) {
        pSVar1->vfunc_58();
    }
}

ARM UnkStruct_02038aa0 *MessageManager::func_02037178(UnkSubClass1_02256FF8 *param_2) {
    s32 i;

    for (i = 0; i < ARRAY_LEN(this->mUnk_28); i++) {
        if (this->mUnk_28[i] != NULL && this->mUnk_28[i]->mUnk_08 == param_2) {
            return this->mUnk_28[i];
        }
    }

    return NULL;
}

ARM MessageManager::~MessageManager() {}
