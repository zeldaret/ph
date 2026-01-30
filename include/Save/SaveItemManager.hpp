#pragma once

#include "global.h"
#include "types.h"

#include "../Item/Item.hpp"
#include "Actor/Actor.hpp"
#include "Unknown/UnkStruct_020ec7dc.hpp"

class SaveItemManager_f8 {
public:
    /* 00 */ u32 mUnk_00[2];
    /* 08 */

    static void func_ov008_021139d8();
    static void func_ov008_021139dc();

    ~SaveItemManager_f8();
    SaveItemManager_f8();
};

class SaveItemManager_2f8 {
public:
    /* 00 */ u32 mUnk_00[2];
    /* 08 */ u32 mUnk_08[1];
    /* 0c */

    static void func_ov008_02113984();
    static void func_ov008_02113988();

    ~SaveItemManager_2f8();
    SaveItemManager_2f8();
};

class SaveItemManager_d1c {
public:
    /* 00 */ unk8 pad[0x1c];
    /* 1c */ Actor_UnkStruct_020 mUnk_1c;
    /* 30 */

    static void func_ov008_02113968();
    static void func_ov008_0211396c();

    SaveItemManager_d1c();
    ~SaveItemManager_d1c();
};

class SaveItemManager_cec {
public:
    /* 00 */ unk32 mUnk_00;

    void func_ov000_0207a3e4();
};

class SaveItemManager_2400 {
public:
    /* 00 */ unk32 mUnk_00;

    void func_ov000_0207a5ac();
};

class SaveItemManager_2580 {
public:
    /* 00 */ u16 mUnk_00[11];
    /* 16 */
};

class SaveItemManager_2840 {
public:
    /* 00 */ unk32 mUnk_00;

    void func_ov000_0207a4f0();
};

class SaveItemManager_2940 {
public:
    /* 00 */ unk32 mUnk_00;

    void func_ov000_0207a6d0();
};

extern "C" void Fill16(int value, unsigned short *dst, int size);
extern "C" void Fill32(unk32, u32 *, unk32);
extern "C" void Fill256(int value, void *dst, int size);

class SaveInventory {
public:
    /* 0000 */ ItemFlags itemFlags;
    /* 0010 */ u32 salvagedTreasureFlags;
    /* 0014 */ ShipPartPricesShown shipPartPricesShown;
    /* 0020 */ u32 treasurePriceShownFlags[CEIL_DIV(Treasure_COUNT, 32)];
    /* 0024 */ u8 equippedShipParts[ShipPart_COUNT];
    /* 002c */ s8 shipParts[ShipPart_COUNT][ShipType_COUNT];
    /* 0074 */ s8 treasure[Treasure_COUNT];
    /* 007c */ unk16 unk_7c;
    /* 007e */ unk8 unk_7e;
    /* 007f */ unk8 unk_7f;
    /* 0080 */ u16 hourglassSeconds;
    /* 0082 */ u16 fishSize[FishType_COUNT];
    /* 008e */ u16 numRupees;
    /* 0090 */ unk8 unk_90;
    /* 0091 */ unk8 unk_91;
    /* 0092 */ unk8 unk_92;
    /* 0093 */ u8 numBombs;
    /* 0094 */ u8 numBombchus;
    /* 0095 */ u8 numArrows;
    /* 0096 */ s8 equippedItem;
    /* 0097 */ Potion potions[MAX_POTIONS];
    /* 0099 */ u8 numGems[Gem_COUNT];
    /* 009c */ u8 quiverSize;
    /* 009d */ u8 bombBagSize;
    /* 009e */ u8 bombchuBagSize;
    /* 009f */ FishType fishCount[FishType_COUNT];
    /* 00a5 */ u8 equippedFairy;
    /* 00a6 */ unk16 unk_a6;
    /* 00a8 */ unk32 unk_a8[0x12];
    /* 00f0 */ u16 unk_f0[4];
    /* 00f8 */

    SaveInventory() {
        Fill32(0, this->itemFlags.flags, sizeof(this->itemFlags));
        Fill32(0, &this->salvagedTreasureFlags, sizeof(this->salvagedTreasureFlags));
        Fill32(0, this->shipPartPricesShown.flags, sizeof(this->shipPartPricesShown));
        Fill32(0, this->treasurePriceShownFlags, sizeof(this->treasurePriceShownFlags));
        this->unk_7c = 0;
        this->unk_7e = 0;
        this->unk_7f = 0;
        this->Init();
        Fill256(0, this->unk_a8, sizeof(this->unk_a8));
        Fill16(0, this->unk_f0, sizeof(this->unk_f0));
    }

    void Init();
};

class SaveItemManager_Dummy2 {
public:
    /* 000 */ u32 unk_cac[16];

    SaveItemManager_Dummy2() {
        Fill32(0, this->unk_cac, sizeof(this->unk_cac));
        Fill32(0, this->unk_cac, sizeof(this->unk_cac));
    }
};

class SaveItemManager {
public:
    /* 0000 */ SaveInventory inventory;
    /* 00f8 */ SaveItemManager_f8 unk_f8[64];
    /* 02f8 */ SaveItemManager_2f8 unk_2f8[207];
    /* 0cac */ SaveItemManager_Dummy2 unk_cac;
    /* 0cec */ SaveItemManager_cec unk_cec;
    /* 0cf0 */ unk8 unk_cf0[0xd1c - 0xcf0];
    /* 0d1c */ SaveItemManager_d1c unk_d1c[8];
    /* 0e9c */ u32 unk_e9c[2];
    /* 0ea4 */ u32 unk_ea4[1];
    /* 0ea8 */ unk8 unk_ea8[0xeb0 - 0xea8];
    /* 0eb0 */ u32 unk_eb0[2];
    /* 0eb8 */ u32 unk_eb8[336];
    /* 13f8 */ unk8 unk_13f8[0x1400 - 0x13f8];
    /* 1400 */ unk32 unk_1400[0x400];
    /* 2400 */ SaveItemManager_2400 unk_2400;
    /* 2404 */ unk8 unk_2404[0x2580 - 0x2404];
    /* 2580 */ SaveItemManager_2580 unk_2580[32];
    /* 2840 */ SaveItemManager_2840 unk_2840;
    /* 2844 */ unk8 unk_2844[0x2900 - 0x2844];
    /* 2900 */ UnkStruct_020ec7dc unk_2900;
    /* 2940 */ SaveItemManager_2940 unk_2940;
    /* 2940 */ unk8 unk_2944[0x29c0 - 0x2944];
    /* 29c0 */ unk32 unk_29c0;
    /* 29c4 */

    SaveItemManager();

    void func_ov000_0207a418();
};

extern SaveItemManager gSaveItemManager;
