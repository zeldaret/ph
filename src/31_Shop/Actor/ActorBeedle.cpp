#include "Actor/Character/ActorBeedle.hpp"
#include "Actor/ActorManager.hpp"
#include "Actor/ActorShopItem.hpp"
#include "Actor/ActorType.hpp"
#include "Actor/Character/ActorItemSeller.hpp"
#include "DTCM/UnkStruct_027e0fec.hpp"
#include "DTCM/UnkStruct_027e0ffc.hpp"
#include "Message/BMG.hpp"
#include "Save/AdventureFlags.hpp"
#include "Unknown/UnkStruct_020eed2c.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"
#include "Unknown/UnkStruct_ov000_020e8b08.hpp"

static unk32 func_ov031_02180e44(unk32 param1, unk32 param2);

extern u32 **data_027e0fe0[];
ARM ActorBeedle *ActorBeedle::Create() {
    return new(*data_027e0fe0[0], 4) ActorBeedle();
}

static const char *sShipTypes[8] = {
    [7] = "brg", [6] = "fnl", [5] = "pdl", [4] = "dco", [3] = "can", [2] = "hul", [1] = "bow", [0] = "anc"};

ActorType ActorBeedle::gType(ActorTypeId_Beedle, (ActorCreateFunc) ActorBeedle::Create, NULL);

extern "C" unk32 func_0201e388(unk32, const ActorCharacter_1d8_230 *);
ARM bool ActorBeedle::Init() {
    UnkStruct_027e0fec_22c8_04 *iVar1;
    unk32 iVar1_2;
    UnkStruct_027e0dbc_24 *iVar1_3;
    unk32 uVar2;

    static const unk32 sUnk3[]                  = {0x800, 0x4cd, 0x1400};
    static const unk32 sUnk2[]                  = {0x800, 0x4cd, 0x16b8};
    static const ActorCharacter_1d8_230 sUnk1[] = {
        {"choice", 0},
        {"praise", 0},
        {"praise_a", 0},
        {"mt_terry_met", 0},
    };

    mUnk_1d8.func_ov014_02145a74(0x9f, 0x9f);
    mUnk_1d8.mUnk_230 = sUnk1;
    if (gActorManager->mUnk_29) {
        mUnk_470 = 1;
        this->func_ov014_021451f0(sUnk2);
        iVar1_2 = data_027e0dbc.func_ov003_020f3d9c();
        if (iVar1_2 < 0) {
            data_027e0dbc.func_ov003_020f3db0();
        } else if (iVar1_2 >= 9) {
            data_027e0dbc.func_ov003_020f3da4();
        }
    } else {
        mUnk_470 = 0;
        this->func_ov014_021451f0(sUnk3);

        iVar1 = data_027e0fec->mUnk_22c8.func_ov000_020c4588();
        uVar2 = func_0201e388((unk32) iVar1 + iVar1->mUnk_08 + 4, &sUnk1[3]);
        iVar1->func_02019570(uVar2, 0);
    }
    iVar1_3  = data_027e0dbc.GetUnk_24();
    mUnk_484 = iVar1_3->mUnk_0b;
    mUnk_490 = 0;
    return ActorItemSellerBase::Init();
}

ARM void ActorBeedle::vfunc_c4() {
    ActorItemSellerBase::vfunc_c4();
    if (mUnk_1d8.mUnk_248.mUnk_00[mUnk_1d8.mUnk_248.mUnk_08] != 4) {
        return;
    }
    UnkStruct_0202e1a0 UStack_20 = mUnk_1d8.mUnk_10->mUnk_0c;
    if (!UStack_20.func_0202e310(0x5000) && !UStack_20.func_0202e310(0x12000) && !UStack_20.func_0202e310(0x1f000) &&
        !UStack_20.func_0202e310(0x2c000) && !UStack_20.func_0202e310(0x39000) && !UStack_20.func_0202e310(0x46000) &&
        !UStack_20.func_0202e310(0x53000)) {
        return;
    }
    data_027e0ffc.func_ov000_020ceacc(0x427, &mPos, 0);
}

ARM ShopItem ActorBeedle::GetShopItem(s32 position) {
    switch (position) {
        case 0:
            if (!gActorManager->mUnk_29) {
                return gAdventureFlags->Get(AdventureFlag_Unk_106) ? ShopItem_ShipPart : ShopItem_BombBag;
            } else {
                return gAdventureFlags->Get(AdventureFlag_Unk_104) ? ShopItem_ShipPart : ShopItem_HeartContainer;
            }
        case 1:
            return ShopItem_ShipPart;
        case 2:
            return ShopItem_RedPotion;
        case 3:
            return ShopItem_Treasure;
        case 4:
            if (!gActorManager->mUnk_29) {
                return gAdventureFlags->Get(AdventureFlag_Unk_109) ? ShopItem_PurplePotion : ShopItem_WisdomGem;
            } else {
                return gAdventureFlags->Get(AdventureFlag_Unk_113) ? ShopItem_YellowPotion : ShopItem_CourageGem;
            }
        default:
            return ShopItem_SoldOut;
    }
}

ARM unk32 ActorBeedle::vfunc_d4() {
    if (mUnk_474 == 4 || mUnk_474 == 6) {
        return func_ov031_02180e44(6, 10);
    }
    if (mUnk_470 == 1) {
        return func_ov031_02180e44(6, 0xb);
    }
    mUnk_484 = data_027e0dbc.GetUnk_24()->mUnk_0b;
    return func_ov031_02180e44(6, 6);
}

ARM static unk32 func_ov031_02180e44(unk32 param1, unk32 param2) {
    return param2 | param1 << 16;
}

ARM unk32 ActorBeedle::GetPromptMessage() {
    bool soldOut = UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217ce18();
    if (soldOut) {
        if (mUnk_470 == 1) {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x99);
        } else {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x117);
        }
    } else {
        if (mUnk_470 == 1) {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x8d);
        } else {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0xf7);
        }
    }
}

ARM unk32 ActorBeedle::GetPurchaseMessage() {
    bool soldOut = UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217ce18();
    if (soldOut) {
        if (mUnk_470 == 1) {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x99);
        } else {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x117);
        }
    } else {
        if (mUnk_470 == 1) {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x95);
        } else {
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x113);
        }
    }
}

ARM unk32 ActorBeedle::GetNotEnoughMoneyMessage() {
    if (mUnk_470 == 1) {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x97);
    } else {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x115);
    }
}

ARM unk32 ActorBeedle::GetGoodbyeMessage() {
    if (mUnk_470 == 1) {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x96);
    } else {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x114);
    }
}

ARM unk32 ActorBeedle::GetInventoryFullMessage() {
    if (mUnk_470 == 1) {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x98);
    } else {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x116);
    }
}

extern "C" bool HasFreebieCard();
extern "C" unk32 func_ov031_0217ce90();
ARM unk8 ActorBeedle::vfunc_d8(ActorCharacterBase_vfunc_d8 *param1) {
    int iVar3;
    int iVar4;

    iVar3 = this->func_ov031_021812e4(mUnk_484);
    iVar4 = this->func_ov031_021812e4(data_027e0dbc.GetUnk_24()->mUnk_0b);
    switch (param1->mUnk_02) {
        case 0xf:
        case 0x10: // case 0x10 shouldn't be here but almost matches branch instructions
            return HasFreebieCard();
        case 0x13:
            if (iVar4 >= 4) {
                return 2;
            }
            return !UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217bd88();
        case 0x27:

            switch (iVar4) {
                case 0:
                    return 0;
                case 1:
                    if (iVar3 != iVar4) {
                        return 1;
                    } else {
                        return 2;
                    }
                case 2:
                    if (iVar3 != iVar4) {
                        return 3;
                    } else {
                        return 4;
                    }
                case 3:
                    if (iVar3 != iVar4) {
                        return 5;
                    } else {
                        return 6;
                    }
                    return iVar3;
                case 4:
                    return 7;
            }
            // fallthrough
        case 0x2b:
            switch (data_027e0dbc.func_ov003_020f3d9c()) {
                case 0:
                    return 8;
                case 1:
                    return 0;
                case 2:
                    return 1;
                case 3:
                    return 2;
                case 4:
                    return 3;
                case 5:
                    return 4;
                case 6:
                    return 5;
                case 7:
                    return 6;
                case 8:
                    return 7;
                default:
                    return 0;
            }
        default:
            return 0;
    }
}

ARM unk8 ActorBeedle::vfunc_dc(ActorCharacterBase_vfunc_d8 *param1) {
    switch (param1->mUnk_02) {
        case 0x10:
            return UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217ce18();
    }
    return 0;
}

ARM unk8 ActorBeedle::vfunc_e0(ActorCharacterBase_vfunc_d8 *param1) {
    if (param1->mUnk_02 == 0x11) {
        return mUnk_488 >= 6000;
    }
    return 0;
}

ARM bool ActorBeedle::vfunc_70(unk32 param1) {
    switch (param1) {
        case 0:
            this->vfunc_110();
            break;
        case 1:
            this->vfunc_ec(4);
            mUnk_480 = true;
            break;
        case 2:
            this->vfunc_ec(5);
            break;
        default:
            return false;
    }
    return true;
}

ARM bool ActorBeedle::vfunc_6c(unk32 param1) {
    u32 uVar1;

    if (!param1) {
        if (!mUnk_490) {
            data_ov000_020eed2c.func_ov000_020d8718();
            mUnk_488 = 0;
            mUnk_48c = 0;
            mUnk_490 = true;
            mUnk_480 = true;
        } else {
            if ((mUnk_488 != 0 && mUnk_48c > 30) || mUnk_48c > 300) {
                data_ov000_020eed2c.func_ov000_020d8728();
                mUnk_490 = false;
                return true;
            }
            if (data_ov000_020eed2c.mUnk_02 < 6000) {
                mUnk_48c++;
            } else if (data_ov000_020eed2c.mUnk_02 > mUnk_488) {
                mUnk_488 = data_ov000_020eed2c.mUnk_02;
                mUnk_48c = 0;
            }
        }
    } else {
        return true;
    }
    return false;
}

ARM void ActorBeedle::vfunc_108() {
    this->vfunc_ec(3);
}

ARM void ActorBeedle::vfunc_10c(bool param1) {
    this->vfunc_110();
}

ARM void ActorBeedle::vfunc_110() {
    bool unk;
    if (data_ov000_020e8b08 != NULL) {
        unk = mRef.id == data_ov000_020e8b08->mUnk_20[data_ov000_020e8b08->mUnk_55].id;
    } else {
        unk = true;
    }
    this->vfunc_f0(unk, 0);
}

ARM unk32 ActorBeedle::func_ov031_021812e4(unk32 param1) {
    if (param1 < 0) {
        param1 = ((ActorBeedle *) ActorItemSellerBase::GetCurrentSeller())->mUnk_484;
    }
    if (param1 < 20) {
        return 0;
    } else if (param1 < 50) {
        return 1;
    } else if (param1 < 100) {
        return 2;
    } else if (param1 < 200) {
        return 3;
    } else {
        return 4;
    }
}

ARM void ActorBeedle::func_ov031_0218132c(unk32 param1) {
    u8 bVar1;
    int iVar2;
    unk32 uVar3;
    u32 uVar4;

    bVar1 = data_027e0dbc.GetUnk_24()->mUnk_0b;
    if (!UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217bd88()) {
        iVar2 = param1 / 100;
    } else {
        iVar2 = param1 / 20;
    }
    uVar4 = (u32) bVar1 + iVar2;
    if (uVar4 == data_027e0dbc.GetUnk_24()->mUnk_0b) {
        uVar4 = uVar4 + 1;
    }
    if (200 < (int) uVar4) {
        uVar4 = 200;
    }
    data_027e0dbc.func_ov003_020f3d94(uVar4);
    ActorItemSellerBase::GetCurrentSeller()->mUnk_47c = uVar4;
}

ARM bool ActorBeedle::vfunc_11c() {
    if (ActorItemSellerBase::GetCurrentSeller()->mUnk_470 != 0) {
        return false;
    }
    return mUnk_484 != data_027e0dbc.GetUnk_24()->mUnk_0b;
}

ARM bool ActorBeedle::vfunc_118() {
    mUnk_490 = false;
    return data_027e0e28.func_ov018_02160a54(3);
}
