#include "Actor/ActorShopItem.hpp"
#include "Actor/ActorSpawner.hpp"
#include "Actor/ActorTypeId.hpp"
#include "Actor/Character/ActorItemSeller.hpp"
#include "DTCM/UnkStruct_027e0c54.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Item/Item.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MessageManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/PlayerLinkBase.hpp"
#include "Player/TouchControl.hpp"
#include "Unknown/UnkStruct_02037628.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"
#include "nds/math.h"

static ActorItemSellerBase *sCurrentSeller;

ARM ActorItemSellerBase *ActorItemSellerBase::GetCurrentSeller() {
    return sCurrentSeller;
}

ARM ActorItemSellerBase::ActorItemSellerBase() {
    mUnk_470       = 3;
    sCurrentSeller = this;
}

ARM ActorItemSellerBase::~ActorItemSellerBase() {
    sCurrentSeller = NULL;
}

static const ActorTypeId sShopItemActorTypes[ShopItem_BASE_COUNT] = {
    [ShopItem_Test]           = ActorTypeId_ShopItemDM,
    [ShopItem_SoldOut]        = ActorTypeId_ShopItemSoldOut,
    [ShopItem_Bombs]          = ActorTypeId_ShopItemBombs,
    [ShopItem_Arrows]         = ActorTypeId_ShopItemArrows,
    [ShopItem_Bombchus]       = ActorTypeId_ShopItemBombchus,
    [ShopItem_HeartContainer] = ActorTypeId_ShopItemHeartContainer,
    [ShopItem_BombBag]        = ActorTypeId_ShopItemBombBag,
    [ShopItem_Quiver]         = ActorTypeId_ShopItemQuiver,
    [ShopItem_BombchuBag]     = ActorTypeId_ShopItemBombchuBag,
    [ShopItem_ShipPart]       = ActorTypeId_ShopItemShipPart,
    [ShopItem_Treasure]       = ActorTypeId_ShopItemTreasure,
    [ShopItem_CourageGem]     = ActorTypeId_ShopItemGem,
    [ShopItem_PowerGem]       = ActorTypeId_ShopItemGem,
    [ShopItem_WisdomGem]      = ActorTypeId_ShopItemGem,
    [ShopItem_Shield]         = ActorTypeId_ShopItemShield,
    [ShopItem_RedPotion]      = ActorTypeId_ShopItemPotion,
    [ShopItem_PurplePotion]   = ActorTypeId_ShopItemPotion,
    [ShopItem_YellowPotion]   = ActorTypeId_ShopItemPotion,
};

ARM bool ActorItemSellerBase::Init() {
    UnkStruct_ov031_02183e80 *pUVar2;
    unk32 numShipParts;
    s32 numTreasure;

    ActorCharacter_1d8 *pUnk_1d8 = &mUnk_1d8;
    pUnk_1d8->mUnk_020.mUnk_5c   = 0x3800;
    pUnk_1d8->mUnk_020.mUnk_64   = 0x4000;
    pUnk_1d8->mUnk_020.mUnk_60   = 0x5000;
    pUnk_1d8->mUnk_020.mUnk_66   = 0x5555;
    mUnk_1d8.mUnk_020.mUnk_8d    = 0;
    mUnk_1d8.func_ov014_02145e48(0);
    mUnk_1d8.mUnk_10->mUnk_0c.mUnk_04 = 0x1000;
    this->func_ov031_0217d588();

    ActorSpawnOptions options;
    Vec3p pos = mPos;
    pos.x -= FLOAT_TO_Q20(0.8);
    pos.y += FLOAT_TO_Q20(0.65);
    pos.z += FLOAT_TO_Q20(1.2);
    numShipParts = 0;
    numTreasure  = 0;
    for (s32 i = 0; i < 5; ++i) {
        ShopItem shopItem     = this->vfunc_114(i);
        options.mUnk_24       = 0;
        ActorTypeId actorType = sShopItemActorTypes[shopItem];
        switch (actorType) {
            case ActorTypeId_ShopItemBombBag:
                if (!gItemManager->HasItem(ItemFlag_BombBag)) {
                    actorType = ActorTypeId_ShopItemSoldOut;
                }
                break;
            case ActorTypeId_ShopItemQuiver:
                if (!gItemManager->HasItem(ItemFlag_Bow)) {
                    actorType = ActorTypeId_ShopItemSoldOut;
                }
                break;
            case ActorTypeId_ShopItemBombchuBag:
                if (!gItemManager->HasItem(ItemFlag_BombchuBag)) {
                    actorType = ActorTypeId_ShopItemSoldOut;
                }
                break;
            case ActorTypeId_ShopItemShipPart:
                options.mUnk_24 = numShipParts;
                if (data_027e0dbc.func_ov003_020f3d5c(numShipParts + 8)) {
                    actorType = ActorTypeId_ShopItemSoldOut;
                }
                numShipParts++;
                break;
            case ActorTypeId_ShopItemTreasure: {
                bool unk;
                if (mUnk_470 == 2) {
                    options.mUnk_24 = numTreasure + 2;
                    unk             = data_027e0dbc.func_ov003_020f3d5c(numTreasure + 7);
                } else {
                    options.mUnk_24 = numTreasure;
                    unk             = data_027e0dbc.func_ov003_020f3d5c(numTreasure + 5);
                }
                if (unk) {
                    actorType = ActorTypeId_ShopItemSoldOut;
                }
                numTreasure++;
                break;
            }
            case ActorTypeId_ShopItemGem:
                options.mUnk_24 = shopItem - ShopItem_CourageGem;
                break;
            case ActorTypeId_ShopItemPotion:
                options.mUnk_24 = shopItem - ShopItem_RedPotion;
                break;
        }
        gActorSpawner->Spawn(actorType, &pos, &options, &UnkStruct_ov031_02183e80::GetInstance()->mShopItemRefs[i]);
        pos.x += FLOAT_TO_Q20(0.4);
        if (i % 2 == 0) {
            pos.z += FLOAT_TO_Q20(0.8);
        } else {
            pos.z -= FLOAT_TO_Q20(0.8);
        }
    }
    options.mUnk_24 = 0;
    pos.x           = mPos.x - FLOAT_TO_Q20(1.0);
    pos.y           = mPos.y + FLOAT_TO_Q20(0.5);
    pos.z           = mPos.z + FLOAT_TO_Q20(2.5);
    gActorSpawner->Spawn(ActorTypeId_ShopItemBK, &pos, &options, &UnkStruct_ov031_02183e80::GetInstance()->mShopItemRefBK);
    pos.x = mPos.x + FLOAT_TO_Q20(1.0);
    pos.y = mPos.y + FLOAT_TO_Q20(0.5);
    pos.z = mPos.z + FLOAT_TO_Q20(2.5);
    gActorSpawner->Spawn(ActorTypeId_ShopItemCC, &pos, &options, &UnkStruct_ov031_02183e80::GetInstance()->mShopItemRefCC);
    pos.x = mPos.x + FLOAT_TO_Q20(1.0);
    pos.y = mPos.y + FLOAT_TO_Q20(0.5);
    pos.z = mPos.z + FLOAT_TO_Q20(2.5);
    gActorSpawner->Spawn(ActorTypeId_ShopItemBY, &pos, &options, &UnkStruct_ov031_02183e80::GetInstance()->mShopItemRefBY);
    mUnk_478 = 0;
    mUnk_47c = data_027e0dbc.GetUnk_24()->mUnk_0b;
    mUnk_480 = 0;
    return ActorCharacter::Init();
}

ARM void ActorItemSellerBase::vfunc_20(bool param1) {
    if (!data_027e0c54.func_020361d0()) {
        ActorCharacter::vfunc_20(param1);
    }
}

ARM bool ActorItemSellerBase::vfunc_c0() {
    if (ActorCharacterBase::vfunc_c0()) {
        return true;
    }
    return mUnk_474 != 0;
}

ARM void ActorItemSellerBase::vfunc_c4() {
    Vec3p offsetPos;
    if (mInactive) {
        mAngle                    = mUnk_012;
        mUnk_1d8.mUnk_020.mUnk_8d = 0;
        return;
    }
    mPrevPos.x = mPos.x;
    mPrevPos.y = mPos.y;
    mPrevPos.z = mPos.z;
    mUnk_1d8.mActor->GetOffsetPos(&offsetPos);
    mUnk_1d8.mUnk_020.func_ov014_0214aa0c(&offsetPos, mUnk_1d8.mActor->mAngle);
    switch (mUnk_474) {
        case 0:
            this->func_ov031_0217d5c0();
            break;
        case 1:
            this->func_ov031_0217d5e8();
            break;
        case 2:
            this->func_ov031_0217d638();
            break;
        case 3:
        case 4:
            this->func_ov031_0217d6d0();
            break;
        case 5:
            this->func_ov031_0217d784();
            break;
        case 6:
            this->func_ov031_0217d830();
            break;
        case 7:
            this->func_ov031_0217d890();
            break;
        case 8:
            this->func_ov031_0217d8dc();
            break;
    }
    mUnk_1d8.func_ov014_02145cac();
    this->func_ov014_02145178();
}

ARM void ActorItemSellerBase::func_ov031_0217d588() {
    mUnk_474 = 0;
    mUnk_1d8.func_ov014_02145f0c(0);
    mUnk_1d8.mUnk_10->mUnk_0c.mUnk_04 = 0x1000;
    this->vfunc_b4();
}

ARM void ActorItemSellerBase::func_ov031_0217d5c0() {}

ARM void ActorItemSellerBase::func_ov031_0217d5c4() {
    mUnk_474 = 1;
    this->func_ov014_0214591c();
    mUnk_1d8.mUnk_10->mUnk_0c.mUnk_04 = 0x1000;
}

ARM void ActorItemSellerBase::func_ov031_0217d5e8() {
    if (this->vfunc_bc()) {
        this->func_ov031_0217d588();
    }
}

ARM void ActorItemSellerBase::func_ov031_0217d610() {
    mUnk_474 = 2;
    this->vfunc_118();
}

ARM void ActorItemSellerBase::func_ov031_0217d62c() {
    mUnk_474 = 2;
}

ARM void ActorItemSellerBase::func_ov031_0217d638() {
    if (UnkStruct_ov031_02183e80::GetInstance()->mUnk_000 != 5) {
        return;
    }
    if (UnkStruct_ov031_02183e80::GetInstance()->mUnk_194 != -1) {
        this->func_ov031_0217d858();
        return;
    }
    if (mUnk_470 == 0 && this->vfunc_11c()) {
        this->func_ov031_0217d6ac();
        return;
    }
    this->func_ov031_0217d760();
}

ARM bool ActorItemSellerBase::func_ov031_0217d6ac() {
    mUnk_474 = 3;
    return data_027e0e28.func_ov018_02160a64(-1, 1);
}

ARM void ActorItemSellerBase::func_ov031_0217d6d0() {
    UnkStruct_02037628 auStack_20;

    switch (mUnk_474) {
        case 3:
            auStack_20.func_02037628();
            if (auStack_20.mUnk_15 == 0) {
                mUnk_474 = 4;
                this->vfunc_b4();
                this->SetUnk_11c(1);
            }
            break;
        case 4:
        default:
            if (this->vfunc_bc()) {
                this->func_ov031_0217d588();
            }
    }
}

ARM void ActorItemSellerBase::func_ov031_0217d760() {
    mUnk_474 = 5;
    data_027e0e28.func_ov018_02160a64(-1, 1);
}

ARM void ActorItemSellerBase::func_ov031_0217d784() {
    if (this->vfunc_bc()) {
        this->func_ov031_0217d588();
    }
}

ARM void ActorItemSellerBase::func_ov031_0217d7ac() {
    mUnk_474 = 6;
    data_027e0f64->mUnk_4->func_ov000_0208726c(0);
    data_027e0f64->mUnk_8->func_ov000_0208726c(0);
    this->vfunc_b4();
    this->SetUnk_11c(1);
    for (s32 i = 0; i < 5; ++i) {
        ActorShopItem *shopItem = UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217cdd8(i);
        if (shopItem != NULL) {
            shopItem->func_ov031_0217f0b4();
        }
    }
}

ARM void ActorItemSellerBase::func_ov031_0217d830() {
    if (this->vfunc_bc()) {
        this->func_ov031_0217d588();
    }
}

extern "C" bool HasFreebieCard();
ARM void ActorItemSellerBase::func_ov031_0217d858() {

    mUnk_474  = 7;
    unk32 unk = UnkStruct_ov031_02183e80::GetInstance()->mUnk_194;
    data_027e0e28.func_ov018_02160a64(unk, !HasFreebieCard());
}

ARM void ActorItemSellerBase::func_ov031_0217d890() {
    PlayerLinkBase *pPlayerLink = gPlayerLink;
    if (UnkStruct_ov031_02183e80::GetInstance()->mUnk_198 || pPlayerLink->GetStateId() == 6) {
        this->func_ov031_0217d8d0();
    }
}

ARM void ActorItemSellerBase::func_ov031_0217d8d0() {
    mUnk_474 = 8;
}

ARM void ActorItemSellerBase::func_ov031_0217d8dc() {
    PlayerLinkBase *pPlayerLink = gPlayerLink;
    if (UnkStruct_ov031_02183e80::GetInstance()->mUnk_198 || pPlayerLink->GetStateId() != 6) {
        UnkStruct_ov031_02183e80::GetInstance()->mUnk_198 = false;
        if (HasFreebieCard()) {
            this->func_ov031_0217d7ac();
        } else {
            this->func_ov031_0217d62c();
        }
    }
}

ARM void ActorItemSellerBase::func_ov031_0217d93c() {
    UnkStruct_027e0f64_04 *unk  = data_027e0f64->mUnk_4;
    mUnk_1d8.mUnk_020.mUnk_78.x = unk->mUnk_260.x;
    mUnk_1d8.mUnk_020.mUnk_78.y = unk->mUnk_260.y;
    mUnk_1d8.mUnk_020.mUnk_78.z = unk->mUnk_260.z;
    mUnk_1d8.mUnk_020.mUnk_8c   = true;
    mUnk_1d8.mUnk_020.mUnk_8f   = true;
}

ARM void ActorItemSellerBase::func_ov031_0217d974() {
    mUnk_1d8.mUnk_020.mUnk_8c = false;
    mUnk_1d8.mUnk_020.mUnk_8f = true;
}

ARM unk32 ActorItemSellerBase::vfunc_d4() {
    return ActorCharacterBase::vfunc_d4();
}

ARM bool ActorItemSellerBase::vfunc_8c() {
    switch (mUnk_474) {
        case 1:
            if (UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217ce18()) {
                return true;
            }
            if (mUnk_480) {
                mUnk_480 = false;
                return true;
            }
            this->func_ov031_0217d610();
            return false;
        case 2:
        case 7:
        case 8:
            return false;
    }
    return true;
}

ARM void ActorItemSellerBase::func_ov031_0217da20(unk32 param1) {
    UnkStruct_020397f8 *iVar1;
    UnkStruct_02037628 auStack_28;
    auStack_28.func_020376c0(&mPos);
    auStack_28.mUnk_15 = 0;
    auStack_28.mUnk_16 = 1;
    iVar1              = gMessageManager.func_02036f68(param1, &auStack_28, &mUnk_158);
    iVar1->mUnk_38     = &mUnk_478;
    iVar1->mUnk_3c     = 2;
}

ARM void ActorItemSellerBase::vfunc_68(unk32 param1, UnkStruct_020397f8 *param2) {
    param2->mUnk_38 = &mUnk_478;
    param2->mUnk_3c = 2;
    ActorCharacterBase::vfunc_68(param1, param2);
    if (!mUnk_474) {
        this->func_ov031_0217d5c4();
    }
}

ARM bool ActorItemSellerBase::CollidesWithLink() {
    Vec3p pos       = mPos;
    Vec3p playerPos = gPlayerPos;
    if (playerPos.z < pos.z - FLOAT_TO_Q20(1.0)) {
        return false;
    }
    if (playerPos.z > pos.z + FLOAT_TO_Q20(4.0)) {
        return false;
    }
    if (playerPos.x < pos.x - FLOAT_TO_Q20(3.0)) {
        return false;
    }
    if (playerPos.x > pos.x + FLOAT_TO_Q20(3.0)) {
        return false;
    }
    return true;
}

ARM bool ActorItemSellerBase::vfunc_11c() {
    return false;
}

ARM bool ActorItemSellerBase::IsHitboxTouched(bool param1) {
    if (ActorCharacter::IsHitboxTouched(param1)) {
        return true;
    }
    for (s32 i = 0; i < 5; ++i) {
        ActorShopItem *shopItem = UnkStruct_ov031_02183e80::GetInstance()->func_ov031_0217cdd8(i);
        if (param1) {
            if (TouchControl::func_0202b864(&shopItem->mPos, 0x4cd, 8)) {
                return true;
            }
        } else {
            if (TouchControl::func_0202b894(&shopItem->mPos, 0x4cd, 8)) {
                return true;
            }
        }
    }
    return false;
}
