#include "Unknown/UnkStruct_02037750.hpp"
#include "Actor/ActorManager.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/Random.hpp"

extern "C" ARM unk32 func_02037628(u8 *);
extern u8 *data_027e0d54;
extern unk32 *data_027e0cb4;

ARM UnkStruct_02037750::UnkStruct_02037750(unk32 param1, unk32 param2) {
    s32 i;

    this->mUnk_14 = param2;
    this->mUnk_18 = param1;
    this->mUnk_1c = 0;
    this->mUnk_1d = 0xFF;
    this->mUnk_1e = 0;

    for (i = 0; i < ARRAY_LEN(this->mUnk_04); i++) {
        this->mUnk_04[i] = 0;
    }
}

ARM UnkStruct_02037750::~UnkStruct_02037750() {
    if (gMessageManager.mUnk_20[0] == this) {
        gMessageManager.func_02036d4c(this);
    }
}

ARM void UnkStruct_02037750::vfunc_08(u32 param1) {
    this->mUnk_18 = param1;
    this->mUnk_1c = 0;
}

ARM void UnkStruct_02037750::vfunc_0c(UnkStruct_020397f8 *param1) {}
ARM void UnkStruct_02037750::vfunc_10() {}

ARM bool UnkStruct_02037750::vfunc_24(unk32 param1) {
    u8 auStack_28[0x18];

    func_02037628(auStack_28);
    return this->func_020385d0(param1, auStack_28) != 0;
}

// non-matching
ARM unk32 UnkStruct_02037750::vfunc_28(s32 param1) {
    u16 uVar1;
    s64 lVar2;
    char cVar4;
    u16 uVar5;
    int iVar6;
    u32 uVar7;
    UnkStruct_02037750_Callback1 pcVar8;
    int iVar9;
    u32 uVar10;
    u32 uVar11;
    bool bVar12;

    uVar7 = (u32) * (u16 *) (param1 + 0x2);

    if (uVar7 >= 0xF && uVar7 <= 0x2E) {
        pcVar8 = this->mUnk_04[((uVar7 - 0xF) << 0x1E) >> 0x1C];
        iVar9  = 0;

        if (pcVar8 != NULL) {
            iVar9 = pcVar8(this->mUnk_14);
        }

        return iVar9;
    }

    if ((s32) uVar7 <= 0) {
        switch (uVar7) {
            case 0x0:
            case 0x2f:
                break;
            case 0x7:
                if (data_027e0d54[0xd] != 0) {
                    return -0x1;
                }

                return (data_027e0d54[0xf] != 0);
            case 0x1:
            case 0x2:
            case 0x3:
                UnkStruct_020397f8 *ret_3 = gMessageManager.func_020366c4();

                if (0x0 < ret_3->mUnk_15c) {
                    return -0x1;
                }

                uVar7 = (param1 + 0x1);

                if (ret_3->mUnk_576 < uVar7) {
                    return ret_3->mUnk_576;
                }

                if (uVar7 == 0x0) {
                    uVar10 = 0x0;
                } else {
                    lVar2  = gRandom.mRandomValue * gRandom.mFactor;
                    uVar10 = gRandom.Next(0, lVar2);
                    // uVar10 = *(int *)((int)&gRandom.mAddend + 0x4) +
                    //         *(int *)((int)&gRandom.mFactor + 0x4) *
                    //         *(uint *)&gRandom.mRandomValue + *(uint *)&gRandom.mFactor *
                    //         *(int *)((int)&gRandom.mRandomValue + 0x4) +
                    //         (lVar2 >> 0x20) + (gRandom.mAddend << uVar11); // CARRY4

                    // part of the inline?
                    // *(uint *)&gRandom.mRandomValue = *(uint *)&gRandom.mAddend + uVar11;
                    // *(uint *)((int)&gRandom.mRandomValue + 0x4) = uVar10;

                    if (uVar7 != 0x0) {
                        uVar10 = (uVar7 * uVar10 >> 0x20);
                    }
                }

                return uVar10;
            case 0x4:
                return gAdventureFlags->Get(param1 + 0x4) != false;
            case 0x5:
                return gActorManager->func_ov00_020c3b2c(NULL) != 0;
            case 0x6:
                break;
            case 0x8:
                return (((data_027e0cb4[(param1 + 0x4) >> 5]) & 1) << ((param1 + 0x4) & 0x1f)) == 0x0;
            case 0x9:
                break;
            case 0xa:
                break;
            case 0xb:
                lVar2  = gRandom.mRandomValue * gRandom.mFactor;
                uVar7  = lVar2;
                uVar10 = gRandom.Next(0, uVar7);

                return (int) (uVar10 * 0x64 >> 0x20) < (param1 + 0x4);
            case 0xc:
                uVar7 = (param1 + 0x1);
                if (uVar7 == 0x0) {
                    uVar10 = 0x0;
                } else {
                    lVar2  = gRandom.mRandomValue * gRandom.mFactor;
                    uVar11 = lVar2;
                    uVar10 = gRandom.Next(0, uVar11);

                    if (uVar7 != 0x0) {
                        uVar10 = (uVar7 * uVar10 >> 0x20);
                    }
                }
                return (int) (char) uVar10;
            case 0xd:
                return gItemManager->GetNumRupees() != 0;
            case 0xe:
                return gItemManager->HasItem(param1 + 0x4) != 0;
            default:
                if (uVar7 == 0x2f) {
                    return gItemManager->HasItem((param1 + 0x4) + 0x60) != 0;
                }
                break;
        }
    }

    uVar7 = (param1 + 0x1);
    if (uVar7 == 0x0) {
        uVar10 = 0x0;
    } else {
        lVar2  = gRandom.mRandomValue * gRandom.mFactor;
        uVar11 = lVar2;
        uVar10 = gRandom.Next(0, uVar11);

        if (uVar7 != 0x0) {
            uVar10 = (uVar7 * uVar10 >> 0x20);
        }
    }

    return (int) (char) uVar10;
}

ARM unk32 UnkStruct_02037750::vfunc_2c(s32 param1) {}

ARM LinkStateInteract *UnkStruct_02037750::GetLinkStateInteract() {
    return (LinkStateInteract *) GetLinkState(2);
}

ARM bool UnkStruct_02037750::vfunc_30() {
    return true;
}

ARM unk32 UnkStruct_02037750::func_020385d0(s32 param1, u8 *param2) {}

ARM void UnkStruct_02037750::vfunc_14() {}

// non-matching
ARM void UnkStruct_02037750::vfunc_18(unk32 *param1) {
    param1[0] = 0;
}

ARM bool UnkStruct_02037750::vfunc_1c() {
    return false;
}

ARM void UnkStruct_02037750::vfunc_20() {
    this->mUnk_18 = 1 << 24;
}

// non-matching
ARM UnkStruct_020386d8::UnkStruct_020386d8() :
    UnkStruct_02037750(1 << 24, 0) {
    this->mUnk_20 = -1;
    this->mUnk_24.func_020376c0(&gVec3p_ZERO);
}

ARM void UnkStruct_020386d8::vfunc_08(u32 param1) {
    this->UnkStruct_02037750::vfunc_08(param1);
    this->mUnk_20 = 0xff;
}

ARM bool UnkStruct_020386d8::vfunc_24(unk32 param1) {
    return this->func_020385d0(param1, &this->mUnk_24.mUnk_00) != 0;
}

ARM unk32 UnkStruct_020386d8::vfunc_28(s32 param1) {
    this->mUnk_20 = this->UnkStruct_02037750::vfunc_28(param1);
    return this->mUnk_20;
}

ARM bool UnkStruct_020386d8::vfunc_30() {
    return gMessageManager.func_020366c4()->mUnk_15c <= 0;
}

ARM UnkStruct_020386d8::~UnkStruct_020386d8() {}
