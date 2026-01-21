#include "Actor/ActorManager.hpp"
#include "Actor/ActorSpawner.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "Game/Game.hpp"
#include "Item/ItemManager.hpp"
#include "Save/AdventureFlags.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"

extern u32 *data_027e0ce0[];
THUMB void ActorManager::Create() {
    if (!gActorManager) {
        gActorManager = new(data_027e0ce0[1], 4) ActorManager();
    }
}

THUMB void ActorManager::Destroy() {
    if (gActorManager) {
        delete gActorManager;
        gActorManager = NULL;
    }
}

extern "C" void func_ov004_0210682c();
extern "C" void func_ov004_021056c8();
THUMB ActorManager::ActorManager() {
    this->mMaxActors            = 0;
    this->mNumActors            = 0;
    this->mMaxActorIndex        = 0;
    this->mCacheEmptyActorIndex = -1;
    this->mNextActorId          = 0xb;
    this->mActorTable           = NULL;
    this->mUnk_14               = NULL;
    this->mUnk_18               = true;
    ActorSpawner::Create();
    func_ov004_0210682c();
    func_ov004_021056c8();
    this->mUnk_1c = 0;
    this->mUnk_20 = 0;
    this->mUnk_24 = 0;
    this->mUnk_28 = 0xff;
    this->mUnk_29 = false;
    this->mUnk_2c = 0;
    this->mUnk_30 = 0;
    this->mUnk_34 = 0;
    this->mUnk_38 = 0xff;
    this->mUnk_3c = 0x7fffffff;
    this->mUnk_40 = 0;
    this->mUnk_44 = 0;
    this->mUnk_48 = 0x7fffffff;
    this->mUnk_4c = 0;
    this->mUnk_50 = 0;
    this->mUnk_54 = 0xff;
    this->mUnk_56 = 0xff;
    this->mUnk_55 = this->mUnk_56;
    this->mUnk_58 = 0x7fffffff;
    this->mUnk_5c = 0;
    this->mUnk_60 = 0;
    this->mUnk_64 = 0xff;
    this->mUnk_65 = 0;
    for (s32 i = 0; i < 5; ++i) {
        this->mUnk_68[i].unk_0 = 0x7fffffff;
        this->mUnk_68[i].unk_4 = 0;
        this->mUnk_68[i].unk_8 = 0;
    }
    this->mUnk_c3 = 0xff;
    if (gGame.mModeId == 2) {
        if (data_027e0dbc.func_ov003_020f3d5c(4) == 0) {
            gAdventureFlags->Set(0xe8, false);
        }
        gAdventureFlags->Set(0x56, false);
        gAdventureFlags->Set(0x9e, false);
    }
}

extern "C" void func_ov004_021056f0();
extern "C" void func_ov004_02106854();
THUMB ActorManager::~ActorManager() {
    func_ov004_021056f0();
    func_ov004_02106854();
    ActorSpawner::Destroy();
}

extern unk32 *data_027e0ff4;
extern "C" void func_ov017_02168a54();
extern "C" void func_ov025_0216d6a0();
extern unk32 data_ov029_0217a4ac;
extern "C" void func_ov029_0216d6a0(unk32 *);
THUMB void ActorManager::func_ov004_0210532c() {
    bool bVar1;
    int iVar2;

    gActorSpawner->func_ov000_020c4014();
    *data_027e0ff4 = 0;
    if (data_027e0d38->mUnk_14 != 1) {
        iVar2 = data_027e0d38->mUnk_0c.func_ov000_020a5e9c();
        if ((iVar2 == 0x29) || (iVar2 == 0x25)) {
            bVar1 = true;
        } else {
            bVar1 = false;
        }
        if (bVar1) {
            func_ov017_02168a54();
        }
        if (iVar2 == 0x29) {
            func_ov025_0216d6a0();
        }
        if ((iVar2 == 0x31) || (iVar2 == 0x33)) {
            func_ov029_0216d6a0(&data_ov029_0217a4ac);
        }
    }
    if (data_027e0d38->mUnk_0c.func_ov000_020a5e9c() == 0) {
        switch (data_027e0d38->mUnk_28->mUnk_1c.func_ov000_020a5e9c()) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                break;
            default:
                this->mUnk_64 = 0xff;
                this->mUnk_c3 = 0xff;
                break;
        }
    }
    return;
}

extern "C" void func_020174a4(u32 *, void *);
extern "C" void func_ov017_02168a90();
extern "C" void func_ov025_0216d6dc();
extern "C" void func_ov029_0216d6f0(unk32 *);
extern "C" void func_ov000_020c33b0();
extern unk32 data_027e0fec;
extern "C" void func_ov004_02105950(unk32);
THUMB void ActorManager::func_ov004_021053dc() {
    bool bVar1;
    int iVar2;
    Actor **ppAVar3;
    s32 i;

    for (i = 0, ppAVar3 = this->mActorTable; i < this->mMaxActors; ++i, ++ppAVar3) {
        if (*ppAVar3) {
            this->DeleteActor(i, true);
        }
    }
    func_020174a4(data_027e0ce0[1], this->mActorTable);
    this->mActorTable = NULL;
    delete this->mUnk_14;
    this->mUnk_14 = NULL;
    if (data_027e0d38->mUnk_14 != 1) {
        iVar2 = data_027e0d38->mUnk_0c.func_ov000_020a5e9c();
        if ((iVar2 == 0x29) || (iVar2 == 0x25)) {
            bVar1 = true;
        } else {
            bVar1 = false;
        }
        if (bVar1) {
            func_ov017_02168a90();
        }
        if (iVar2 == 0x29) {
            func_ov025_0216d6dc();
        }
        if ((iVar2 == 0x31) || (iVar2 == 0x33)) {
            func_ov029_0216d6f0(&data_ov029_0217a4ac);
        }
    }
    gActorSpawner->func_ov000_020c4018();
    func_ov000_020c33b0();
    func_ov004_02105950(data_027e0fec);
    this->mMaxActors            = 0;
    this->mNumActors            = 0;
    this->mMaxActorIndex        = 0;
    this->mCacheEmptyActorIndex = -1;
    this->mNextActorId          = 0xb;
}

extern "C" void func_ov000_020c3388(unk32);
extern "C" void *NewEXPH(u32 *id, s32 length, s32 param_3);
THUMB void ActorManager::func_ov004_021054a4(FileEntryFlag *param1, s32 param2, unk32 param3) {
    u16 sVar1;
    u16 sVar2;
    unk32 iVar3;
    FileEntry_Unk8 *fileEntry_unk;
    Actor **ppAVar4;
    void *pvVar5;

    fileEntry_unk = param1->vfunc_08(0x10);
    sVar1         = fileEntry_unk->mUnk_08;
    if (*(int *) (param2 + 8) == 1) {
        this->mMaxActors = fileEntry_unk->mUnk_0a + 0x20;
        sVar2            = gAdventureFlags->Get_FlagsUnk_42(*(int *) (param2 + 0xc));
        sVar2            = sVar1 + 0x80 + sVar2;
    } else {
        this->mMaxActors = fileEntry_unk->mUnk_0a + 0x40;
        iVar3            = data_027e0d38->func_ov000_02078b40();
        if (iVar3 == 2) {
            sVar2 = sVar1 + 0x280;
        } else {
            sVar2 = sVar1 + 0xc0;
        }
    }
    param1->vfunc_0c();
    func_ov000_020c3388(sVar2);
    this->mActorTable = (Actor **) NewEXPH(data_027e0ce0[1], this->mMaxActors * 4, 4);
    Fill256(0, this->mActorTable, this->mMaxActors * 4);
    this->mUnk_14 = new(data_027e0ce0[1], 4) ActorManager_Unk14(this->mMaxActors);
}

THUMB void ActorManager::func_ov004_0210554c() {
    s32 i;
    Actor **iter;

    for (i = 0, iter = this->mActorTable; i < this->mMaxActors; ++i, ++iter) {
        Actor *actor = *iter;
        if (actor && actor->mUnk_03c >= 0) {
            actor->vfunc_0c();
        }
    }
}

extern "C" void func_ov004_021058cc(unk32);
extern unk32 data_027e10b4;
extern "C" void func_ov030_02184554(unk32, unk32);
extern "C" void func_ov030_021843c4(unk32, unk32);
extern "C" void func_ov030_02184640(unk32);
extern unk32 data_027e10b8;
extern "C" void func_ov025_0216daa4(unk32, unk32);
extern "C" void func_ov025_0216d804(unk32, unk32);
THUMB bool ActorManager::func_ov004_02105578(unk32 param1) {
    bool bVar1;
    int iVar2;

    this->mUnk_18 = true;
    func_ov004_021058cc(data_027e0fec);
    if (data_027e0d38->mUnk_14 != 1) {
        iVar2 = data_027e0d38->mUnk_0c.func_ov000_020a5e9c();
        if ((iVar2 == 0x29) || (iVar2 == 0x25)) {
            bVar1 = true;
        } else {
            bVar1 = false;
        }
        if ((bVar1) && (OverlayId_30 == gOverlayManager.mLoadedOverlays[7])) {
            func_ov030_02184554(data_027e10b4, param1);
            func_ov030_021843c4(data_027e10b4, param1);
            func_ov030_02184640(data_027e10b4);
        }
        if (iVar2 == 0x29) {
            func_ov025_0216daa4(data_027e10b8, param1);
            func_ov025_0216d804(data_027e10b8, param1);
        }
    }
    return true;
}

extern "C" void func_ov030_021843ec(unk32, unk32);
extern "C" void func_ov017_02168bc0(unk32);
extern "C" void func_ov025_0216d844(unk32, unk32);
THUMB bool ActorManager::func_ov004_02105608(unk32 param1, unk32 param2, unk32 param3) {
    bool bVar1;
    int iVar2;

    if (data_027e0d38->mUnk_14 != 1) {
        iVar2 = data_027e0d38->mUnk_0c.func_ov000_020a5e9c();
        if ((iVar2 == 0x29) || (iVar2 == 0x25)) {
            bVar1 = true;
        } else {
            bVar1 = false;
        }
        if ((bVar1) && (OverlayId_30 == gOverlayManager.mLoadedOverlays[7])) {
            func_ov030_021843ec(data_027e10b4, param3);
            func_ov017_02168bc0(data_027e10b4);
        }
        if (iVar2 == 0x29) {
            func_ov025_0216d844(data_027e10b8, param3);
        }
    }

    s32 i;
    Actor **iter;
    for (i = 0, iter = this->mActorTable; i < this->mMaxActors; ++i, ++iter) {
        if (*iter != NULL && !(*iter)->vfunc_30()) {
            (*iter)->vfunc_24();
            if (!(*iter)->mGrabbed) {
                this->DeleteActor(i, false);
            }
        }
    }
    return true;
}

THUMB void ActorManager::func_ov004_021056b8() {
    gItemManager->SpawnFairies();
}
