#include "Item/Item.hpp"
#include "global.h"

THUMB bool Item::func_ov00_020ad020(ItemId item) {
    switch (item) {
        case ItemId_Cannon:
        case ItemId_Unk_43:
        case ItemId_SalvageArm:
        case ItemId_GoldenChimney:
        case ItemId_GoldenHandrail:
        case ItemId_GoldenCannon:
        case ItemId_GoldenHull:
        case ItemId_Unk_126:
        case ItemId_Unk_133:
            return true;
        default:
            break;
    }

    return false;
}

THUMB bool Item::func_ov00_020ad068(ItemId item) {
    switch (item) {
        case ItemId_SpiritOfPowerUpgradeLvl1:
        case ItemId_SpiritOfWisdomUpgradeLvl1:
        case ItemId_SpiritOfCourageUpgradeLvl1:
        case ItemId_SpiritOfPowerUpgradeLvl2:
        case ItemId_SpiritOfWisdomUpgradeLvl2:
        case ItemId_SpiritOfCourageUpgradeLvl2:
            return true;
        default:
            break;
    }

    return false;
}
