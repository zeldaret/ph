#pragma once

#include "global.h"
#include "types.h"

#include "../Item/Item.hpp"

class SaveItemManager {
public:
    /* 00 */ ItemFlags itemFlags;
    /* 10 */ u32 salvagedTreasureFlags;
    /* 14 */ ShipPartPricesShown shipPartPricesShown;
    /* 20 */ u32 treasurePriceShownFlags[CEIL_DIV(Treasure_COUNT, 32)];
    /* 24 */ u8 equippedShipParts[ShipPart_COUNT];
    /* 2c */ s8 shipParts[ShipPart_COUNT][ShipType_COUNT];
    /* 74 */ s8 treasure[Treasure_COUNT];
    /* 7c */ unk8 unk_7c[4];
    /* 80 */ u16 hourglassSeconds;
    /* 82 */ u16 fishSize[FishType_COUNT];
    /* 8e */ u16 numRupees;
    /* 90 */ unk8 unk_90;
    /* 91 */ unk8 unk_91;
    /* 92 */ unk8 unk_92;
    /* 93 */ u8 numBombs;
    /* 94 */ u8 numBombchus;
    /* 95 */ u8 numArrows;
    /* 96 */ s8 equippedItem;
    /* 97 */ Potion potions[MAX_POTIONS];
    /* 99 */ u8 numGems[Gem_COUNT];
    /* 9c */ u8 quiverSize;
    /* 9d */ u8 bombBagSize;
    /* 9e */ u8 bombchuBagSize;
    /* 9f */ FishType fishCount[FishType_COUNT];
    /* a5 */ u8 equippedFairy;
    /* a6 */

    SaveItemManager();

    void Init();
};

extern SaveItemManager gSaveItemManager;
