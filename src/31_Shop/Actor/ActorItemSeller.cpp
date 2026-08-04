#include "Actor/Character/ActorItemSeller.hpp"
#include "Actor/ActorType.hpp"
#include "Actor/ActorTypeId.hpp"
#include "Item/ItemManager.hpp"
#include "Message/BMG.hpp"
#include "Message/MsgProc.hpp"
#include "Save/AdventureFlags.hpp"
#include "Unknown/UnkStruct_ov000_020e8b08.hpp"

extern u32 **data_027e0fe0[];
ARM ActorItemSeller *ActorItemSeller1::Create() {
    return new(*data_027e0fe0[0], 4) ActorItemSeller();
}

ARM ActorItemSeller *ActorItemSeller2::Create() {
    return new(*data_027e0fe0[0], 4) ActorItemSeller();
}

ARM ActorItemSeller *ActorItemSeller3::Create() {
    return new(*data_027e0fe0[0], 4) ActorItemSeller();
}

static const char *sShipTypes[8] = {
    [7] = "brg", [6] = "fnl", [5] = "pdl", [4] = "dco", [3] = "can", [2] = "hul", [1] = "bow", [0] = "anc"};

ActorType ActorItemSeller1::gType = ActorType(ActorTypeId_ItemSeller1, (ActorCreateFunc) ActorItemSeller1::Create, NULL);
ActorType ActorItemSeller2::gType = ActorType(ActorTypeId_ItemSeller2, (ActorCreateFunc) ActorItemSeller2::Create, NULL);
ActorType ActorItemSeller3::gType = ActorType(ActorTypeId_ItemSeller3, (ActorCreateFunc) ActorItemSeller3::Create, NULL);

ARM bool ActorItemSeller::Init() {
    unk32 unk;
    switch (mType) {
        case ActorTypeId_ItemSeller2:
            unk = 0x3d;
            break;
        case ActorTypeId_ItemSeller3:
            unk = 0x3e;
            break;
        case ActorTypeId_ItemSeller1:
        default:
            unk = 0x3c;
            break;
    }
    mUnk_1d8.func_ov014_02145a74(unk, 0x3f);
    static const unk32 sUnk1[]                  = {0x800, 0x4cd, 0x14cd};
    static const ActorCharacter_1d8_230 sUnk2[] = {{"choice", 0}, {"bow", 1}};
    mUnk_1d8.mUnk_230                           = sUnk2;
    this->func_ov014_021451f0(sUnk1);
    mUnk_470 = 2;
    return ActorItemSellerBase::Init();
}

ARM ShopItem ActorItemSeller::GetShopItem(s32 position) {
    u16 uVar1;
    int iVar2;
    unk32 uVar3;

    uVar1 = mUnk_020.mUnk_00[0];
    switch (position) {
        case 0:
            return uVar1 == 2 ? ShopItem_Bombchus : ShopItem_Bombs;
        case 1:
            return uVar1 == 0 ? ShopItem_Treasure : ShopItem_Arrows;
        case 2:
            return uVar1 == 2 ? ShopItem_YellowPotion : ShopItem_RedPotion;
        case 3:
            if (!gAdventureFlags->Get(AdventureFlag_Unk_105)) {
                return ShopItem_PowerGem;
            }
            if (!gAdventureFlags->Get(AdventureFlag_Unk_107)) {
                return ShopItem_Quiver;
            }
            if (!gAdventureFlags->Get(AdventureFlag_Unk_108)) {
                return ShopItem_BombchuBag;
            }
            if (!gAdventureFlags->Get(AdventureFlag_Unk_103)) {
                return ShopItem_HeartContainer;
            }
            return uVar1 == 2 ? ShopItem_Treasure : ShopItem_SoldOut;
        case 4:
            if (gItemManager->HasItem(ItemFlag_WoodenShield)) {
                return ShopItem_PurplePotion;
            }
            return ShopItem_Shield;
        default:
            return ShopItem_SoldOut;
    }
}

ARM unk32 ActorItemSeller::GetPromptMessage() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x41);
}

ARM unk32 ActorItemSeller::GetPurchaseMessage() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x50);
}

ARM unk32 ActorItemSeller::GetNotEnoughMoneyMessage() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x52);
}

ARM unk32 ActorItemSeller::GetGoodbyeMessage() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x51);
}

ARM unk32 ActorItemSeller::GetInventoryFullMessage() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x56);
}

ARM bool ActorItemSeller::vfunc_118() {
    return data_027e0e28.func_ov018_02160a54(2);
}

ARM unk32 ActorItemSeller::vfunc_d4() {
    return ActorItemSellerBase::vfunc_d4();
}

ARM void ActorItemSeller::vfunc_108() {
    this->vfunc_ec(3);
}

ARM void ActorItemSeller::vfunc_10c(bool param1) {
    if (param1) {
        mUnk_1d8.func_ov014_02145f0c(4);
        return;
    }
    this->vfunc_ec(4);
}

ARM void ActorItemSeller::vfunc_110() {
    bool unk;
    if (data_ov000_020e8b08 != NULL) {
        unk = mRef.id == data_ov000_020e8b08->mUnk_20[data_ov000_020e8b08->mUnk_55].id;
    } else {
        unk = true;
    }
    this->vfunc_f0(unk, 0);
}
