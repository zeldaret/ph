#pragma once

extern "C" {
#include <string.h>
}

#include "global.h"
#include "nds/math.h"
#include "types.h"

#include "Actor/Navi/ActorNavi.hpp"
#include "Item/Item.hpp"
#include "Player/EquipItem.hpp"
#include "Render/ModelRender.hpp"
#include "Save/SaveItemManager.hpp"
#include "Sound/Sfx.hpp"
#include "System/SysNew.hpp"

#define MAX_HOURGLASS_SECONDS 1500 // 25 minutes
#define MAX_AMMO_UPGRADE 2
#define MAX_UNK_0BA 9

typedef s32 FairyId;
enum FairyId_ {
    FairyId_None    = -1,
    FairyId_Courage = 0,
    FairyId_Power   = 1,
    FairyId_Wisdom  = 2,
    FairyId_COUNT   = 3,
};

typedef u32 ItemModelId;
enum ItemModelId_ {
    ItemModelId_OshusSword,   // swA
    ItemModelId_PhantomSword, // swB
    ItemModelId_WoodenShield, // shA
    ItemModelId_Bow,          // bow
    ItemModelId_Arrow,        // arrow
    ItemModelId_ArrowS,       // arrow_s, purpose unknown
    ItemModelId_Boomerang,    // boomerang
    ItemModelId_Scoop,        // scp
    ItemModelId_Bomb,         // bomb
    ItemModelId_Bombchu,      // bomchu
    ItemModelId_RedPotion,    // rev_bin
    ItemModelId_PurplePotion, // rev_binP
    ItemModelId_YellowPotion, // rev_binY
    ItemModelId_Hammer,       // ham
    ItemModelId_RopeTop,      // ropetop
    ItemModelId_BombchuPt,    // bomchu_pt, purpose unknown
    ItemModelId_COUNT,
};
typedef u32 DungeonItemModelId;
enum DungeonItemModelId_ {
    DungeonItemModelId_ForceGem,        // force
    DungeonItemModelId_BossKey,         // bosskey
    DungeonItemModelId_RoundCrystal,    // switch_cstl_c_c
    DungeonItemModelId_SquareCrystal,   // switch_cstl_s_c
    DungeonItemModelId_TriangleCrystal, // switch_cstl_t_c
    DungeonItemModelId_COUNT,
};

class ItemManager : public SysObject {
private:
    /* 000 */ ItemFlag mEquippedItem;
    /* 004 */ ItemFlag mPrevEquippedItem;
    /* 008 */ ItemFlag mForcedItem; // game crashes when any item besides this one is equipped
    /* 00c */ u32 mHourglassSandFrames;
    /* 010 */ FairyId mEquippedFairy;
    /* 014 */ ActorNavi *mFairies[FairyId_COUNT];
    /* 020 */ u16 mEquipLoadTimer;
    /* 022 */ u16 mNumRupees;
    /* 024 */ u8 mNumGems[Gem_COUNT];
    /* 027 */ unk8 mUnk_027; // padding?
    /* 028 */ ShipType mEquippedShipParts[ShipPart_COUNT];
    /* 048 */ s8 mShipParts[ShipPart_COUNT][ShipType_COUNT];
    /* 090 */ s8 mTreasure[Treasure_COUNT];
    /* 098 */ u8 mUnk_098[6]; // max 99
    /* 09e */ u16 mUnk_09e[6]; // max 9999, corresponds with mUnk_098
    /* 0aa */ unk16 mUnk_0aa; // padding?
    /* 0ac */ EquipItem *(*mEquipItems)[ItemFlag_EQUIP_COUNT];
    /* 0b0 */ u16 (*mAmmo)[ItemFlag_EQUIP_COUNT];
    /* 0b4 */ u16 mQuiverSize;
    /* 0b6 */ u16 mBombBagSize;
    /* 0b8 */ u16 mBombchuBagSize;
    /* 0ba */ u16 mUnk_0ba; // only between 0 and 9
    /* 0bc */ Potion mPotions[MAX_POTIONS];
    /* 0be */ unk8 mUnk_0be[2]; // padding?
    /* 0c0 */ ItemModel *mItemModels[ItemModelId_COUNT];
    /* 100 */ ItemModel *mDungeonItemModels[DungeonItemModelId_COUNT]; // non-null in dungeons/caves
    /* 114 */ ModelRender *mUnk_114;
    /* 118 */ ItemId mFanfareItem;
    /* 11c */ SfxId mFanfareSfx;
    /* 120 */ void *mFanfareItemModel;
    /* 124 */ void *mUnk_124;
    /* 128 */ ItemFlags mItemFlags;
    /* 138 */ u32 mSalvagedTreasureFlags;
    /* 13c */ ShipPartPricesShown mShipPartPricesShown;
    /* 148 */ u32 mTreasurePriceShownFlags[CEIL_DIV(Treasure_COUNT, 32)];
    /* 14c */ bool mMuteNextFanfare;
    /* 14d */ u8 mUnk_14d;
    /* 14e */ unk8 mUnk_14e[0x2]; // padding?
    /* 150 */

public:
    static ItemManager *Create();
    static void Destroy();
    ItemManager();
    ~ItemManager();
    void Init();

    // Access to members
    inline u8 GetUnk_14d(void) {
        return mUnk_14d;
    }

    // Save/load
    void Save(SaveItemManager *save);
    void Load(const SaveItemManager *save);

    // Fairy
    FairyId GetEquippedFairy() const;
    ActorNavi *GetFairy(FairyId id) const;
    u32 GetActiveFairyLevel(FairyId id) const;
    u32 GetFairyLevel(FairyId id) const;
    void SpawnFairies();

    // Equip item
    void ClearPrevEquippedItem();
    void TickEquipItem();
    ItemFlag GetEquippedItem() const;
    void Sword_vfunc_38(unk32 param1);
    void Shield_vfunc_38(unk32 param1);
    void EquipItem_vfunc_38(unk32 param1);
    bool EquipCollidesWith(Cylinder *cylinder, ItemFlag equipId);
    s32 EquipItem_vfunc_2c(ItemFlag equipId);
    EquipItem *GetEquipItem(ItemFlag equipId);
    bool func_ov00_020ad790(unk32 param1);
    bool SetEquippedItem(ItemFlag equipId);
    void EquipPreviousItem();
    void ForceEquipItem(ItemFlag equipId);
    bool ClearForcedEquipItem();
    void UpdateSwordShieldInUse();
    static EquipItem *GetEquipItemUnchecked(ItemFlag equipId);
    void InitEquipItems();
    void func_ov004_02107648();
    void func_ov004_02107650();
    void func_ov004_02107698();
    void func_ov004_021076bc();

    // Ammo
    u16 GetAmmo(ItemFlag equipId) const;
    void GiveAmmo(ItemFlag equipId, u16 amount);
    u16 GetMaxAmmo(ItemFlag equipId) const;
    void UpgradeQuiver();
    void UpgradeBombBag();
    void UpgradeBombchuBag();

    // Item model
    void func_ov00_020ad528();
    ItemModel *GetItemModel(ItemModelId id);
    void func_ov00_020ad538(unk32 param1) const;
    void func_ov00_020ad560(unk32 param1) const;
    ItemModel *GetDungeonItemModel(DungeonItemModelId id);
    void func_ov00_020ad594(unk32 param1) const;
    void LoadFanfareItem(ItemId id);
    bool GetFanfareItemScale(Vec3p *pScale) const;
    void LoadDungeonItemModels();
    static void PlayItemFanfareSfx(ItemId item);

    // Ship
    ShipType GetEquippedShipPart(ShipPart part) const;
    void EquipShipPart(ShipPart part, ShipType type);
    s8 GetShipPartCount(ShipPart part, ShipType type) const;
    void SetShipPartCount(ShipPart part, ShipType type, s8 count);
    bool HasShipPartPriceShown(ShipPart part, ShipType type) const;
    void AddShipPartPriceShown(ShipPart part, ShipType type);
    u8 GetMaxShipPartCount() const;

    // Treasure
    s8 GetTreasureCount(Treasure treasure) const;
    void SetTreasureCount(Treasure treasure, s8 count);
    bool HasTreasurePriceShown(Treasure treasure) const;
    void AddTreasurePriceShown(Treasure treasure);
    bool IsTreasureSalvaged(u32 index) const;
    void SetTreasureSalvaged(u32 index);
    u8 GetMaxTreasureCount() const;

    // mUnk_098, mUnk_09e
    u8 GetUnk_098(u32 index) const;
    u16 GetUnk_09e(u32 index) const;
    s32 GetUnk_09e_Divided(u32 index) const;
    void SetUnk_09e(u32 index, u16 value); // also increments the corresponding mUnk_098 value

    // Item
    bool HasItem(ItemFlag item) const;
    void AddItem(ItemFlag item);
    void RemoveItem(ItemFlag item);
    void GiveItem(ItemId id);
    void GiveEquipItem(ItemFlag item, u16 ammo);

    // Rupees
    s32 GetMaxRupees() const;
    void GiveRupees(s32 amount, bool param2);

    // Potion
    void SetPotion(u32 index, Potion potion);
    bool HasPotion(u32 index) const;
    bool HasAllPotions() const;
    bool HasPurplePotion() const;
    void UnequipPotion();

    // Keys
    unk32 GetNumKeys() const;
    void GiveKeys(u32 amount);

    // Unknown
    void func_ov00_020ae4dc(s32 param1);
    void func_ov000_020c0c44(void *);
    void func_ov000_020c0e5c(void *, unk32);
};

extern ItemManager *gItemManager;
