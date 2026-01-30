#pragma once

#include "flags.h"
#include "types.h"

#define MAX_POTIONS 2

typedef s32 ItemFlag;
enum ItemFlag_ {
    ItemFlag_None                     = -1,
    /* 0x00 */ ItemFlag_OshusSword    = FLAG(0, 0),
    /* 0x01 */ ItemFlag_WoodenShield  = FLAG(0, 1),
    /* 0x02 */ ItemFlag_Boomerang     = FLAG(0, 2),
    /* 0x03 */ ItemFlag_Shovel        = FLAG(0, 3),
    /* 0x04 */ ItemFlag_BombBag       = FLAG(0, 4),
    /* 0x05 */ ItemFlag_Bow           = FLAG(0, 5),
    /* 0x06 */ ItemFlag_GrapplingHook = FLAG(0, 6),
    /* 0x07 */ ItemFlag_BombchuBag    = FLAG(0, 7),
    /* 0x08 */ ItemFlag_Hammer        = FLAG(0, 8),
    /* 0x09 */ ItemFlag_PotionA       = FLAG(0, 9),
    /* 0x0a */ ItemFlag_PotionB       = FLAG(0, 10),
    ItemFlag_EQUIP_START              = ItemFlag_OshusSword,
    ItemFlag_EQUIP_END                = ItemFlag_PotionB + 1,
    ItemFlag_EQUIP_COUNT              = ItemFlag_EQUIP_END - ItemFlag_EQUIP_START,

    /* 0x14 */ ItemFlag_SpiritOfCourage = FLAG(0, 20),
    /* 0x15 */ ItemFlag_SpiritOfPower   = FLAG(0, 21),
    /* 0x16 */ ItemFlag_SpiritOfWisdom  = FLAG(0, 22),
    /* 0x17 */ ItemFlag_CourageLv1      = FLAG(0, 23),
    /* 0x18 */ ItemFlag_PowerLv1        = FLAG(0, 24),
    /* 0x19 */ ItemFlag_WisdomLv1       = FLAG(0, 25),
    ItemFlag_FAIRY_LV1                  = ItemFlag_CourageLv1,
    /* 0x1a */ ItemFlag_CourageLv2      = FLAG(0, 26),
    /* 0x1b */ ItemFlag_PowerLv2        = FLAG(0, 27),
    /* 0x1c */ ItemFlag_WisdomLv2       = FLAG(0, 28),
    ItemFlag_FAIRY_LV2                  = ItemFlag_CourageLv2,

    /* 0x20 */ ItemFlag_Hourglass    = FLAG(1, 0),
    /* 0x21 */ ItemFlag_SeaChartSW   = FLAG(1, 1),
    /* 0x22 */ ItemFlag_SeaChartNW   = FLAG(1, 2),
    /* 0x23 */ ItemFlag_SeaChartSE   = FLAG(1, 3),
    /* 0x24 */ ItemFlag_SeaChartNE   = FLAG(1, 4),
    /* 0x25 */ ItemFlag_PhantomSword = FLAG(1, 5),
    /* 0x26 */ ItemFlag_SunKey       = FLAG(1, 6),
    /* 0x27 */ ItemFlag_Unk_39       = FLAG(1, 7),
    /* 0x28 */ ItemFlag_FishingRod   = FLAG(1, 8),
    /* 0x29 */ ItemFlag_Cannon       = FLAG(1, 9),
    /* 0x2a */ ItemFlag_KingsKey     = FLAG(1, 10),
    /* 0x2b */ ItemFlag_GhostKey     = FLAG(1, 11),
    /* 0x2c */ ItemFlag_SalvageArm   = FLAG(1, 12),

    /* 0x2d */ ItemFlag_SwordsmansScroll = FLAG(1, 13),
    /* 0x2e */ ItemFlag_CycloneSlate     = FLAG(1, 14),
    /* 0x2f */ ItemFlag_BigCatchLure     = FLAG(1, 15),

    /* 0x60 */ ItemFlag_TreasureChart1  = FLAG(3, 0),
    /* 0x61 */ ItemFlag_TreasureChart2  = FLAG(3, 1),
    /* 0x62 */ ItemFlag_TreasureChart3  = FLAG(3, 2),
    /* 0x63 */ ItemFlag_TreasureChart4  = FLAG(3, 3),
    /* 0x64 */ ItemFlag_TreasureChart5  = FLAG(3, 4),
    /* 0x65 */ ItemFlag_TreasureChart6  = FLAG(3, 5),
    /* 0x66 */ ItemFlag_TreasureChart7  = FLAG(3, 6),
    /* 0x67 */ ItemFlag_TreasureChart8  = FLAG(3, 7),
    /* 0x68 */ ItemFlag_TreasureChart9  = FLAG(3, 8),
    /* 0x69 */ ItemFlag_TreasureChart10 = FLAG(3, 9),
    /* 0x6a */ ItemFlag_TreasureChart11 = FLAG(3, 10),
    /* 0x6b */ ItemFlag_TreasureChart12 = FLAG(3, 11),
    /* 0x6c */ ItemFlag_TreasureChart13 = FLAG(3, 12),
    /* 0x6d */ ItemFlag_TreasureChart14 = FLAG(3, 13),
    /* 0x6e */ ItemFlag_TreasureChart15 = FLAG(3, 14),
    /* 0x6f */ ItemFlag_TreasureChart16 = FLAG(3, 15),
    /* 0x70 */ ItemFlag_TreasureChart17 = FLAG(3, 16),
    /* 0x71 */ ItemFlag_TreasureChart18 = FLAG(3, 17),
    /* 0x72 */ ItemFlag_TreasureChart19 = FLAG(3, 18),
    /* 0x73 */ ItemFlag_TreasureChart20 = FLAG(3, 19),
    /* 0x74 */ ItemFlag_TreasureChart21 = FLAG(3, 20),
    /* 0x75 */ ItemFlag_TreasureChart22 = FLAG(3, 21),
    /* 0x76 */ ItemFlag_TreasureChart23 = FLAG(3, 22),
    /* 0x77 */ ItemFlag_TreasureChart24 = FLAG(3, 23),
    /* 0x78 */ ItemFlag_TreasureChart25 = FLAG(3, 24),
    /* 0x79 */ ItemFlag_TreasureChart26 = FLAG(3, 25),
    /* 0x7a */ ItemFlag_TreasureChart27 = FLAG(3, 26),
    /* 0x7b */ ItemFlag_TreasureChart28 = FLAG(3, 27),
    /* 0x7c */ ItemFlag_TreasureChart29 = FLAG(3, 28),
    /* 0x7d */ ItemFlag_TreasureChart30 = FLAG(3, 29),
    /* 0x7e */ ItemFlag_TreasureChart31 = FLAG(3, 30),
    /* 0x7f */ ItemFlag_TreasureChart32 = FLAG(3, 31),
    ItemFlag_TREASURE_CHART_START       = ItemFlag_TreasureChart1,

    ItemFlag_COUNT = FLAG(4, 0),
};

typedef s32 ItemId;
enum ItemId_ {
    /* -1 */ ItemId_None                = -1,
    /* 0x00 */ ItemId_Nothing           = 0,
    /* 0x01 */ ItemId_SmallKey          = 1,
    /* 0x02 */ ItemId_GreenRupee        = 2,
    /* 0x03 */ ItemId_OshusSword        = 3,
    /* 0x04 */ ItemId_WoodenShield      = 4,
    /* 0x05 */ ItemId_Unk_5             = 5,
    /* 0x06 */ ItemId_Unk_6             = 6,
    /* 0x07 */ ItemId_BombBag           = 7,
    /* 0x08 */ ItemId_Bow               = 8,
    /* 0x09 */ ItemId_BigGreenRupee     = 9,
    /* 0x0a */ ItemId_HeartContainer    = 10,
    /* 0x0b */ ItemId_Unk_11            = 11,
    /* 0x0c */ ItemId_Boomerang         = 12,
    /* 0x0d */ ItemId_Scoop             = 13,
    /* 0x0e */ ItemId_BombchuBag        = 14,
    /* 0x0f */ ItemId_BossKey           = 15,
    /* 0x10 */ ItemId_Unk_16            = 16,
    /* 0x11 */ ItemId_Unk_17            = 17,
    /* 0x12 */ ItemId_PhantomHourglass  = 18,
    /* 0x13 */ ItemId_SWSeaChart        = 19,
    /* 0x14 */ ItemId_NWSeaChart        = 20,
    /* 0x15 */ ItemId_SESeaChart        = 21,
    /* 0x16 */ ItemId_NESeaChart        = 22,
    /* 0x17 */ ItemId_Unk_23            = 23,
    /* 0x18 */ ItemId_BlueRupee         = 24,
    /* 0x19 */ ItemId_RedRupee          = 25,
    /* 0x1a */ ItemId_BigRedRupee       = 26,
    /* 0x1b */ ItemId_GoldRupee         = 27,
    /* 0x1c */ ItemId_Unk_28            = 28,
    /* 0x1d */ ItemId_Unk_29            = 29,
    /* 0x1e */ ItemId_Unk_30            = 30,
    /* 0x1f */ ItemId_Hammer            = 31,
    /* 0x20 */ ItemId_Rope              = 32,
    /* 0x21 */ ItemId_SquareCrystal     = 33,
    /* 0x22 */ ItemId_RoundCrystal      = 34,
    /* 0x23 */ ItemId_TriangleCrystal   = 35,
    /* 0x24 */ ItemId_FishingRod        = 36,
    /* 0x25 */ ItemId_Cannon            = 37,
    /* 0x26 */ ItemId_SunKey            = 38,
    /* 0x27 */ ItemId_Unk_39            = 39,
    /* 0x28 */ ItemId_Quiver            = 40,
    /* 0x29 */ ItemId_BigBombBag        = 41,
    /* 0x2a */ ItemId_BigBombchuBag     = 42,
    /* 0x2b */ ItemId_Unk_43            = 43,
    /* 0x2c */ ItemId_KingsKey          = 44,
    /* 0x2d */ ItemId_PowerGem          = 45,
    /* 0x2e */ ItemId_WisdomGem         = 46,
    /* 0x2f */ ItemId_CourageGem        = 47,
    /* 0x30 */ ItemId_PinkCoral         = 48,
    /* 0x31 */ ItemId_WhitePearlLoop    = 49,
    /* 0x32 */ ItemId_DarkPearlLoop     = 50,
    /* 0x33 */ ItemId_ZoraScale         = 51,
    /* 0x34 */ ItemId_GoronAmber        = 52,
    /* 0x35 */ ItemId_RutoCrown         = 53,
    /* 0x36 */ ItemId_HelmarocPlume     = 54,
    /* 0x37 */ ItemId_RegalRing         = 55,
    ItemId_TREASURE_START               = ItemId_PinkCoral,
    ItemId_TREASURE_END                 = ItemId_RegalRing,
    /* 0x38 */ ItemId_GhostKey          = 56,
    /* 0x39 */ ItemId_FreebieCard       = 57,
    /* 0x3a */ ItemId_ComplimentCard    = 58,
    /* 0x3b */ ItemId_ComplimentaryCard = 59,
    /* 0x3c */ ItemId_RegalNecklace     = 60,
    /* 0x3d */ ItemId_SalvageArm        = 61,
    /* 0x3e */ ItemId_HerosNewClothes   = 62,
    /* 0x3f */ ItemId_Kaleidoscope      = 63,
    /* 0x40 */ ItemId_GuardNotebook     = 64,
    /* 0x41 */ ItemId_JolenesLetter     = 65,
    /* 0x42 */ ItemId_PrizePostcard     = 66,
    /* 0x43 */ ItemId_WoodHeart         = 67,
    /* 0x44 */ ItemId_PhantomSwordBlade = 68,
    /* 0x45 */ ItemId_PhantomSword      = 69,
    /* 0x46 */ ItemId_Unk_70            = 70,

    /* 0x4b */ ItemId_TreasureChart1             = 75,
    /* 0x4c */ ItemId_TreasureChart2             = 76,
    /* 0x4d */ ItemId_TreasureChart3             = 77,
    /* 0x4e */ ItemId_TreasureChart4             = 78,
    /* 0x4f */ ItemId_TreasureChart5             = 79,
    /* 0x50 */ ItemId_TreasureChart6             = 80,
    /* 0x51 */ ItemId_TreasureChart7             = 81,
    /* 0x52 */ ItemId_TreasureChart8             = 82,
    /* 0x53 */ ItemId_TreasureChart9             = 83,
    /* 0x54 */ ItemId_TreasureChart10            = 84,
    /* 0x55 */ ItemId_TreasureChart11            = 85,
    /* 0x56 */ ItemId_TreasureChart12            = 86,
    /* 0x57 */ ItemId_TreasureChart13            = 87,
    /* 0x58 */ ItemId_TreasureChart14            = 88,
    /* 0x59 */ ItemId_TreasureChart15            = 89,
    /* 0x5a */ ItemId_TreasureChart16            = 90,
    /* 0x5b */ ItemId_TreasureChart17            = 91,
    /* 0x5c */ ItemId_TreasureChart18            = 92,
    /* 0x5d */ ItemId_TreasureChart19            = 93,
    /* 0x5e */ ItemId_TreasureChart20            = 94,
    /* 0x5f */ ItemId_TreasureChart21            = 95,
    /* 0x60 */ ItemId_TreasureChart22            = 96,
    /* 0x61 */ ItemId_TreasureChart23            = 97,
    /* 0x62 */ ItemId_TreasureChart24            = 98,
    /* 0x63 */ ItemId_TreasureChart25            = 99,
    /* 0x64 */ ItemId_TreasureChart26            = 100,
    /* 0x65 */ ItemId_TreasureChart27            = 101,
    /* 0x66 */ ItemId_TreasureChart28            = 102,
    /* 0x67 */ ItemId_TreasureChart29            = 103,
    /* 0x68 */ ItemId_TreasureChart30            = 104,
    /* 0x69 */ ItemId_TreasureChart31            = 105,
    /* 0x6a */ ItemId_TreasureChart32            = 106,
    ItemId_TREASURE_CHART_START                  = ItemId_TreasureChart1,
    ItemId_TREASURE_CHART_END                    = ItemId_TreasureChart32,
    /* 0x6b */ ItemId_SpiritOfPowerUpgradeLvl1   = 107,
    /* 0x6c */ ItemId_SpiritOfWisdomUpgradeLvl1  = 108,
    /* 0x6d */ ItemId_SpiritOfCourageUpgradeLvl1 = 109,
    /* 0x6e */ ItemId_SpiritOfPowerUpgradeLvl2   = 110,
    /* 0x6f */ ItemId_SpiritOfWisdomUpgradeLvl2  = 111,
    /* 0x70 */ ItemId_SpiritOfCourageUpgradeLvl2 = 112,
    /* 0x71 */ ItemId_SwordsmanScroll            = 113,
    /* 0x72 */ ItemId_Crimsonine                 = 114,
    /* 0x73 */ ItemId_Azurine                    = 115,
    /* 0x74 */ ItemId_Aquanine                   = 116,
    /* 0x75 */ ItemId_RedPotion                  = 117,
    /* 0x76 */ ItemId_PurplePotion               = 118,
    /* 0x77 */ ItemId_YellowPotion               = 119,
    /* 0x78 */ ItemId_SandOfHours                = 120,
    /* 0x79 */ ItemId_GoldenChimney              = 121,
    /* 0x7a */ ItemId_GoldenHandrail             = 122,
    /* 0x7b */ ItemId_GoldenCannon               = 123,
    /* 0x7c */ ItemId_GoldenHull                 = 124,
    ItemId_GOLDEN_SHIP_START                     = ItemId_GoldenChimney,
    ItemId_GOLDEN_SHIP_END                       = ItemId_GoldenHull,

    /* 0x7d */ ItemId_Unk_125      = 125,
    /* 0x7e */ ItemId_Unk_126      = 126,
    /* 0x7f */ ItemId_CycloneSlate = 127,
    /* 0x80 */ ItemId_BigCatchLure = 128,
    /* 0x81 */ ItemId_Rupoor10     = 129,
    /* 0x82 */ ItemId_Rupoor50     = 130,
    /* 0x83 */ ItemId_Unk_131      = 131,
    /* 0x84 */ ItemId_Unk_132      = 132,
    /* 0x85 */ ItemId_Unk_133      = 133,
    /* 0x86 */ ItemId_Unk_134      = 134,
    /* 0x87 */ ItemId_Unk_135      = 135,
    /* 0x88 */ ItemId_Unk_136      = 136,
};

enum Gem {
    Gem_Courage,
    Gem_Power,
    Gem_Wisdom,
    Gem_COUNT,
};

typedef u32 ShipPart;
enum ShipPart_ {
    ShipPart_Anchor,
    ShipPart_Prow,
    ShipPart_Hull,
    ShipPart_Cannon,
    ShipPart_Handrail,
    ShipPart_Wheel,
    ShipPart_Chimney,
    ShipPart_Bridge,
    ShipPart_COUNT,
};

typedef u32 ShipType;
enum ShipType_ {
    ShipType_Linebeck,
    ShipType_Bright,
    ShipType_Iron,
    ShipType_Stone,
    ShipType_Vintage,
    ShipType_Demon,
    ShipType_Tropical,
    ShipType_Dignified,
    ShipType_Golden,
    ShipType_COUNT,
};

typedef u32 ShipItem;
#define SHIP_ITEM(part, ship) (ShipPart_##part * ShipPart_COUNT + ShipType_##type)
#define ShipItem_COUNT (ShipPart_COUNT * ShipType_COUNT)

typedef u32 Treasure;
enum Treasure_ {
    Treasure_PinkCoral,
    Treasure_WhitePearlLoop,
    Treasure_DarkPearlLoop,
    Treasure_ZoraScale,
    Treasure_GoronAmber,
    Treasure_RutoCrown,
    Treasure_HelmarocPlume,
    Treasure_RegalRing,

    Treasure_COUNT,
};

typedef u8 Potion;
enum Potion_ {
    Potion_None,
    Potion_Red,
    Potion_Purple,
    Potion_Yellow,
    Potion_COUNT,
};

typedef u8 FishType;
enum FishType_ {
    FishType_SkippyJack,
    FishType_Toona,
    FishType_Loovar,
    FishType_RustySwordfish,
    FishType_Neptoona,
    FishType_Stowfish,
    FishType_COUNT
};

struct ItemFlags {
    /* 00 */ u32 flags[CEIL_DIV(ItemFlag_COUNT, 32)];
    /* 10 */
};

struct ShipPartPricesShown {
    /* 0 */ u32 flags[CEIL_DIV(ShipItem_COUNT, 32)];
    /* c */
};

namespace Item {
    bool func_ov00_020ad020(ItemId item);
    bool func_ov00_020ad068(ItemId item);
} // namespace Item
