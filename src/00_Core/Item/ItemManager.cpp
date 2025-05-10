#include "Item/ItemManager.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e0f78.hpp"
#include "Map/MapManager.hpp"
#include "Player/PlayerLinkBase.hpp"
#include "Player/PlayerManager.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/OverlayManager.hpp"

static const char *sShipPartTypes[] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

extern u32 *data_027e0ce0[];
THUMB ItemManager *ItemManager::Create() {
    gItemManager = new(data_027e0ce0[1], 4) ItemManager();
    return gItemManager;
}

THUMB void ItemManager::Destroy() {
    delete gItemManager;
    gItemManager = 0;
}

THUMB void ItemManager::ClearPrevEquippedItem() {
    mPrevEquippedItem = ItemFlag_None;
}

THUMB void ItemManager::Save(SaveItemManager *save) {
    save->itemFlags = mItemFlags;
    save->numRupees = mNumRupees;
    for (s32 i = 0; i < MAX_POTIONS; ++i) {
        save->potions[i] = mPotions[i];
    }
    save->numBombs              = (u8) (*mAmmo)[ItemFlag_BombBag];
    save->numBombchus           = (u8) (*mAmmo)[ItemFlag_BombchuBag];
    save->numArrows             = (u8) (*mAmmo)[ItemFlag_Bow];
    save->equippedItem          = (u8) mEquippedItem;
    save->salvagedTreasureFlags = mSalvagedTreasureFlags;
    save->hourglassSeconds      = SoftDivide(mHourglassSandFrames, 60);
    for (s32 i = 0; i < Gem_COUNT; ++i) {
        save->numGems[i] = mNumGems[i];
    }
    for (s32 i = 0; i < ShipPart_COUNT; ++i) {
        save->equippedShipParts[i] = mEquippedShipParts[i];
        for (s32 j = 0; j < ShipType_COUNT; ++j) {
            save->shipParts[i][j] = mShipParts[i][j];
        }
    }
    save->shipPartPricesShown = mShipPartPricesShown;
    for (s32 i = 0; i < Treasure_COUNT; ++i) {
        save->treasure[i] = mTreasure[i];
    }
    save->treasurePriceShownFlags[0] = mTreasurePriceShownFlags[0];
    for (s32 i = 0; i < 6; ++i) {
        save->unk_9f[i] = mUnk_098[i];
        save->unk_82[i] = mUnk_09e[i];
    }
    save->quiverSize     = mQuiverSize;
    save->bombBagSize    = mBombBagSize;
    save->bombchuBagSize = mBombchuBagSize;
    if (mEquippedFairy == FairyId_None) {
        save->equippedFairy = 3;
        return;
    }
    save->equippedFairy = (u8) mEquippedFairy;
}

THUMB void ItemManager::Load(const SaveItemManager *save) {
    mItemFlags = save->itemFlags;
    mNumRupees = save->numRupees;
    mHourglassSandFrames =
        save->hourglassSeconds <= MAX_HOURGLASS_SECONDS ? save->hourglassSeconds * 60 : MAX_HOURGLASS_SECONDS * 60;
    for (s32 i = ItemFlag_EQUIP_START; i < ItemFlag_EQUIP_END; ++i) {
        if (GET_FLAG(mItemFlags.flags, (u32) i)) {
            (*mAmmo)[i] = 1;
        }
    }
    (*mAmmo)[ItemFlag_BombBag]    = save->numBombs;
    (*mAmmo)[ItemFlag_BombchuBag] = save->numBombchus;
    (*mAmmo)[ItemFlag_Bow]        = save->numArrows;
    for (s32 i = 0; i < MAX_POTIONS; ++i) {
        mPotions[i] = save->potions[i];
    }
    mEquippedItem          = save->equippedItem;
    mSalvagedTreasureFlags = save->salvagedTreasureFlags;
    for (s32 i = 0; i < Gem_COUNT; ++i) {
        mNumGems[i] = save->numGems[i];
    }
    for (s32 i = 0; i < ShipPart_COUNT; ++i) {
        mEquippedShipParts[i] = save->equippedShipParts[i];
        for (s32 j = 0; j < ShipType_COUNT; ++j) {
            mShipParts[i][j] = save->shipParts[i][j];
        }
    }
    mShipPartPricesShown = save->shipPartPricesShown;
    for (s32 i = 0; i < Treasure_COUNT; ++i) {
        mTreasure[i] = save->treasure[i];
    }
    mTreasurePriceShownFlags[0] = save->treasurePriceShownFlags[0];
    for (s32 i = 0; i < 6; ++i) {
        mUnk_098[i] = save->unk_9f[i];
        mUnk_09e[i] = save->unk_82[i];
    }
    mQuiverSize     = save->quiverSize;
    mBombBagSize    = save->bombBagSize;
    mBombchuBagSize = save->bombchuBagSize;
    mEquippedFairy  = save->equippedFairy;
    if (mEquippedFairy >= FairyId_COUNT) {
        mEquippedFairy = FairyId_None;
    }
    if ((u32) mEquippedItem - 9 <= 1) {
        if (this->HasItem(ItemFlag_Boomerang)) {
            mEquippedItem = ItemFlag_Boomerang;
        } else {
            mEquippedItem = ItemFlag_None;
        }
    } else if (mEquippedItem == ItemFlag_None) {
        if (this->HasItem(ItemFlag_Boomerang)) {
            mEquippedItem = ItemFlag_Boomerang;
        }
    }
}

ARM FairyId ItemManager::GetEquippedFairy() const {
    FairyId fairy = mEquippedFairy;
    if (fairy == FairyId_None) return FairyId_Courage;
    return fairy;
}

ARM ActorNaviBase *ItemManager::GetFairy(FairyId id) const {
    return mFairies[id];
}

extern unk32 gPlayerAnimHandler;
extern "C" void LoadEquipItemModel(unk32 param1, ItemFlag param2);
extern "C" void _ZNK11ItemManager15GetEquippedItemEv();
extern "C" void _ZN14OverlayManager13LoadEquipItemEi();
ARM void ItemManager::TickEquipItem(void) {
    ItemFlag equip = this->GetEquippedItem();
    if (mEquipLoadTimer != 0) {
        mEquipLoadTimer -= 1;
        if (mEquipLoadTimer == 0 && equip != ItemFlag_None && data_027e0d38->mUnk_14 != 1) {
            gOverlayManager.LoadEquipItem(equip);
            LoadEquipItemModel(gPlayerAnimHandler, equip);
            (*mEquipItems)[equip]->vfunc_00();
        }
    }
    (*mEquipItems)[ItemFlag_OshusSword]->vfunc_30();
    (*mEquipItems)[ItemFlag_WoodenShield]->vfunc_30();
    if (data_027e0d38->mUnk_14 == 1) return;
    if (equip != ItemFlag_None && mEquipLoadTimer == 0) {
        (*mEquipItems)[equip]->vfunc_30();
    }
}

ARM void ItemManager::func_ov00_020ad528() {}

ARM ItemModel *ItemManager::GetItemModel(ItemModelId id) {
    return mItemModels[id];
}

extern unk32 gItemModelLoader;
extern "C" void *func_ov00_020bb3a8(unk32 param1, u32 index);
extern "C" void func_ov00_020c0bdc(void *param1, unk32 param2);
ARM void ItemManager::func_ov00_020ad538(unk32 param1) const {
    void *unk1 = func_ov00_020bb3a8(gItemModelLoader, 6);
    func_ov00_020c0bdc(unk1, param1);
}

ARM void ItemManager::func_ov00_020ad560(unk32 param1) const {
    void *unk1 = func_ov00_020bb3a8(gItemModelLoader, 7);
    func_ov00_020c0bdc(unk1, param1);
}

ARM ItemModel *ItemManager::GetDungeonItemModel(u32 index) {
    return mDungeonItemModels[index];
}

ARM void ItemManager::func_ov00_020ad594(unk32 param1) const {
    void *unk1 = func_ov00_020bb3a8(gItemModelLoader, 11);
    func_ov00_020c0bdc(unk1, param1);
}

ARM void ItemManager::Sword_vfunc_38(unk32 param1) {
    (*mEquipItems)[ItemFlag_OshusSword]->vfunc_38(param1);
}

ARM void ItemManager::Shield_vfunc_38(unk32 param1) {
    (*mEquipItems)[ItemFlag_WoodenShield]->vfunc_38(param1);
}

extern unk32 data_027e0618;
ARM void ItemManager::EquipItem_vfunc_38(unk32 param1) {
    if (data_027e0618 != 6) {
        this->Sword_vfunc_38(param1);
        this->Shield_vfunc_38(param1);
    }
    if (data_027e0d38->mUnk_14 == 1) return;

    ItemFlag equip = this->GetEquippedItem();
    if (equip == ItemFlag_None) return;
    if (mEquipLoadTimer > 0) return;

    (*mEquipItems)[equip]->vfunc_38(param1);
}

ARM bool ItemManager::EquipCollidesWith(Cylinder *hitbox, ItemFlag equipId) {
    Cylinder equipHitbox;
    if ((*mEquipItems)[equipId]->GetHitbox(&equipHitbox)) {
        s32 step = (*mEquipItems)[equipId]->vfunc_4c();
        if (step > 0) {
            Approach_thunk(&equipHitbox.pos.y, hitbox->pos.y, step);
        }
        return hitbox->Overlaps(&equipHitbox);
    }
    return false;
}

ARM s32 ItemManager::EquipItem_vfunc_2c(ItemFlag equipId) {
    return (*mEquipItems)[equipId]->vfunc_2c();
}

ARM EquipItem *ItemManager::GetEquipItem(ItemFlag equipId) {
    if (equipId == ItemFlag_None) {
        return NULL;
    } else {
        return (*mEquipItems)[equipId];
    }
}

ARM u16 ItemManager::GetAmmo(ItemFlag equipId) const {
    return (*mAmmo)[equipId];
}

ARM void ItemManager::GiveAmmo(ItemFlag equipId, u16 amount) {
    (*mAmmo)[equipId] += amount;
    if ((*mAmmo)[equipId] <= this->GetMaxAmmo(equipId)) return;
    (*mAmmo)[equipId] = this->GetMaxAmmo(equipId);
}

extern "C" unk32 func_ov00_02078b40(UnkStruct_027e0d38 *param1);
extern void *data_027e10a4;
extern "C" bool func_ov15_02136670(void *param1);
extern unk8 data_ov29_0217a4ac[];
extern "C" bool _ZN14PlayerLinkBase18func_ov00_020bbd80Ei(unk32 param1, unk32 param2);
extern "C" bool _ZNK11ItemManager7HasItemEi();
extern "C" void _ZN11ItemManager12GetEquipItemEi();
ARM bool ItemManager::func_ov00_020ad790(unk32 param1) {
    unk32 unk1 = func_ov00_02078b40(data_027e0d38);
    if (unk1 == 2) return func_ov15_02136670(data_027e10a4);
    if (data_027e0d38->mUnk_14 == 1) return false;
    // NONMATCH: OverlayId_29 should be in constant pool
    if (gOverlayManager.mLoadedOverlays[OverlayIndex_6] == OverlayId_29 && data_ov29_0217a4ac[0x54] != 0) {
        return false;
    }

    ItemFlag equipId = mForcedItem;
    bool unk2        = !gMapManager->func_ov00_020849f8();
    if (mEquippedItem != ItemFlag_None && (unk2 || (u32) mEquippedItem - 9 <= 1) &&
        (gPlayerLink == 0 || gPlayerLink->func_ov000_020bbd80(param1)) && this->HasItem(mEquippedItem))
    {
        equipId = mEquippedItem;
    }

    if (equipId != ItemFlag_None) {
        if (mEquipLoadTimer != 0) return param1 == 0;
        return this->GetEquipItem(equipId)->IsUsable(param1);
    }
    return false;
}

THUMB ShipType ItemManager::GetEquippedShipPart(ShipPart part) const {
    return mEquippedShipParts[part];
}

THUMB void ItemManager::EquipShipPart(ShipPart part, ShipType type) {
    mEquippedShipParts[part] = type;
}

THUMB s8 ItemManager::GetShipPartCount(ShipPart part, ShipType type) const {
    return mShipParts[part][type];
}

THUMB void ItemManager::SetShipPartCount(ShipPart part, ShipType type, s8 count) {
    if (count > 99) count = 99;
    mShipParts[part][type] = count;
}

THUMB s8 ItemManager::GetTreasureCount(Treasure treasure) const {
    return mTreasure[treasure];
}

THUMB void ItemManager::SetTreasureCount(Treasure treasure, s8 count) {
    if (count > 99) count = 99;
    mTreasure[treasure] = count;
}

THUMB u8 ItemManager::GetUnk_098(u32 index) const {
    return mUnk_098[index];
}

THUMB u16 ItemManager::GetUnk_09e(u32 index) const {
    return mUnk_09e[index];
}

THUMB s32 ItemManager::GetUnk_09e_Divided(u32 index) const {
    q20 quotient = CoDivide64By32(INT_TO_Q20(mUnk_09e[index]), FLOAT_TO_Q20(2.54));
    s32 result   = ROUND_Q20(quotient);
    if (result < 1) result = 1;
    return result;
}

THUMB void ItemManager::SetUnk_09e(u32 index, u16 value) {
    u8 count = mUnk_098[index] + 1;
    if (count > 99) count = 99;
    mUnk_098[index] = count;
    if (value > mUnk_09e[index]) {
        if (value > 9999) value = 9999;
        mUnk_09e[index] = value;
    }
}

const u16 sQuiverSizes[]  = {20, 20, 30, 50};
const u16 sBombBagSizes[] = {10, 20, 30};

THUMB u16 ItemManager::GetMaxAmmo(ItemFlag equipId) const {
    switch (equipId) {
        case ItemFlag_Bow: return (sQuiverSizes + 1)[mQuiverSize];
        case ItemFlag_BombBag: return sBombBagSizes[mBombBagSize];
        case ItemFlag_BombchuBag: return sBombBagSizes[mBombchuBagSize];
        default: return 1;
    }
}

THUMB u8 ItemManager::GetMaxShipPartCount() const {
    return 99;
}

THUMB u8 ItemManager::GetMaxTreasureCount() const {
    return 99;
}

ARM u32 ItemManager::GetActiveFairyLevel(FairyId id) const {
    if (mEquippedFairy == FairyId_None) return 0;
    FairyId fairy = this->GetEquippedFairy();
    if (fairy == FairyId_Courage && mUnk_14d != 0) return 0;
    fairy = this->GetEquippedFairy();
    if (id == fairy) return this->GetFairyLevel(id);
    return 0;
}

ARM u32 ItemManager::GetFairyLevel(FairyId id) const {
    if (this->HasItem(ItemFlag_FAIRY_LV2 + id)) return 2;
    if (this->HasItem(ItemFlag_FAIRY_LV1 + id)) return 1;
    return 0;
}

ARM bool ItemManager::HasItem(ItemFlag item) const {
    return GET_FLAG(mItemFlags.flags, item);
}

THUMB void ItemManager::AddItem(ItemFlag item) {
    SET_FLAG(mItemFlags.flags, item);
}

ARM bool ItemManager::IsTreasureSalvaged(u32 index) const {
    return GET_FLAG(&mSalvagedTreasureFlags, index);
}

THUMB void ItemManager::SetTreasureSalvaged(u32 index) {
    SET_FLAG(&mSalvagedTreasureFlags, index);
}

THUMB void ItemManager::RemoveItem(ItemFlag item) {
    RESET_FLAG(mItemFlags.flags, item);
    if (item >= ItemFlag_EQUIP_START && item <= ItemFlag_EQUIP_END) {
        (*mAmmo)[item] = 0;
    }
}

extern ItemModel **data_027e1058;
extern ItemModel **data_027e105c;
extern "C" ItemModel *func_ov00_02079ffc(void *, const char *modelName, const char *textureName, unk32 param4, unk8 param5,
                                         unk8 param6, bool param7);
extern "C" ItemModel *LoadTreasureItemFanfare(ItemModel **, s32 treasureType, bool, bool);
static char *sDefaultItemModel   = "key";
static char *sItemModelNames[70] = {
    [ItemId_Nothing]           = "key",
    [ItemId_SmallKey]          = "key",
    [ItemId_GreenRupee]        = "rupee_g",
    [ItemId_OshusSword]        = "swA",
    [ItemId_WoodenShield]      = "shA",
    [ItemId_Unk_5]             = NULL,
    [ItemId_Unk_6]             = "force_y",
    [ItemId_BombBag]           = "bomb\0\0\0",
    [ItemId_Bow]               = "bow",
    [ItemId_BigGreenRupee]     = "rupee_g",
    [ItemId_HeartContainer]    = "heart_utu\0\0",
    [ItemId_Unk_11]            = NULL,
    [ItemId_Boomerang]         = "boomerang\0\0",
    [ItemId_Scoop]             = "scp",
    [ItemId_BombchuBag]        = "bomchu\0",
    [ItemId_BossKey]           = "bosskey",
    [ItemId_Unk_16]            = "rev_bin",
    [ItemId_Unk_17]            = NULL,
    [ItemId_PhantomHourglass]  = NULL,
    [ItemId_SWSeaChart]        = "mapSea\0",
    [ItemId_NWSeaChart]        = "mapSea\0",
    [ItemId_SESeaChart]        = "mapSea\0",
    [ItemId_NESeaChart]        = "mapSea\0",
    [ItemId_Unk_23]            = NULL,
    [ItemId_BlueRupee]         = "rupee_b",
    [ItemId_RedRupee]          = "rupee_r",
    [ItemId_BigRedRupee]       = "rupee_r",
    [ItemId_GoldRupee]         = "rupee_go\0\0\0",
    [ItemId_Unk_28]            = "force_y",
    [ItemId_Unk_29]            = "force_r",
    [ItemId_Unk_30]            = "force_b",
    [ItemId_Hammer]            = "ham",
    [ItemId_Rope]              = "rope\0\0\0",
    [ItemId_SquareCrystal]     = "cstl_c\0",
    [ItemId_RoundCrystal]      = "cstl_s\0",
    [ItemId_TriangleCrystal]   = "cstl_t\0",
    [ItemId_FishingRod]        = "fp\0",
    [ItemId_Cannon]            = NULL,
    [ItemId_SunKey]            = "key_su\0",
    [ItemId_Unk_39]            = NULL,
    [ItemId_Quiver]            = "arrowpod\0\0\0",
    [ItemId_BigBombBag]        = "bmbagM\0",
    [ItemId_BigBombchuBag]     = "bcbagM\0",
    [ItemId_Unk_43]            = NULL,
    [ItemId_KingsKey]          = "key_ki\0",
    [ItemId_PowerGem]          = "minaP\0\0",
    [ItemId_WisdomGem]         = "minaC\0\0",
    [ItemId_CourageGem]        = "minaY\0\0",
    [ItemId_PinkCoral]         = NULL,
    [ItemId_WhitePearlLoop]    = NULL,
    [ItemId_DarkPearlLoop]     = NULL,
    [ItemId_ZoraScale]         = NULL,
    [ItemId_GoronAmber]        = NULL,
    [ItemId_RutoCrown]         = NULL,
    [ItemId_HelmarocPlume]     = NULL,
    [ItemId_RegalRing]         = NULL,
    [ItemId_GhostKey]          = "key_gh\0",
    [ItemId_FreebieCard]       = "tic_tada\0\0\0",
    [ItemId_ComplimentCard]    = "tic_ohome\0\0",
    [ItemId_ComplimentaryCard] = "tic_rare\0\0\0",
    [ItemId_RegalNecklace]     = "neckl\0\0",
    [ItemId_SalvageArm]        = "slvarm\0",
    [ItemId_HerosNewClothes]   = NULL,
    [ItemId_Kaleidoscope]      = "telescope\0\0",
    [ItemId_GuardNotebook]     = "notebook\0\0\0",
    [ItemId_JolenesLetter]     = "letter\0",
    [ItemId_PrizePostcard]     = "card\0\0\0",
    [ItemId_WoodHeart]         = "marron\0",
    [ItemId_PhantomSwordBlade] = "swBedge",
    [ItemId_PhantomSword]      = NULL,
};
static char *sItemModelNames2[8] = {
    [ItemId_SwordsmanScroll - ItemId_SwordsmanScroll] = "makimono\0\0\0",
    [ItemId_Crimsonine - ItemId_SwordsmanScroll]      = "hagaH\0\0",
    [ItemId_Azurine - ItemId_SwordsmanScroll]         = "hagaK\0\0",
    [ItemId_Aquanine - ItemId_SwordsmanScroll]        = "hagaS\0\0",
    [ItemId_RedPotion - ItemId_SwordsmanScroll]       = "rev_bin",
    [ItemId_PurplePotion - ItemId_SwordsmanScroll]    = "rev_binP\0\0\0",
    [ItemId_YellowPotion - ItemId_SwordsmanScroll]    = "rev_binY\0\0\0",
    [ItemId_SandOfHours - ItemId_SwordsmanScroll]     = "sand_m\0",
};
static char *sItemModelNames3[9] = {
    [ItemId_CycloneSlate - ItemId_CycloneSlate] = "compass",
    [ItemId_Unk_128 - ItemId_CycloneSlate]      = "lure\0\0\0",
    [ItemId_Rupoor10 - ItemId_CycloneSlate]     = "rupee_bb\0\0\0",
    [ItemId_Rupoor50 - ItemId_CycloneSlate]     = "rupee_bb\0\0\0",
    [ItemId_Unk_131 - ItemId_CycloneSlate]      = NULL,
    [ItemId_Unk_132 - ItemId_CycloneSlate]      = NULL,
    [ItemId_Unk_133 - ItemId_CycloneSlate]      = NULL,
    [ItemId_Unk_134 - ItemId_CycloneSlate]      = NULL,
    [ItemId_Unk_135 - ItemId_CycloneSlate]      = NULL,
};
char *sSpecialItemModelNames[7] = {
    "mapTakara\0\0", "arrowpodL\0\0", "bmbagL\0", "bcbagL\0", "Player/get/gd_\0", ".nsbmd\0", ".nsbtx\0",
};
THUMB void ItemManager::LoadFanfareItem(ItemId id) {
    mFanfareItem = id;

    ItemModel *model;
    if (id == ItemId_Unk_43 || id == ItemId_Cannon || (id >= ItemId_GOLDEN_SHIP_START && id <= ItemId_GOLDEN_SHIP_END) ||
        id == ItemId_Unk_126 || id == ItemId_Unk_133)
    {
        model = *data_027e1058;
    } else if (id >= ItemId_TREASURE_START && id <= ItemId_TREASURE_END) {
        model = LoadTreasureItemFanfare(data_027e105c, id - ItemId_TREASURE_START, true, false);
    } else if (id == ItemId_Unk_125) {
        model = *data_027e105c;
    } else {
        char modelName[0x80]   = {};
        char textureName[0x80] = {};
        const char *itemName   = NULL;
        if (id == ItemId_Quiver && (s32) mQuiverSize >= 1) {
            itemName = sSpecialItemModelNames[1];
        } else if (id == ItemId_BigBombBag && (s32) mBombBagSize >= 1) {
            itemName = sSpecialItemModelNames[2];
        } else if (id == ItemId_BigBombchuBag && (s32) mBombchuBagSize >= 1) {
            itemName = sSpecialItemModelNames[3];
        } else if (id == ItemId_HerosNewClothes) {
            itemName = sShipPartTypes[11];
        } else if (id < ItemId_Unk_70) {
            itemName = sItemModelNames[id];
        } else if (id >= ItemId_SwordsmanScroll && id < ItemId_GoldenChimney) {
            itemName = sItemModelNames2[id - ItemId_SwordsmanScroll];
        } else if (id >= ItemId_CycloneSlate && id < ItemId_Unk_136) {
            itemName = sItemModelNames3[id - ItemId_CycloneSlate];
        } else if (id >= ItemId_TREASURE_CHART_START && id <= ItemId_TREASURE_CHART_END) {
            itemName = sSpecialItemModelNames[0];
        }
        if (!itemName) {
            itemName = sDefaultItemModel;
        }
        strcat(modelName, sSpecialItemModelNames[4]);
        strcat(modelName, itemName);
        strcat(modelName, sSpecialItemModelNames[5]);
        strcat(textureName, sSpecialItemModelNames[4]);
        strcat(textureName, itemName);
        strcat(textureName, sSpecialItemModelNames[6]);
        model = func_ov00_02079ffc(mFanfareItemModel, modelName, textureName, 0, 0, 0, true);
    }
    mUnk_114->vfunc_0c(model);
}

THUMB bool ItemManager::GetFanfareItemScale(Vec3p *scale) const {
    switch (mFanfareItem) {
        case ItemId_BigGreenRupee:
        case ItemId_BigRedRupee:
        case ItemId_GoldRupee:
        case ItemId_Rupoor50:
            scale->x = FLOAT_TO_Q20(1.4);
            scale->y = FLOAT_TO_Q20(1.4);
            scale->z = FLOAT_TO_Q20(1.4);
            return true;
    }
    return false;
}

extern "C" void GiveShipPart(ShipPart part, ShipType type);
extern "C" void EquipLinebeckCannon();
THUMB void ItemManager::GiveItem(ItemId id) {
    switch (id) {
        case ItemId_SmallKey: {
            this->GiveKeys(1);
        } break;

        case ItemId_GreenRupee: {
            this->GiveRupees(1, true);
        } break;

        case ItemId_BlueRupee: {
            this->GiveRupees(5, true);
        } break;

        case ItemId_RedRupee: {
            this->GiveRupees(20, true);
        } break;

        case ItemId_BigGreenRupee: {
            this->GiveRupees(100, true);
        } break;

        case ItemId_BigRedRupee: {
            this->GiveRupees(200, true);
        } break;

        case ItemId_GoldRupee: {
            this->GiveRupees(300, true);
        } break;

        case ItemId_OshusSword: {
            SET_FLAG(mItemFlags.flags, ItemFlag_OshusSword);
            this->GetEquipItem(ItemFlag_OshusSword)->GiveAmmo(1);
        } break;

        case ItemId_WoodenShield: {
            SET_FLAG(mItemFlags.flags, ItemFlag_WoodenShield);
            this->GetEquipItem(ItemFlag_WoodenShield)->GiveAmmo(1);
        } break;

        case ItemId_BombBag: {
            this->GiveEquipItem(ItemFlag_BombBag, 10);
        } break;

        case ItemId_BombchuBag: {
            this->GiveEquipItem(ItemFlag_BombchuBag, 10);
        } break;

        case ItemId_Bow: {
            this->GiveEquipItem(ItemFlag_Bow, 20);
        } break;

        case ItemId_Boomerang: {
            this->GiveEquipItem(ItemFlag_Boomerang, 1);
        } break;

        case ItemId_Scoop: {
            this->GiveEquipItem(ItemFlag_Shovel, 1);
        } break;

        case ItemId_Hammer: {
            this->GiveEquipItem(ItemFlag_Hammer, 1);
        } break;

        case ItemId_Rope: {
            this->GiveEquipItem(ItemFlag_GrapplingHook, 1);
        } break;

        case ItemId_PhantomHourglass: {
            SET_FLAG(mItemFlags.flags, ItemFlag_Hourglass);
            gAdventureFlags->Set(AdventureFlag_Hourglass, true);
        } break;

        case ItemId_SWSeaChart: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SeaChartSW);
            gAdventureFlags->Set(AdventureFlag_SWSeaChart, true);
        } break;

        case ItemId_NWSeaChart: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SeaChartNW);
            gAdventureFlags->Set(AdventureFlag_NWSeaChart, true);
        } break;

        case ItemId_SESeaChart: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SeaChartSE);
            gAdventureFlags->Set(AdventureFlag_SESeaChart, true);
        } break;

        case ItemId_NESeaChart: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SeaChartNE);
            gAdventureFlags->Set(AdventureFlag_NESeaChart, true);
        } break;

        case ItemId_FishingRod: {
            SET_FLAG(mItemFlags.flags, ItemFlag_FishingRod);
            gAdventureFlags->Set(AdventureFlag_FishingRod, true);
        } break;

        case ItemId_Cannon: {
            SET_FLAG(mItemFlags.flags, ItemFlag_Cannon);
            gAdventureFlags->Set(AdventureFlag_Cannon, true);
            GiveShipPart(ShipPart_Cannon, ShipType_Linebeck);
            EquipLinebeckCannon();
        } break;

        case ItemId_SunKey: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SunKey);
            gAdventureFlags->Set(AdventureFlag_SunKey, true);
        } break;

        case ItemId_Unk_39: {
            SET_FLAG(mItemFlags.flags, ItemFlag_Unk_39);
            gAdventureFlags->Set(AdventureFlag_Unk_23, true);
        } break;

        case ItemId_Quiver: {
            this->UpgradeQuiver();
        } break;

        case ItemId_BigBombBag: {
            this->UpgradeBombBag();
        } break;

        case ItemId_BigBombchuBag: {
            this->UpgradeBombchuBag();
        } break;

        case ItemId_KingsKey: {
            SET_FLAG(mItemFlags.flags, ItemFlag_KingsKey);
        } break;

        case ItemId_GhostKey: {
            SET_FLAG(mItemFlags.flags, ItemFlag_GhostKey);
        } break;

        case ItemId_PowerGem: {
            mNumGems[Gem_Power] += 1;
        } break;

        case ItemId_WisdomGem: {
            mNumGems[Gem_Wisdom] += 1;
        } break;

        case ItemId_CourageGem: {
            mNumGems[Gem_Courage] += 1;
        } break;

        case ItemId_SalvageArm: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SalvageArm);
            gAdventureFlags->Set(AdventureFlag_SalvageArm, true);
            gPlayerManager->mSalvageArmHealth = 5;
        } break;

        case ItemId_SwordsmanScroll: {
            SET_FLAG(mItemFlags.flags, ItemFlag_SwordsmansScroll);
        } break;

        case ItemId_Crimsonine: {
            gAdventureFlags->Set(AdventureFlag_Crimsonine, true);
        } break;

        case ItemId_Azurine: {
            gAdventureFlags->Set(AdventureFlag_Azurine, true);
        } break;

        case ItemId_Aquanine: {
            gAdventureFlags->Set(AdventureFlag_Aquanine, true);
        } break;

        case ItemId_SpiritOfPowerUpgradeLvl1: {
            SET_FLAG(mItemFlags.flags, ItemFlag_PowerLv1);
        } break;

        case ItemId_SpiritOfWisdomUpgradeLvl1: {
            SET_FLAG(mItemFlags.flags, ItemFlag_WisdomLv1);
        } break;

        case ItemId_SpiritOfCourageUpgradeLvl1: {
            SET_FLAG(mItemFlags.flags, ItemFlag_CourageLv1);
        } break;

        case ItemId_SpiritOfPowerUpgradeLvl2: {
            SET_FLAG(mItemFlags.flags, ItemFlag_PowerLv2);
        } break;

        case ItemId_SpiritOfWisdomUpgradeLvl2: {
            SET_FLAG(mItemFlags.flags, ItemFlag_WisdomLv2);
        } break;

        case ItemId_SpiritOfCourageUpgradeLvl2: {
            SET_FLAG(mItemFlags.flags, ItemFlag_CourageLv2);
        } break;

        case ItemId_RedPotion: {
            for (s32 i = 0; i < MAX_POTIONS; ++i) {
                if (mPotions[i] != Potion_None) continue;
                this->SetPotion(i, Potion_Red);
                break;
            }
        } break;

        case ItemId_PurplePotion: {
            for (s32 i = 0; i < MAX_POTIONS; ++i) {
                if (mPotions[i] != Potion_None) continue;
                this->SetPotion(i, Potion_Purple);
                break;
            }
        } break;

        case ItemId_YellowPotion: {
            for (s32 i = 0; i < MAX_POTIONS; ++i) {
                if (mPotions[i] != Potion_None) continue;
                this->SetPotion(i, Potion_Yellow);
                break;
            }
        } break;

        case ItemId_SandOfHours: {
            mHourglassSandFrames += 3600;
        } break;

        case ItemId_GoldenChimney: {
            gAdventureFlags->Set(AdventureFlag_ReceivedGoldenChimney, true);
            GiveShipPart(ShipPart_Chimney, ShipType_Golden);
        } break;

        case ItemId_GoldenHandrail: {
            gAdventureFlags->Set(AdventureFlag_ReceivedGoldenHandrail, true);
            GiveShipPart(ShipPart_Handrail, ShipType_Golden);
        } break;

        case ItemId_GoldenCannon: {
            gAdventureFlags->Set(AdventureFlag_ReceivedGoldenCannon, true);
            GiveShipPart(ShipPart_Cannon, ShipType_Golden);
        } break;

        case ItemId_GoldenHull: {
            gAdventureFlags->Set(AdventureFlag_ReceivedGoldenHull, true);
            GiveShipPart(ShipPart_Hull, ShipType_Golden);
        } break;

        case ItemId_CycloneSlate: {
            SET_FLAG(mItemFlags.flags, ItemFlag_CycloneSlate);
        } break;

        case ItemId_Unk_128: {
            SET_FLAG(mItemFlags.flags, ItemFlag_Unk_47);
        } break;

        case ItemId_Rupoor10: {
            this->GiveRupees(-10, true);
        } break;

        case ItemId_Rupoor50: {
            this->GiveRupees(-50, true);
        } break;

        case ItemId_Nothing: break;
        case ItemId_Unk_5: break;
        case ItemId_Unk_16: break;
        case ItemId_Unk_131: break;
        case ItemId_Unk_132: break;

        default: {
            if (ItemId_TREASURE_CHART_START <= id && id <= ItemId_TREASURE_CHART_END) {
                SET_FLAG(mItemFlags.flags, id + ItemFlag_TREASURE_CHART_START - ItemId_TREASURE_CHART_START);
            }
        } break;
    }
    if (gAdventureFlags->Get(AdventureFlag_Azurine) && gAdventureFlags->Get(AdventureFlag_Crimsonine) &&
        gAdventureFlags->Get(AdventureFlag_Aquanine))
    {
        gAdventureFlags->Set(AdventureFlag_Unk_128, true);
    }
}

THUMB void ItemManager::GiveEquipItem(ItemFlag item, u16 ammo) {
    u16 flag = item;
    SET_FLAG(mItemFlags.flags, flag);
    this->GetEquipItem(item)->GiveAmmo(ammo);
    if (mEquippedItem == ItemFlag_None) {
        this->mEquippedItem   = item;
        this->mEquipLoadTimer = 1;
    }
}

THUMB void ItemManager::UnequipPotion() {
    switch (mEquippedItem) {
        case ItemFlag_PotionA:
        case ItemFlag_PotionB: {
            this->EquipPreviousItem();
        } break;
    }
}

ARM s32 ItemManager::GetMaxRupees() const {
    return 9999;
}

extern void *data_027e103c;
extern "C" s32 func_ov00_020cf374(void *param1, bool param2);
extern "C" void func_ov05_02104004(void *param1);
ARM void ItemManager::GiveRupees(s32 amount, bool param2) {
    s32 newRupees = mNumRupees + amount;
    if (newRupees > this->GetMaxRupees()) {
        newRupees = this->GetMaxRupees();
    } else if (newRupees < 0) {
        newRupees = 0;
    }

    s32 currRupees = func_ov00_020cf374(data_027e103c, true);
    if (param2) {
        currRupees = mNumRupees;
        if (currRupees != newRupees) {
            func_ov05_02104004(data_027e103c);
        }
    }
    mNumRupees = newRupees;
}

ARM unk32 ItemManager::GetNumKeys() const {
    return gMapManager->GetNumKeys();
}

THUMB void ItemManager::GiveKeys(u32 amount) {
    s32 keys = amount + gMapManager->GetNumKeys();
    if (keys >= MAX_KEYS) keys = MAX_KEYS;
    if (keys <= 0) keys = 0;
    gMapManager->SetNumKeys(keys);
}

ARM ItemFlag ItemManager::GetEquippedItem() const {
    if (mForcedItem != ItemFlag_None) return mForcedItem;
    return mEquippedItem;
}

ARM bool ItemManager::SetEquippedItem(ItemFlag equipId) {
    mPrevEquippedItem = mEquippedItem;
    mEquippedItem     = equipId;
    mEquipLoadTimer   = 2;
    return true;
}

ARM void ItemManager::EquipPreviousItem() {
    this->SetEquippedItem(mPrevEquippedItem);
}

THUMB void ItemManager::ForceEquipItem(ItemFlag equipId) {
    for (ItemFlag i = ItemFlag_EQUIP_START; i < ItemFlag_EQUIP_END; ++i) {
        if (i == equipId) continue;
        (*mEquipItems)[i - ItemFlag_EQUIP_START]->UpdateInUse(0);
    }
    mForcedItem     = equipId;
    mEquipLoadTimer = 1;
}

THUMB bool ItemManager::ClearForcedEquipItem() {
    mForcedItem = ItemFlag_None;
    if (mEquippedItem != ItemFlag_None) return this->SetEquippedItem(mEquippedItem);
    return false;
}

ARM void ItemManager::UpdateSwordShieldInUse() {
    this->GetEquipItem(ItemFlag_OshusSword)->UpdateInUse(1);
    this->GetEquipItem(ItemFlag_WoodenShield)->UpdateInUse(1);
}

THUMB void ItemManager::UpgradeQuiver() {
    if (mQuiverSize < MAX_AMMO_UPGRADE) mQuiverSize += 1;
    (*mAmmo)[ItemFlag_Bow] = this->GetMaxAmmo(ItemFlag_Bow);
}

THUMB void ItemManager::UpgradeBombBag() {
    if (mBombBagSize < MAX_AMMO_UPGRADE) mBombBagSize += 1;
    (*mAmmo)[ItemFlag_BombBag] = this->GetMaxAmmo(ItemFlag_BombBag);
}

THUMB void ItemManager::UpgradeBombchuBag() {
    if (mBombchuBagSize < MAX_AMMO_UPGRADE) mBombchuBagSize += 1;
    (*mAmmo)[ItemFlag_BombchuBag] = this->GetMaxAmmo(ItemFlag_BombchuBag);
}

ARM void ItemManager::func_ov00_020ae4dc(s32 param1) {
    s32 newValue = mUnk_0ba + param1;
    if (newValue > MAX_UNK_0BA) {
        mUnk_0ba = MAX_UNK_0BA;
    } else if (mUnk_0ba < -param1) {
        mUnk_0ba = 0;
    } else {
        mUnk_0ba = newValue;
    }
}

ARM void ItemManager::SetPotion(u32 index, Potion potion) {
    mPotions[index] = potion;
    if (potion == Potion_None) {
        RESET_FLAG(mItemFlags.flags, index + ItemFlag_PotionA);
    } else {
        SET_FLAG(mItemFlags.flags, index + ItemFlag_PotionA);
    }
}

ARM bool ItemManager::HasPotion(u32 index) const {
    switch (mPotions[index]) {
        case Potion_Red:
        case Potion_Purple:
        case Potion_Yellow: return true;

        case Potion_None:
        default: return false;
    }
}

ARM bool ItemManager::HasAllPotions() const {
    for (s32 i = 0; i < MAX_POTIONS; ++i) {
        if (!this->HasPotion(i)) return false;
    }
    return true;
}

ARM bool ItemManager::HasPurplePotion() const {
    for (s32 i = 0; i < MAX_POTIONS; ++i) {
        if (mPotions[i] == Potion_Purple) return true;
    }
    return false;
}

extern "C" void func_020196bc(ItemModel *param1, unk32 param2);
extern "C" void func_020196fc(ItemModel *param1, unk32 param2);
THUMB void ItemManager::LoadDungeonItemModels() {
    for (s32 i = 0; i < DungeonItemModelId_COUNT; ++i) {
        if (mDungeonItemModels[i] == NULL) continue;

        u16 unk1, unk2;
        switch (i) {
            case DungeonItemModelId_RoundCrystal:
            case DungeonItemModelId_SquareCrystal:
            case DungeonItemModelId_TriangleCrystal: {
                unk1 = data_027e0f78->mUnk_1e;
                unk2 = data_027e0f78->mUnk_1c;
            } break;

            default: {
                unk1 = data_027e0f78->mUnk_1a;
                unk2 = data_027e0f78->mUnk_18;
            } break;
        }
        func_020196bc(mDungeonItemModels[i], unk1);
        func_020196fc(mDungeonItemModels[i], unk2);
    }
}

extern unk32 data_ov00_020eec68;
extern "C" void PlaySoundEffect(void *param1, SfxId sfx);
THUMB void ItemManager::PlayItemFanfareSfx(ItemId item) {
    if (gItemManager->mMuteNextFanfare == true) {
        gItemManager->mMuteNextFanfare = false;
        return;
    }
    SfxId sfx;
    switch (item) {
        case ItemId_PowerGem:
        case ItemId_WisdomGem:
        case ItemId_CourageGem: {
            sfx = SfxId_Fanfare_Gem;
        } break;

        case ItemId_GoldRupee: {
            sfx = SfxId_Fanfare_GoldRupee;
        } break;

        case ItemId_SmallKey:
        case ItemId_GreenRupee:
        case ItemId_BlueRupee:
        case ItemId_RedRupee: {
            sfx = SfxId_Fanfare_Rupee;
        } break;

        case ItemId_Rupoor10:
        case ItemId_Rupoor50: {
            sfx = SfxId_Fanfare_Rupoor;
        } break;

        case ItemId_Nothing:
        case ItemId_HerosNewClothes: {
            sfx = SfxId_Fanfare_Nothing_2;
        } break;

        case ItemId_HeartContainer: {
            sfx = SfxId_Fanfare_HeartContainer;
        } break;

        default: {
            sfx = SfxId_Fanfare_Treasure;
        } break;
    }
    if (gItemManager->mFanfareSfx != SfxId_None) {
        sfx = gItemManager->mFanfareSfx;

        gItemManager->mFanfareSfx = SfxId_None;
    }
    PlaySoundEffect(&data_ov00_020eec68, sfx);
}

THUMB bool ItemManager::HasShipPartPriceShown(ShipPart part, ShipType type) const {
    return GET_FLAG(mShipPartPricesShown.flags, part * ShipType_COUNT + type);
}

THUMB void ItemManager::AddShipPartPriceShown(ShipPart part, ShipType type) {
    SET_FLAG(mShipPartPricesShown.flags, part * ShipType_COUNT + type);
}

THUMB bool ItemManager::HasTreasurePriceShown(Treasure treasure) const {
    return GET_FLAG(mTreasurePriceShownFlags, treasure);
}

THUMB void ItemManager::AddTreasurePriceShown(Treasure treasure) {
    SET_FLAG(mTreasurePriceShownFlags, treasure);
}
