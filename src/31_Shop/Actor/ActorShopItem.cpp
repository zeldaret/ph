#include "Actor/ActorShopItem.hpp"
#include "Actor/ActorTypeId.hpp"
#include "DTCM/UnkStruct_027e0c54.hpp"
#include "DTCM/UnkStruct_027e0f64.hpp"
#include "Item/Item.hpp"
#include "Item/ItemManager.hpp"
#include "Message/MsgProc.hpp"
#include "Player/TouchControl.hpp"
#include "Render/ModelRender.hpp"
#include "Save/AdventureFlags.hpp"
#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"
#include "Unknown/UnkStruct_ov000_020e9c88.hpp"
#include "lib/files.hpp"
#include "nds/math.h"
#include "types.h"

static char *sShipTypes[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

ActorType ActorShopItemDM::gType = ActorType(ActorTypeId_ShopItemDM, (ActorCreateFunc) ActorShopItemDM::Create, NULL);
ActorType ActorShopItemSoldOut::gType =
    ActorType(ActorTypeId_ShopItemSoldOut, (ActorCreateFunc) ActorShopItemSoldOut::Create, NULL);
ActorType ActorShopItemHeartContainer::gType =
    ActorType(ActorTypeId_ShopItemHeartContainer, (ActorCreateFunc) ActorShopItemHeartContainer::Create, NULL);
ActorType ActorShopItemArrows::gType =
    ActorType(ActorTypeId_ShopItemArrows, (ActorCreateFunc) ActorShopItemArrows::Create, NULL);
ActorType ActorShopItemBombs::gType = ActorType(ActorTypeId_ShopItemBombs, (ActorCreateFunc) ActorShopItemBombs::Create, NULL);
ActorType ActorShopItemBombchus::gType =
    ActorType(ActorTypeId_ShopItemBombchus, (ActorCreateFunc) ActorShopItemBombchus::Create, NULL);
ActorType ActorShopItemQuiver::gType =
    ActorType(ActorTypeId_ShopItemQuiver, (ActorCreateFunc) ActorShopItemQuiver::Create, NULL);
ActorType ActorShopItemBombBag::gType =
    ActorType(ActorTypeId_ShopItemBombBag, (ActorCreateFunc) ActorShopItemBombBag::Create, NULL);
ActorType ActorShopItemBombchuBag::gType =
    ActorType(ActorTypeId_ShopItemBombchuBag, (ActorCreateFunc) ActorShopItemBombchuBag::Create, NULL);
ActorType ActorShopItemTreasure::gType =
    ActorType(ActorTypeId_ShopItemTreasure, (ActorCreateFunc) ActorShopItemTreasure::Create, NULL);
ActorType ActorShopItemShipPart::gType =
    ActorType(ActorTypeId_ShopItemShipPart, (ActorCreateFunc) ActorShopItemShipPart::Create, NULL);
ActorType ActorShopItemGem::gType = ActorType(ActorTypeId_ShopItemGem, (ActorCreateFunc) ActorShopItemGem::Create, NULL);
ActorType ActorShopItemShield::gType =
    ActorType(ActorTypeId_ShopItemShield, (ActorCreateFunc) ActorShopItemShield::Create, NULL);
ActorType ActorShopItemPotion::gType =
    ActorType(ActorTypeId_ShopItemPotion, (ActorCreateFunc) ActorShopItemPotion::Create, NULL);
ActorType ActorShopItemBK::gType = ActorType(ActorTypeId_ShopItemBK, (ActorCreateFunc) ActorShopItemBK::Create, NULL);
ActorType ActorShopItemCC::gType = ActorType(ActorTypeId_ShopItemCC, (ActorCreateFunc) ActorShopItemCC::Create, NULL);
ActorType ActorShopItemBY::gType = ActorType(ActorTypeId_ShopItemBY, (ActorCreateFunc) ActorShopItemBY::Create, NULL);

struct ShopItemPrice {
    u32 price;
    ShopItemPrice(u32 price) :
        price(price) {}
};
static ShopItemPrice sShopItemPrices[ShopItem_BASE_COUNT] = {
    ShopItemPrice(0),    // ShopItem_Test
    ShopItemPrice(0),    // ShopItem_SoldOut
    ShopItemPrice(50),   // ShopItem_Bombs
    ShopItemPrice(50),   // ShopItem_Arrows
    ShopItemPrice(50),   // ShopItem_Bombchus
    ShopItemPrice(2000), // ShopItem_HeartContainer
    ShopItemPrice(1000), // ShopItem_BombBag
    ShopItemPrice(1000), // ShopItem_Quiver
    ShopItemPrice(1000), // ShopItem_BombchuBag
    ShopItemPrice(500),  // ShopItem_ShipPart
    ShopItemPrice(500),  // ShopItem_Treasure
    ShopItemPrice(500),  // ShopItem_PowerGem
    ShopItemPrice(500),  // ShopItem_WisdomGem
    ShopItemPrice(500),  // ShopItem_CourageGem
    ShopItemPrice(80),   // ShopItem_Shield
    ShopItemPrice(50),   // ShopItem_RedPotion
    ShopItemPrice(150),  // ShopItem_PurplePotion
    ShopItemPrice(150),  // ShopItem_YellowPotion
};

static const char *sShopItemModelPaths[ShopItem_COUNT_WITH_UPGRADES] = {
    [ShopItem_Test]            = "Player/get/gd_test.nsbmd",
    [ShopItem_SoldOut]         = "Player/get/soldboard.nsbmd",
    [ShopItem_Bombs]           = "Player/get/gd_bmset.nsbmd",
    [ShopItem_Arrows]          = "Player/get/gd_arrowset.nsbmd",
    [ShopItem_Bombchus]        = "Player/get/gd_bomchu.nsbmd",
    [ShopItem_HeartContainer]  = "Player/get/gd_heart_utu.nsbmd",
    [ShopItem_BombBag]         = "Player/get/gd_bmbagM.nsbmd",
    [ShopItem_Quiver]          = "Player/get/gd_arrowpod.nsbmd",
    [ShopItem_BombchuBag]      = "Player/get/gd_bcbagM.nsbmd",
    [ShopItem_ShipPart]        = "Player/get/gd_ship.nsbmd",
    [ShopItem_Treasure]        = "Player/get/gd_test.nsbmd",
    [ShopItem_PowerGem]        = "Player/get/gd_minaY.nsbmd",
    [ShopItem_WisdomGem]       = "Player/get/gd_minaP.nsbmd",
    [ShopItem_CourageGem]      = "Player/get/gd_minaC.nsbmd",
    [ShopItem_Shield]          = "Player/get/gd_shA.nsbmd",
    [ShopItem_RedPotion]       = "Player/get/gd_rev_bin.nsbmd",
    [ShopItem_PurplePotion]    = "Player/get/gd_rev_binP.nsbmd",
    [ShopItem_YellowPotion]    = "Player/get/gd_rev_binY.nsbmd",
    [ShopItem_LargeBombBag]    = "Player/get/gd_bmbagL.nsbmd",
    [ShopItem_LargeQuiver]     = "Player/get/gd_arrowpodL.nsbmd",
    [ShopItem_LargeBombchuBag] = "Player/get/gd_bcbagL.nsbmd",
};

static const char *sShopItemTexturePaths[ShopItem_COUNT_WITH_UPGRADES] = {
    [ShopItem_Test]            = "Player/get/gd_test.nsbtx",
    [ShopItem_SoldOut]         = "Player/get/soldboard.nsbtx",
    [ShopItem_Bombs]           = "Player/get/gd_bmset.nsbtx",
    [ShopItem_Arrows]          = "Player/get/gd_arrowset.nsbtx",
    [ShopItem_Bombchus]        = "Player/get/gd_bomchu.nsbtx",
    [ShopItem_HeartContainer]  = "Player/get/gd_heart_utu.nsbtx",
    [ShopItem_BombBag]         = "Player/get/gd_bmbagM.nsbtx",
    [ShopItem_Quiver]          = "Player/get/gd_arrowpod.nsbtx",
    [ShopItem_BombchuBag]      = "Player/get/gd_bcbagM.nsbtx",
    [ShopItem_ShipPart]        = "Player/get/gd_ship.nsbtx",
    [ShopItem_Treasure]        = "Player/get/gd_test.nsbtx",
    [ShopItem_PowerGem]        = "Player/get/gd_minaY.nsbtx",
    [ShopItem_WisdomGem]       = "Player/get/gd_minaP.nsbtx",
    [ShopItem_CourageGem]      = "Player/get/gd_minaC.nsbtx",
    [ShopItem_Shield]          = "Player/get/gd_shA.nsbtx",
    [ShopItem_RedPotion]       = "Player/get/gd_rev_bin.nsbtx",
    [ShopItem_PurplePotion]    = "Player/get/gd_rev_binP.nsbtx",
    [ShopItem_YellowPotion]    = "Player/get/gd_rev_binY.nsbtx",
    [ShopItem_LargeBombBag]    = "Player/get/gd_bmbagL.nsbtx",
    [ShopItem_LargeQuiver]     = "Player/get/gd_arrowpodL.nsbtx",
    [ShopItem_LargeBombchuBag] = "Player/get/gd_bcbagL.nsbtx",
};

static FileEntryFlag *sShopItemModelFiles[ShopItem_BASE_COUNT];
static FileEntryFlag *sShopItemTextureFiles[ShopItem_BASE_COUNT];
static FileEntryFlag *sShopItemShipModelFile;
static FileEntryFlag *sShopItemShipTextureFile;
static FileEntryFlag *sShopItemShip2ModelFile;
static FileEntryFlag *sShopItemShip2TextureFile;
static ModelRender *sSoldOutModel;
static ModelRender *sShipModel;
static ModelRender *sShip2Model;

extern u32 **data_027e0fe0[];

ARM ActorShopItemDM *ActorShopItemDM::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemDM();
}

ARM ActorShopItemSoldOut *ActorShopItemSoldOut::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemSoldOut();
}

ARM ActorShopItemHeartContainer *ActorShopItemHeartContainer::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemHeartContainer();
}

ARM ActorShopItemArrows *ActorShopItemArrows::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemArrows();
}

ARM ActorShopItemBombs *ActorShopItemBombs::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombs();
}

ARM ActorShopItemBombchus *ActorShopItemBombchus::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombchus();
}

ARM ActorShopItemQuiver *ActorShopItemQuiver::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemQuiver();
}

ARM ActorShopItemBombBag *ActorShopItemBombBag::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombBag();
}

ARM ActorShopItemBombchuBag *ActorShopItemBombchuBag::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBombchuBag();
}

ARM ActorShopItemTreasure *ActorShopItemTreasure::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemTreasure();
}

ARM ActorShopItemShipPart *ActorShopItemShipPart::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemShipPart();
}

ARM ActorShopItemGem *ActorShopItemGem::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemGem();
}

ARM ActorShopItemShield *ActorShopItemShield::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemShield();
}

ARM ActorShopItemPotion *ActorShopItemPotion::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemPotion();
}

ARM ActorShopItemBK *ActorShopItemBK::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBK();
}

ARM ActorShopItemCC *ActorShopItemCC::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemCC();
}

ARM ActorShopItemBY *ActorShopItemBY::Create() {
    return new(*data_027e0fe0[0], 4) ActorShopItemBY();
}

extern "C" s32 func_ov000_020bd728(FileEntry *, FileEntry *, unk32, unk32);
extern "C" s32 *func_0201e24c(s32, const char *);
ARM static ModelRender *func_ov031_0217dfec(FileEntry *param_1, FileEntry *param_2, const char *param_3) {
    s32 temp_r0;
    s32 temp_r4;

    temp_r0 = func_ov000_020bd728(param_1, param_2, 1, 0);
    temp_r4 = *func_0201e24c(temp_r0 + 8, param_3);
    return new(data_027e0ce0[1], 4) ModelRender((ItemModel *) (temp_r0 + temp_r4));
}

ARM static void func_ov031_0217e040() {
    s32 i;
    const char *modelPath;
    const char *texturePath;

    for (i = 0; i < ShopItem_BASE_COUNT; ++i) {
        if (i == ShopItem_BombBag && gItemManager->mBombBagSize == 1) {
            modelPath   = sShopItemModelPaths[ShopItem_LargeBombBag];
            texturePath = sShopItemTexturePaths[ShopItem_LargeBombBag];
        } else if (i == ShopItem_Quiver && gItemManager->mQuiverSize == 1) {
            modelPath   = sShopItemModelPaths[ShopItem_LargeQuiver];
            texturePath = sShopItemTexturePaths[ShopItem_LargeQuiver];
        } else if (i == ShopItem_BombchuBag && gItemManager->mBombchuBagSize == 1) {
            modelPath   = sShopItemModelPaths[ShopItem_LargeBombchuBag];
            texturePath = sShopItemTexturePaths[ShopItem_LargeBombchuBag];
        } else {
            modelPath   = sShopItemModelPaths[i];
            texturePath = sShopItemTexturePaths[i];
        }

        sShopItemModelFiles[i]   = new(data_027e0ce0[1], 4) FileEntryFlag(modelPath);
        sShopItemTextureFiles[i] = new(data_027e0ce0[1], 4) FileEntryFlag(texturePath);
    }

    sShopItemShipModelFile    = new(data_027e0ce0[1], 4) FileEntryFlag("Player/get/gd_ship.nsbmd");
    sShopItemShipTextureFile  = new(data_027e0ce0[1], 4) FileEntryFlag("Player/get/gd_ship.nsbtx");
    sShopItemShip2ModelFile   = new(data_027e0ce0[1], 4) FileEntryFlag("Player/get/gd_ship02.nsbmd");
    sShopItemShip2TextureFile = new(data_027e0ce0[1], 4) FileEntryFlag("Player/get/gd_ship02.nsbtx");
    sSoldOutModel =
        func_ov031_0217dfec(sShopItemModelFiles[ShopItem_SoldOut], sShopItemTextureFiles[ShopItem_SoldOut], "soldboard");
}

ARM static void func_ov031_0217e2b4() {
    FileEntryFlag *temp_r0;
    FileEntryFlag *temp_r0_2;
    s32 i;

    for (i = 0; i < ShopItem_BASE_COUNT; ++i) {
        delete sShopItemModelFiles[i];
        sShopItemModelFiles[i] = NULL;
        delete sShopItemTextureFiles[i];
        sShopItemTextureFiles[i] = NULL;
    }
    delete sShopItemShipModelFile;
    sShopItemShipModelFile = NULL;
    delete sShopItemShipTextureFile;
    sShopItemShipTextureFile = NULL;
    delete sShopItemShip2ModelFile;
    sShopItemShip2ModelFile = NULL;
    delete sShopItemShip2TextureFile;
    sShopItemShip2TextureFile = NULL;
    delete sSoldOutModel;
    sSoldOutModel = NULL;
}

ARM ActorShopItemBase::ActorShopItemBase() :
    mShopItemId(0),
    mUnk_15c(0),
    mUnk_15d(0),
    mUnk_15e(0) {}

ARM ActorShopItem::ActorShopItem() :
    mModel(NULL),
    mItemId(ItemId_None),
    mUnk_168(0),
    mUnk_16a(0),
    mUnk_16c(0),
    mUnk_16e(0),
    mUnk_170(0),
    mUnk_172(0),
    mUnk_174(0),
    mUnk_175(0) {}

extern "C" void func_ov000_02079f3c(void *, unk32, unk32, unk32, unk32, u8, unk32);
ARM ActorShopItemShipPart::ActorShopItemShipPart() :
    mUnk_17c(NULL),
    mUnk_180(-1) {
    static unk32 unk1 = 0x4000;
    static unk32 unk2 = 0x1000;
    static unk32 unk3 = 0xc00;
    static unk32 unk4 = 0x500;
    static u8 unk5    = 0;
    mUnk_17c          = new(data_027e0ce0[1], 4) ActorShopItemCollectable_Unk1();
    func_ov000_02079f3c(mUnk_17c, unk1, unk2, unk3, unk4, unk5, 0);
}

extern "C" void func_ov000_02079f5c(void *, unk32, unk32, unk32, unk32, u8, unk32);
ARM ActorShopItemTreasure::ActorShopItemTreasure() :
    mUnk_178(NULL),
    mUnk_17c(-1) {
    static unk32 unk1 = 0x4000;
    static unk32 unk2 = 0x1000;
    static unk32 unk3 = 0xc00;
    static unk32 unk4 = 0x500;
    static u8 unk5    = 0;
    mUnk_178          = new(data_027e0ce0[1], 4) ActorShopItemCollectable_Unk1();
    func_ov000_02079f5c(mUnk_178, unk1, unk2, unk3, unk4, unk5, 0);
}
ARM ActorShopItemUnk::ActorShopItemUnk() :
    mUnk_160(128),
    mUnk_164(0) {}

ARM ActorShopItemBY::ActorShopItemBY() {}

ARM ActorShopItemBase::~ActorShopItemBase() {}

ARM ActorShopItem::~ActorShopItem() {
    if (mModel != NULL) {
        delete mModel;
        mModel = NULL;
    }
}

ARM ActorShopItemSoldOut::~ActorShopItemSoldOut() {
    mModel = NULL;
}

ARM ActorShopItemShipPart::~ActorShopItemShipPart() {
    void **temp_r0;
    void *temp_r5;

    delete mUnk_17c;
    mUnk_17c = NULL;
    // delete mUnk_178; // virtual destructor call
    // mUnk_178 = NULL;
    // mModel   = NULL;
    // if (AT_792.unk2C4 != NULL) {
    //     if (AT_792.unk2C4 != NULL) {
    //         (*AT_792.unk2C4)->unk4();
    //     }
    //     AT_792.unk2C4 = NULL;
    // }
    // if (AT_792.unk2C8 != NULL) {
    //     if (AT_792.unk2C8 != NULL) {
    //         (*AT_792.unk2C8)->unk4();
    //     }
    //     AT_792.unk2C8 = NULL;
    // }
    // _ZN13ActorShopItemD2Ev(arg0);
    // return arg0;
}

ARM ActorShopItemTreasure::~ActorShopItemTreasure() {}

ARM void ActorShopItem::vfunc_d4() {
    static const char sShopItemBaseNames[ShopItem_FULL_COUNT][16] = {
        [ShopItem_Test]            = "gd_test",
        [ShopItem_SoldOut]         = "soldboard",
        [ShopItem_Bombs]           = "gd_bmset",
        [ShopItem_Arrows]          = "gd_arrowset",
        [ShopItem_Bombchus]        = "gd_bomchu",
        [ShopItem_HeartContainer]  = "gd_heart_utu",
        [ShopItem_BombBag]         = "gd_bmbagM",
        [ShopItem_Quiver]          = "gd_arrowpod",
        [ShopItem_BombchuBag]      = "gd_bcbagM",
        [ShopItem_ShipPart]        = "gd_ship",
        [ShopItem_Treasure]        = "gd_test",
        [ShopItem_PowerGem]        = "gd_minaY",
        [ShopItem_WisdomGem]       = "gd_minaP",
        [ShopItem_CourageGem]      = "gd_minaC",
        [ShopItem_Shield]          = "gd_shA",
        [ShopItem_RedPotion]       = "gd_rev_bin",
        [ShopItem_PurplePotion]    = "gd_rev_binP",
        [ShopItem_YellowPotion]    = "gd_rev_binY",
        [ShopItem_LargeBombBag]    = "gd_bmbagL",
        [ShopItem_LargeQuiver]     = "gd_arrowpodL",
        [ShopItem_LargeBombchuBag] = "gd_bcbagL",
        [ShopItem_21]              = "gd_ship",
        [ShopItem_22]              = "gd_ship02",
    };

    const char *baseName;
    ShopItem id = mShopItemId;
    if ((id == 6) && (gItemManager->mBombBagSize == 1)) {
        baseName = sShopItemBaseNames[ShopItem_LargeBombBag];
    } else if ((id == 7) && (gItemManager->mQuiverSize == 1)) {
        baseName = sShopItemBaseNames[ShopItem_LargeQuiver];
    } else if ((id == 8) && (gItemManager->mBombchuBagSize == 1)) {
        baseName = sShopItemBaseNames[ShopItem_LargeBombchuBag];
    } else {
        baseName = sShopItemBaseNames[id];
    }
    mModel = func_ov031_0217dfec(sShopItemModelFiles[id], sShopItemTextureFiles[id], baseName);
}

ARM void ActorShopItemDM::vfunc_d4() {
    mModel   = NULL;
    mUnk_175 = 1;
    mVisible = false;
}

ARM void ActorShopItemSoldOut::vfunc_d4() {
    mModel   = sSoldOutModel;
    mUnk_175 = 1;
}

extern ItemModel **data_027e1058;
extern "C" ItemModel *func_ov009_0211c020(ItemModel **, unk32, unk32, unk32, ActorShopItemCollectable_Unk1 *);
ARM void ActorShopItemShipPart::vfunc_d4() {
    ItemModel **dVar1 = data_027e1058;
    unk32 uVar2       = this->func_ov031_02180248();
    unk32 uVar3       = this->func_ov031_02180260();
    ItemModel *pIVar4 = func_ov009_0211c020(dVar1, uVar2, uVar3, 0, mUnk_17c);
    mUnk_178          = new(data_027e0ce0[1], 4) ModelRender(pIVar4);
    if (sShipModel == NULL) {
        sShipModel = func_ov031_0217dfec(sShopItemShipModelFile, sShopItemShipTextureFile, "gd_ship");
    }
    mModel = sShipModel;
    if (sShip2Model == NULL) {
        sShip2Model = func_ov031_0217dfec(sShopItemShip2ModelFile, sShopItemShip2TextureFile, "gd_ship02");
    }
}

extern ItemModel **data_027e105c;
extern "C" ItemModel *LoadTreasureItemFanfare(ItemModel **, unk32, unk32, ActorShopItemCollectable_Unk1 *);
ARM void ActorShopItemTreasure::vfunc_d4() {
    ItemModel **dVar1   = data_027e105c;
    unk32 treasureIndex = ActorShopItemTreasure::func_ov031_02180278();
    ItemModel *pIVar2   = LoadTreasureItemFanfare(dVar1, treasureIndex, 0, mUnk_178);
    mModel              = new(data_027e0ce0[1], 4) ModelRender(pIVar2);
}

ARM bool ActorShopItemBase::Init() {
    return Actor::Init();
}

ARM bool ActorShopItem::Init() {
    this->vfunc_d4();
    return ActorShopItemBase::Init();
}

ARM bool ActorShopItemDM::Init() {
    mShopItemId = ShopItem_Test;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemSoldOut::Init() {
    mShopItemId = ShopItem_SoldOut;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemHeartContainer::Init() {
    mShopItemId = ShopItem_HeartContainer;
    mItemId     = ItemId_HeartContainer;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemArrows::Init() {
    mShopItemId = ShopItem_Arrows;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemQuiver::Init() {
    mShopItemId = ShopItem_Quiver;
    mItemId     = ItemId_Quiver;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemBombs::Init() {
    mShopItemId = ShopItem_Bombs;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemBombBag::Init() {
    mShopItemId = ShopItem_BombBag;
    mItemId     = ItemId_BigBombBag;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemBombchus::Init() {
    mShopItemId = ShopItem_Bombchus;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemBombchuBag::Init() {
    mShopItemId = ShopItem_BombchuBag;
    mItemId     = ItemId_BigBombchuBag;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemShipPart::Init() {
    mUnk_180    = mUnk_140;
    mShopItemId = ShopItem_ShipPart;
    mItemId     = ItemId_Unk_43;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemTreasure::Init() {
    mUnk_17c    = mUnk_140;
    mShopItemId = ShopItem_Treasure;
    mItemId     = this->func_ov031_02180278() + ItemId_TREASURE_START;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemGem::Init() {
    switch (mUnk_140) {
        case Gem_Power:
            mItemId     = ItemId_PowerGem;
            mShopItemId = ShopItem_PowerGem;
            break;
        case Gem_Wisdom:
            mItemId     = ItemId_WisdomGem;
            mShopItemId = ShopItem_WisdomGem;
            break;
        case Gem_Courage:
            mItemId     = ItemId_CourageGem;
            mShopItemId = ShopItem_CourageGem;
            break;
    }
    return ActorShopItem::Init();
}

ARM bool ActorShopItemShield::Init() {
    mShopItemId = ShopItem_Shield;
    mItemId     = ItemId_WoodenShield;
    return ActorShopItem::Init();
}

ARM bool ActorShopItemPotion::Init() {
    switch (mUnk_140) {
        case Potion_Yellow - 1:
            mShopItemId = ShopItem_YellowPotion;
            mItemId     = ItemId_YellowPotion;
            break;
        case Potion_Purple - 1:
            mShopItemId = ShopItem_PurplePotion;
            mItemId     = ItemId_PurplePotion;
            break;
        case Potion_Red - 1:
        default:
            mShopItemId = ShopItem_RedPotion;
            mItemId     = ItemId_RedPotion;
            break;
    }
    return ActorShopItem::Init();
}

ARM bool ActorShopItemUnk::Init() {
    mShopItemId = ShopItem_Unk;
    return ActorShopItemBase::Init();
}

ARM void ActorShopItemBase::vfunc_14(u32 param1) {
    if (this->func_ov00_020c313c(param1)) {
        mUnk_15e = false;
        if (!mUnk_15c && this->vfunc_b4()) {
            mUnk_15d = true;
        } else if (mUnk_15d == true && !gTouchControl.mTouch) {
            mUnk_15d = false;
            mUnk_15e = true;
        }
        mUnk_15c = gTouchControl.mTouch;
    }
    mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
}

extern "C" UnkStruct_ov031_02183e80 *func_ov031_0217bdb8();

ARM void ActorShopItem::vfunc_14(u32 param1) {
    Vec3p subroutine_arg0;
    Vec3p sp24;
    Vec3p *temp_r0;
    Vec3p *temp_r0_2;
    UnkStruct_027e0f64_04 *temp_r3;

    if ((this->func_ov00_020c313c(param1) != 0) && (func_ov031_0217bdb8()->mUnk_19a == 0)) {
        temp_r3 = data_027e0f64->mUnk_8;
        sp24    = temp_r3->mUnk_260;
        sp24.y  = FLOAT_TO_Q20(2.3);
        sp24.z -= FLOAT_TO_Q20(0.45);
        subroutine_arg0 = sp24;
        Vec3p_Sub(&subroutine_arg0, &mUnk_014, &subroutine_arg0);
        Vec3p_Normalize(&subroutine_arg0, &subroutine_arg0);
        if (mUnk_174 == 1) {
            Vec3p_Scale(&subroutine_arg0, FLOAT_TO_Q20(0.25));
            temp_r0 = &mPos;
            Vec3p_Add(temp_r0, &subroutine_arg0, temp_r0);
            if (mPos.y >= sp24.y) {
                mPos = sp24;
            }
        } else {
            Vec3p_Scale(&subroutine_arg0, -FLOAT_TO_Q20(0.25));
            temp_r0_2 = &mPos;
            Vec3p_Add(temp_r0_2, &subroutine_arg0, temp_r0_2);
            if (mPos.y <= mUnk_014.y) {
                mPos = mUnk_014;
            }
        }
    }
    ActorShopItemBase::vfunc_14(param1);
}

ARM void ActorShopItemShipPart::vfunc_14(u32 param1) {
    if (func_ov031_0217bdb8()->mUnk_19a != 0 && mUnk_174 == true) {
        mModel = mUnk_178;
        mPos.x = 0;
        mPos.y = FLOAT_TO_Q20(10.0);
        mPos.z = 0;
    } else {
        mModel = sShipModel;
    }
    ActorShopItem::vfunc_14(param1);
}

ARM void ActorShopItemUnk::vfunc_14(u32 param1) {
    if (this->func_ov00_020c313c(param1)) {
        if (mUnk_164) {
            mUnk_160 -= 0x10;
            if (mUnk_160 < 0) {
                mUnk_160 = 0;
            }
        } else {
            mUnk_160 += 0x10;
            if (mUnk_160 > 0x80) {
                mUnk_160 = 0x80;
            }
        }
    }
    ActorShopItemBase::vfunc_14(param1);
}

ARM void ActorShopItemBase::vfunc_18(u32 param1) {
    this->vfunc_14(param1);
}

ARM void ActorShopItem::vfunc_c8() {
    this->func_ov031_0217f0b4();
}

ARM void ActorShopItem::vfunc_cc() {}

ARM void ActorShopItem::func_ov031_0217f0b4() {
    if (!mUnk_175) {
        return;
    }
    q20 z       = mUnk_014.z;
    q20 y       = mUnk_014.y;
    q20 x       = mUnk_014.x;
    mPos.x      = x;
    mPos.y      = y;
    mPos.z      = z;
    mUnk_174    = false;
    mShopItemId = ShopItem_SoldOut;
}

ARM u32 ActorShopItem::GetPitch() {
    return data_027e0c54.mUnk_0 ? 0xdd28 : 0;
}

ARM u32 ActorShopItem::GetYaw() {
    return 0;
}

ARM static void func_ov031_0217f114(void *self) {
    ((ActorShopItem *) self)->func_ov031_0217f120();
}

extern "C" void func_020197bc(void *, unk32);
ARM void ActorShopItem::func_ov031_0217f120() {
    unk32 uVar1;
    void *lcdc;
    ModelRender *model;
    Vec3p scale;
    Mat3p rotation;
    Mat3p rz;
    Mat3p ry;
    Mat3p rx;

    model = mShopItemId == ShopItem_SoldOut ? sSoldOutModel : mModel;
    uVar1 = data_ov000_020e9360.func_ov000_02079e68(2);
    lcdc  = mModel->GetLcdcAddress();
    func_020197bc(lcdc, uVar1);
    if (mUnk_174 == true) {
        mUnk_168 = *(vu16 *) &mUnk_168;
        mUnk_16a = *(vu16 *) &mUnk_16a;
        mUnk_16c = *(vu16 *) &mUnk_16c;
        mUnk_16e = *(vu16 *) &mUnk_16e;
        mUnk_170 += 400;
        mUnk_172 = *(vu16 *) &mUnk_172;
    } else {
        mUnk_168 = 0;
        mUnk_16a = 0;
        mUnk_16c = 0;
        mUnk_16e = 0;
        mUnk_170 = 0;
        mUnk_172 = 0;
    }

    Mat3p_InitIdentity(&rotation);

    Mat3p_InitXRotation(&rx, SIN(mUnk_168), COS(mUnk_168));
    Mat3p_Multiply(&rx, &rotation, &rotation);
    Mat3p_InitYRotation(&ry, SIN(mUnk_16a), COS(mUnk_16a));
    Mat3p_Multiply(&ry, &rotation, &rotation);
    Mat3p_InitZRotation(&rz, SIN(mUnk_16c), COS(mUnk_16c));
    Mat3p_Multiply(&rz, &rotation, &rotation);

    Mat3p_InitYRotation(&ry, SIN(this->GetYaw()), COS(this->GetYaw()));
    Mat3p_Multiply(&ry, &rotation, &rotation);
    Mat3p_InitXRotation(&rx, SIN(this->GetPitch()), COS(this->GetPitch()));
    Mat3p_Multiply(&rx, &rotation, &rotation);

    Mat3p_InitXRotation(&rx, SIN(mUnk_16e), COS(mUnk_16e));
    Mat3p_Multiply(&rx, &rotation, &rotation);
    Mat3p_InitYRotation(&ry, SIN(mUnk_170), COS(mUnk_170));
    Mat3p_Multiply(&ry, &rotation, &rotation);
    Mat3p_InitZRotation(&rz, SIN(mUnk_172), COS(mUnk_172));
    Mat3p_Multiply(&rz, &rotation, &rotation);

    scale.x = FLOAT_TO_Q20(1.6);
    scale.y = FLOAT_TO_Q20(1.6);
    scale.z = FLOAT_TO_Q20(1.6);

    model->SetTransform(&scale, &rotation, &mPos);
}

ARM void ActorShopItem::vfunc_20(bool param1) {
    if (data_027e0c54.mUnk_0 && !param1) {
        return;
    }
    if (!mVisible) {
        return;
    }
    data_ov000_020e9c88.func_ov000_0207b89c(param1, &mPos, &func_ov031_0217f114, this);
}

extern "C" unk32 func_ov031_0217bda0();
extern "C" unk32 func_ov031_0217bdac();
extern "C" void CopySingle288(void *src, void *dest);
extern "C" void func_ov009_0211d090(Vec3p *, Vec3p *);
extern "C" void func_ov009_0211d00c(Mat3p *, Vec3p *);
ARM void ActorShopItemShipPart::vfunc_20(bool param1) {

    if (data_027e0c54.mUnk_0 && !param1) {
        return;
    }
    if (mUnk_174 == true && mModel == mUnk_178) {
        func_ov031_0217bdb8();
        unk32 size                  = func_ov031_0217bda0();
        UnkStruct_027e0f64_04 *unk1 = data_027e0f64->func_ov000_0208b180();
        Mat4x3p MStack_44           = unk1->mUnk_01c;
        Mat3p tempMatrix;
        CopySingle288(&MStack_44, &tempMatrix);
        Mat3p rotation2;
        Mat3p_func_01ff83a0(&tempMatrix, &rotation2);
        func_ov031_0217bdb8();
        Vec3p translation;
        translation.z = -func_ov031_0217bdac();
        translation.x = 0;
        translation.y = 0;
        Mat3p_MultiplyVec(&translation, &rotation2, &translation);
        Vec3p_Add(&translation, &unk1->mUnk_260, &translation);
        Vec3p scale2;
        scale2.x = size;
        scale2.y = size;
        scale2.z = size;
        sShip2Model->SetTransform(&scale2, &rotation2, &translation);

        Vec3p tempVec = func_ov031_0217bdb8()->mUnk_178;
        translation   = tempVec;
        Vec3p_Add(&mPos, &translation, &translation);
        Vec3p scale;
        func_ov009_0211d090(&scale, &tempVec);
        Mat3p rotation;
        func_ov009_0211d00c((Mat3p *) &rotation, &tempVec);
        mModel->SetTransform(&scale, (Mat3p *) &rotation, &translation);
    } else {
        ActorShopItem::vfunc_20(param1);
    }
}

ARM void ActorShopItemDM::vfunc_20(bool param1) {}

ARM void ActorShopItemUnk::vfunc_20(bool param1) {}

extern "C" void func_020349cc(unk32, unk32, unk32, unk32, unk32, unk32);
extern "C" void func_0203493c(unk32, unk32, unk32, unk32, unk32);
ARM void ActorShopItemBK::vfunc_1c(u16 *param1) {
    if (data_027e0e28.func_ov000_0207bc48() == 0) {
        return;
    }
    if (mUnk_160 >= 0x40) {
        return;
    }
    if ((*param1 & 2) == 0) {
        return;
    }
    if (mUnk_15d && this->vfunc_b4()) {
        func_020349cc(0x5c, 4, 2, 0, mUnk_160 + 4, 0);
    } else {
        func_0203493c(0x5c, 2, 0, mUnk_160, 0);
    }
}

ARM void ActorShopItemCC::vfunc_1c(u16 *param1) {
    if (data_027e0e28.func_ov000_0207bc48() == 0) {
        return;
    }
    if (mUnk_160 >= 0x40) {
        return;
    }
    if ((*param1 & 2) == 0) {
        return;
    }
    if (mUnk_15d && this->vfunc_b4()) {
        func_020349cc(0x5c, 4, 1, 0, mUnk_160 + 4, 0);
    } else {
        func_0203493c(0x5c, 1, 0, mUnk_160, 0);
    }
}

ARM void ActorShopItemBY::vfunc_1c(u16 *param1) {
    if (data_027e0e28.func_ov000_0207bc48() == 0) {
        return;
    }
    if (mUnk_160 >= 0x40) {
        return;
    }
    if ((*param1 & 2) == 0) {
        return;
    }
    if (mUnk_15d && this->vfunc_b4()) {
        func_020349cc(0x5c, 3, 0, 0, mUnk_160 + 4, 0);
    } else {
        func_0203493c(0x5c, 0, 0, mUnk_160, 0);
    }
}

struct UnkStruct_ov031_02183e84 {
    /* 000 */ PAD(0x000, 0x470);
    /* 470 */ unk32 mUnk_470;
    /* 474 */
};
extern UnkStruct_ov031_02183e84 *func_ov031_0217cf1c();
ARM unk32 ActorShopItem::GetSoldOutMessageId() {
    if (func_ov031_0217cf1c()->mUnk_470 == 2) {
        return BMG_ID(BMG_FILE_INDEX_FIELD, 0x57);
    } else {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0xff);
    }
}

ARM unk32 ActorShopItemDM::GetMessageId() {
    return 0;
}

ARM unk32 ActorShopItemSoldOut::GetMessageId() {
    return ActorShopItem::GetSoldOutMessageId();
}

ARM unk32 ActorShopItemHeartContainer::GetMessageId() {
    if (func_ov031_0217cf1c()->mUnk_470 == 2) {
        return BMG_ID(BMG_FILE_INDEX_FIELD, 0x44);
    } else {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x8e);
    }
}

ARM unk32 ActorShopItemArrows::GetMessageId() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x47);
}

ARM unk32 ActorShopItemQuiver::GetMessageId() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x43);
}

ARM unk32 ActorShopItemBombs::GetMessageId() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x42);
}

extern "C" bool HasFreebieCard();
ARM unk32 ActorShopItemBombBag::GetMessageId() {
    unk32 unk = func_ov031_0217cf1c()->mUnk_470;
    if (unk == 2) {
        return BMG_ID(BMG_FILE_INDEX_FIELD, 0x48);
    } else if (HasFreebieCard()) {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0x12d);
    } else {
        return BMG_ID(BMG_FILE_INDEX_SHIP, 0xf8);
    }
}

ARM unk32 ActorShopItemBombchus::GetMessageId() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x45);
}

ARM unk32 ActorShopItemBombchuBag::GetMessageId() {
    switch (func_ov031_0217cf1c()->mUnk_470) {
        case 2:
            return BMG_ID(BMG_FILE_INDEX_FIELD, 0x49);
        case 1:
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x8e);
        case 0:
        default:
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0xf8);
    }
}

ARM unk32 ActorShopItemShipPart::GetMessageId() {
    switch (func_ov031_0217cf1c()->mUnk_470) {
        case 2:
            return BMG_ID(BMG_FILE_INDEX_FIELD, 0x46);
        case 0:
            if (HasFreebieCard()) {
                if (mUnk_180 == 0) {
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x12e);
                } else {
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x12f);
                }
            } else if (mUnk_180 == 0) {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0xf9);
            } else {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0xfa);
            }
        case 1:
            if (mUnk_180 == 0) {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x8f);
            } else {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x90);
            }
        default:
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0xf9);
    }
}

ARM unk32 ActorShopItemTreasure::GetMessageId() {
    switch (func_ov031_0217cf1c()->mUnk_470) {
        case 2:
            return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4a);
        case 0:
            if (HasFreebieCard()) {
                if (mUnk_17c == 0) {
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x130);
                } else {
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x131);
                }
            } else if (mUnk_17c == 0) {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0xfb);
            } else {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0xfc);
            }
        case 1:
            if (mUnk_17c == 0) {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x91);
            } else {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x92);
            }
        default:
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0xfb);
    }
}

ARM unk32 ActorShopItemGem::GetMessageId() {
    switch (func_ov031_0217cf1c()->mUnk_470) {
        case 2:
            return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4b);
        case 0:
            if (HasFreebieCard()) {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x132);
            } else {
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0xfd);
            }
        case 1:
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0x93);
        default:
            return BMG_ID(BMG_FILE_INDEX_SHIP, 0xfd);
    }
}

ARM unk32 ActorShopItemShield::GetMessageId() {
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4c);
}

ARM unk32 ActorShopItemPotion::GetMessageId() {
    int iVar1;

    if (func_ov031_0217cf1c()->mUnk_470 == 2) {
        switch (mShopItemId) {
            case ShopItem_RedPotion:
                return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4d);
            case ShopItem_PurplePotion:
                return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4e);
            case ShopItem_YellowPotion:
                return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4f);
        }
    } else {
        if (HasFreebieCard()) {
            switch (mShopItemId) {
                case ShopItem_RedPotion:
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x10f);
                case ShopItem_PurplePotion:
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x110);
                case ShopItem_YellowPotion:
                    return BMG_ID(BMG_FILE_INDEX_SHIP, 0x111);
            }
        }
        switch (mShopItemId) {
            case ShopItem_RedPotion:
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x10c);
            case ShopItem_PurplePotion:
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x10d);
            case ShopItem_YellowPotion:
                return BMG_ID(BMG_FILE_INDEX_SHIP, 0x10e);
        }
    }
    return BMG_ID(BMG_FILE_INDEX_FIELD, 0x4d);
}

ARM s32 ActorShopItem::GetPrice() {
    return sShopItemPrices[mShopItemId].price;
}

ARM s32 ActorShopItemHeartContainer::GetPrice() {
    if (func_ov031_0217cf1c()->mUnk_470 == 1) {
        return 1500;
    } else {
        return 2000;
    }
}

ARM s32 ActorShopItemPotion::GetPrice() {
    if (func_ov031_0217cf1c()->mUnk_470 != 2) {
        if (mShopItemId == ShopItem_RedPotion) {
            return 80;
        } else {
            return 200;
        }
    }
    return ActorShopItem::GetPrice();
}

extern "C" unk32 func_ov009_0211c980(unk32, unk32);
ARM s32 ActorShopItemShipPart::GetPrice() {
    unk32 uVar1;
    unk32 uVar2;
    int iVar3;
    u16 local_18[4] = {150, 600, 1500, 7000};

    uVar1 = this->func_ov031_02180248();
    uVar2 = this->func_ov031_02180260();
    iVar3 = func_ov009_0211c980(uVar1, uVar2);
    return (int) (short) local_18[iVar3];
}

ARM s32 ActorShopItemTreasure::GetPrice() {
    unk32 unk = mUnk_17c;
    return func_ov031_0217bdb8()->mUnk_038[unk];
}

extern "C" unk32 func_ov031_0217ce6c();
ARM unk32 ActorShopItem::vfunc_c0() {
    s32 price = this->GetPrice();
    func_ov031_0217bdb8();
    unk32 unk = (price * (10 - func_ov031_0217ce6c()) / 10 + 5) / 10 * 10;
    if (unk < 10) {
        unk = 10;
    }
    return unk;
}

ARM void ActorShopItem::vfunc_c4() {
    if (mItemId == ItemId_None) {
        return;
    }
    if (func_ov031_0217bdb8()->func_ov031_0217bd80()) {
        mUnk_175 = true;
    }
}

ARM void ActorShopItemHeartContainer::vfunc_c4() {
    switch (func_ov031_0217cf1c()->mUnk_470) {
        case 2:
            gAdventureFlags->Set(AdventureFlag_Unk_103, true);
            break;
        case 0:
            gAdventureFlags->Set(AdventureFlag_Unk_104, true);
            break;
        case 1:
            gAdventureFlags->Set(AdventureFlag_Unk_104, true);
            break;
        default:
            return;
    }
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemArrows::vfunc_c4() {
    gItemManager->GiveAmmo(ItemFlag_Bow, 10);
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemQuiver::vfunc_c4() {
    gAdventureFlags->Set(AdventureFlag_Unk_107, true);
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemBombs::vfunc_c4() {
    gItemManager->GiveAmmo(ItemFlag_BombBag, 10);
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemBombBag::vfunc_c4() {
    gAdventureFlags->Set(AdventureFlag_Unk_106, true);
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemBombchus::vfunc_c4() {
    gItemManager->GiveAmmo(ItemFlag_BombchuBag, 10);
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemBombchuBag::vfunc_c4() {
    gAdventureFlags->Set(AdventureFlag_Unk_108, true);
    ActorShopItem::vfunc_c4();
}

extern "C" void GiveShipPart(ShipPart part, ShipType type);
ARM void ActorShopItemShipPart::vfunc_c4() {
    ShipPart part = this->func_ov031_02180248();
    ShipType type = this->func_ov031_02180260();
    GiveShipPart(part, type);
    if (func_ov031_0217bdb8()->func_ov031_0217bd80()) {
        data_027e0dbc.func_ov003_020f3d74(mUnk_180 + 8);
    }
    ActorShopItem::vfunc_c4();
}

extern "C" void func_ov009_0211cac0(u32);
ARM void ActorShopItemTreasure::vfunc_c4() {
    unk32 unk = this->func_ov031_02180278();
    func_ov009_0211cac0(unk);
    if (func_ov031_0217bdb8()->func_ov031_0217bd80()) {
        data_027e0dbc.func_ov003_020f3d74(mUnk_17c + 5);
    }
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemGem::vfunc_c4() {
    switch (func_ov031_0217cf1c()->mUnk_470) {
        case 2:
            gAdventureFlags->Set(AdventureFlag_Unk_105, true);
            break;
        case 0:
            gAdventureFlags->Set(AdventureFlag_Unk_109, true);
            break;
        case 1:
            gAdventureFlags->Set(AdventureFlag_Unk_113, true);
            break;
        default:
            return;
    }
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemShield::vfunc_c4() {
    ActorShopItem::vfunc_c4();
}

ARM void ActorShopItemPotion::vfunc_c4() {
    ActorShopItem::vfunc_c4();
}

extern "C" bool func_0202b8f8(Vec3p *, s32, s32, s32, unk8);
ARM bool ActorShopItemBase::vfunc_b4() {
    if (!gTouchControl.mTouch) {
        return false;
    }
    return func_0202b8f8(&mPos, 0x4cd, gTouchControl.mTouchX, gTouchControl.mTouchY, 1);
}

extern "C" bool func_02034b90(unk32, unk32, s32, s32);
ARM bool ActorShopItemBK::vfunc_b4() {
    if (mUnk_160 != 0 || !mUnk_164) {
        return false;
    }
    if (!gTouchControl.mTouch) {
        return false;
    }
    return func_02034b90(0x5c, 2, gTouchControl.mTouchX, gTouchControl.mTouchY);
}

ARM bool ActorShopItemCC::vfunc_b4() {
    if (mUnk_160 != 0 || !mUnk_164) {
        return false;
    }
    if (!gTouchControl.mTouch) {
        return false;
    }
    return func_02034b90(0x5c, 1, gTouchControl.mTouchX, gTouchControl.mTouchY);
}

ARM bool ActorShopItemBY::vfunc_b4() {
    if (mUnk_160 != 0 || !mUnk_164) {
        return false;
    }
    if (!gTouchControl.mTouch) {
        return false;
    }
    return func_02034b90(0x5c, 0, gTouchControl.mTouchX, gTouchControl.mTouchY);
}

ARM bool ActorShopItemBase::vfunc_b8() {
    if (!mUnk_15e) {
        return false;
    }
    return func_0202b8f8(&mPos, 0x4cd, gTouchControl.mTouchLastX, gTouchControl.mTouchLastY, 1);
}

ARM bool ActorShopItemBK::vfunc_b8() {
    if (!mUnk_15e) {
        return false;
    }
    return func_02034b90(0x5c, 2, gTouchControl.mTouchLastX, gTouchControl.mTouchLastY);
}

ARM bool ActorShopItemCC::vfunc_b8() {
    if (!mUnk_15e) {
        return false;
    }
    return func_02034b90(0x5c, 1, gTouchControl.mTouchLastX, gTouchControl.mTouchLastY);
}

ARM bool ActorShopItemBY::vfunc_b8() {
    if (!mUnk_15e) {
        return false;
    }
    return func_02034b90(0x5c, 0, gTouchControl.mTouchLastX, gTouchControl.mTouchLastY);
}

ARM unk32 ActorShopItemShipPart::func_ov031_02180248() {
    s32 unk = mUnk_180;
    return func_ov031_0217bdb8()->mUnk_01c[unk];
}

ARM unk32 ActorShopItemShipPart::func_ov031_02180260() {
    s32 unk = mUnk_180;
    return func_ov031_0217bdb8()->mUnk_024[unk];
}

ARM unk32 ActorShopItemTreasure::func_ov031_02180278() {
    s32 unk = mUnk_17c;
    return func_ov031_0217bdb8()->mUnk_02c[unk];
}

ARM bool ActorShopItemDM::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemSoldOut::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemHeartContainer::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemArrows::vfunc_d0() {
    ItemManager *pItemManager = gItemManager;
    return pItemManager->GetAmmo(ItemFlag_Bow) >= pItemManager->GetMaxAmmo(ItemFlag_Bow);
}

ARM bool ActorShopItemQuiver::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemBombs::vfunc_d0() {
    ItemManager *pItemManager = gItemManager;
    return pItemManager->GetAmmo(ItemFlag_BombBag) >= pItemManager->GetMaxAmmo(ItemFlag_BombBag);
}

ARM bool ActorShopItemBombBag::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemBombchus::vfunc_d0() {
    ItemManager *pItemManager = gItemManager;
    return pItemManager->GetAmmo(ItemFlag_BombchuBag) >= pItemManager->GetMaxAmmo(ItemFlag_BombchuBag);
}

ARM bool ActorShopItemBombchuBag::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemShipPart::vfunc_d0() {
    ItemManager *pItemManager = gItemManager;
    ShipPart part             = this->func_ov031_02180248();
    ShipType type             = this->func_ov031_02180260();
    return pItemManager->GetShipPartCount(part, type) >= pItemManager->GetMaxShipPartCount();
}

ARM bool ActorShopItemTreasure::vfunc_d0() {
    ItemManager *pItemManager = gItemManager;
    Treasure treasure         = this->func_ov031_02180278();
    return pItemManager->GetTreasureCount(treasure) >= pItemManager->GetMaxTreasureCount();
}

ARM bool ActorShopItemGem::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemShield::vfunc_d0() {
    return false;
}

ARM bool ActorShopItemPotion::vfunc_d0() {
    return false;
}

void ActorShopItemUnk::func_ov031_02180418() {
    if (func_ov031_0217bdb8()->func_ov031_0217cec0()) {
        return;
    }
    mUnk_164 = true;
}

ActorShopItemBY::~ActorShopItemBY() {}
ActorShopItemCC::~ActorShopItemCC() {}
ActorShopItemBK::~ActorShopItemBK() {}
ActorShopItemUnk::~ActorShopItemUnk() {}
ActorShopItemPotion::~ActorShopItemPotion() {}
ActorShopItemShield::~ActorShopItemShield() {}
ActorShopItemGem::~ActorShopItemGem() {}
ActorShopItemBombchuBag::~ActorShopItemBombchuBag() {}
ActorShopItemBombchus::~ActorShopItemBombchus() {}
ActorShopItemBombBag::~ActorShopItemBombBag() {}
ActorShopItemBombs::~ActorShopItemBombs() {}
ActorShopItemQuiver::~ActorShopItemQuiver() {}
ActorShopItemArrows::~ActorShopItemArrows() {}
ActorShopItemHeartContainer::~ActorShopItemHeartContainer() {}
ActorShopItemDM::~ActorShopItemDM() {}
