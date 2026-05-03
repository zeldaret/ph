#pragma once

#include "Item/Item.hpp"
#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"
#include "Render/ModelRender.hpp"
#include "System/SysNew.hpp"

typedef u32 ShopItem;
enum ShopItem_ {
    ShopItem_Unk                 = -1,
    ShopItem_Test                = 0,
    ShopItem_SoldOut             = 1,
    ShopItem_Bombs               = 2,
    ShopItem_Arrows              = 3,
    ShopItem_Bombchus            = 4,
    ShopItem_HeartContainer      = 5,
    ShopItem_BombBag             = 6,
    ShopItem_Quiver              = 7,
    ShopItem_BombchuBag          = 8,
    ShopItem_ShipPart            = 9,
    ShopItem_Treasure            = 10,
    ShopItem_CourageGem          = 11,
    ShopItem_PowerGem            = 12,
    ShopItem_WisdomGem           = 13,
    ShopItem_Shield              = 14,
    ShopItem_RedPotion           = 15,
    ShopItem_PurplePotion        = 16,
    ShopItem_YellowPotion        = 17,
    ShopItem_BASE_COUNT          = ShopItem_YellowPotion + 1,
    ShopItem_LargeBombBag        = 18,
    ShopItem_LargeQuiver         = 19,
    ShopItem_LargeBombchuBag     = 20,
    ShopItem_COUNT_WITH_UPGRADES = ShopItem_LargeBombchuBag + 1,
    ShopItem_21                  = 21,
    ShopItem_22                  = 22,
    ShopItem_FULL_COUNT          = ShopItem_22 + 1,
};

class ActorShopItemBase : public Actor {
public:
    /* 000 (base) */
    /* 158 */ ShopItem mShopItemId;
    /* 15c */ bool mUnk_15c;
    /* 15d */ bool mUnk_15d;
    /* 15e */ bool mUnk_15e;
    /* 160 */

    /* 00 */ virtual ~ActorShopItemBase() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* b4 */ virtual bool vfunc_b4();
    /* b8 */ virtual bool vfunc_b8();
    /* bc */

    ActorShopItemBase();
};

class ActorShopItem : public ActorShopItemBase {
public:
    /* 000 (base) */
    /* 160 */ ModelRender *mModel;
    /* 164 */ ItemId mItemId;
    /* 168 */ u16 mUnk_168;
    /* 16a */ u16 mUnk_16a;
    /* 16c */ u16 mUnk_16c;
    /* 16e */ u16 mUnk_16e;
    /* 170 */ u16 mUnk_170;
    /* 172 */ u16 mUnk_172;
    /* 174 */ bool mUnk_174;
    /* 175 */ bool mUnk_175;
    /* 178 */

    /* 00 */ virtual ~ActorShopItem() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */ virtual unk32 GetMessageId() = 0;
    /* c0 */ virtual unk32 vfunc_c0();
    /* c4 */ virtual void vfunc_c4();
    /* c8 */ virtual void vfunc_c8();
    /* cc */ virtual void vfunc_cc();
    /* d0 */ virtual bool vfunc_d0() = 0;
    /* d4 */ virtual void vfunc_d4();
    /* d8 */ virtual u32 GetPitch();
    /* dc */ virtual u32 GetYaw();
    /* e0 */ virtual s32 GetPrice();
    /* e4 */

    ActorShopItem();

    void func_ov031_0217f0b4();
    void func_ov031_0217f120();
    unk32 GetSoldOutMessageId();
};

class ActorShopItemDM : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemDM() override;
    /* 08 */ virtual bool Init() override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e4 */

    static ActorShopItemDM *Create();
};

class ActorShopItemSoldOut : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemSoldOut() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e4 */

    static ActorShopItemSoldOut *Create();
};

class ActorShopItemHeartContainer : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemHeartContainer() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e0 */ virtual s32 GetPrice() override;
    /* e4 */

    static ActorShopItemHeartContainer *Create();
};

class ActorShopItemArrows : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemArrows() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemArrows *Create();
};

class ActorShopItemBombs : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemBombs() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemBombs *Create();
};

class ActorShopItemBombchus : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemBombchus() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemBombchus *Create();
};

class ActorShopItemQuiver : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemQuiver() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemQuiver *Create();
};

class ActorShopItemBombBag : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemBombBag() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemBombBag *Create();
};

class ActorShopItemBombchuBag : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemBombchuBag() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemBombchuBag *Create();
};

struct ActorShopItemCollectable_Unk1 : public SysObject {
    /* 00 */ unk32 mUnk_00;
    /* 04 */ unk32 mUnk_04;
    /* 08 */ unk32 mUnk_08;
    /* 0c */ unk32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ unk32 mUnk_1c;
    /* 20 */ unk32 mUnk_20;
    /* 24 */ unk8 mUnk_24;
    /* 25 */ unk8 mUnk_25;
    /* 28 */

    ActorShopItemCollectable_Unk1();
};

class ActorShopItemTreasure : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */ ActorShopItemCollectable_Unk1 *mUnk_178;
    /* 17c */ unk32 mUnk_17c;
    /* 180 */

    /* 00 */ virtual ~ActorShopItemTreasure() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e0 */ virtual s32 GetPrice() override;
    /* e4 */

    static ActorShopItemTreasure *Create();
    ActorShopItemTreasure();

    unk32 func_ov031_02180278();
};

class ActorShopItemShipPart : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */ ModelRender *mUnk_178;
    /* 17c */ ActorShopItemCollectable_Unk1 *mUnk_17c;
    /* 180 */ unk32 mUnk_180;
    /* 184 */

    /* 00 */ virtual ~ActorShopItemShipPart() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e0 */ virtual s32 GetPrice() override;
    /* e4 */

    static ActorShopItemShipPart *Create();
    ActorShopItemShipPart();

    unk32 func_ov031_02180248();
    unk32 func_ov031_02180260();
};

class ActorShopItemGem : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemGem() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemGem *Create();
};

class ActorShopItemShield : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemShield() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e4 */

    static ActorShopItemShield *Create();
};

class ActorShopItemPotion : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemPotion() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 GetMessageId() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual bool vfunc_d0() override;
    /* e0 */ virtual s32 GetPrice() override;
    /* e4 */

    static ActorShopItemPotion *Create();
};

class ActorShopItemUnk : public ActorShopItemBase {
public:
    /* 000 (base) */
    /* 160 */ unk32 mUnk_160;
    /* 164 */ bool mUnk_164;
    /* 168 */

    /* 00 */ virtual ~ActorShopItemUnk();
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */

    ActorShopItemUnk();

    void func_ov031_02180418();
};

class ActorShopItemBK : public ActorShopItemUnk {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

    /* 00 */ virtual ~ActorShopItemBK() override;
    /* 1c */ virtual void vfunc_1c(u16 *param1) override;
    /* b4 */ virtual bool vfunc_b4() override;
    /* b8 */ virtual bool vfunc_b8() override;
    /* bc */

    static ActorShopItemBK *Create();
};

class ActorShopItemCC : public ActorShopItemUnk {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

    /* 00 */ virtual ~ActorShopItemCC() override;
    /* 1c */ virtual void vfunc_1c(u16 *param1) override;
    /* b4 */ virtual bool vfunc_b4() override;
    /* b8 */ virtual bool vfunc_b8() override;
    /* bc */

    static ActorShopItemCC *Create();
};

class ActorShopItemBY : public ActorShopItemUnk {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 168 */

    /* 00 */ virtual ~ActorShopItemBY() override;
    /* 1c */ virtual void vfunc_1c(u16 *param1) override;
    /* b4 */ virtual bool vfunc_b4() override;
    /* b8 */ virtual bool vfunc_b8() override;
    /* bc */

    static ActorShopItemBY *Create();
    ActorShopItemBY();
};

struct UnkStruct_ov031_02183e80 {
    /* 000 */ PAD(0x000, 0x01c);
    /* 01c */ u32 mUnk_01c[2];
    /* 024 */ u32 mUnk_024[2];
    /* 02c */ u32 mUnk_02c[2];
    /* 034 */ PAD(0x34, 0x38);
    /* 038 */ u32 mUnk_038[1]; // at least 1, unclear how many
    /* 03c */ PAD(0x03c, 0x178);
    /* 178 */ Vec3p mUnk_178;
    /* 184 */ PAD(0x184, 0x19a);
    /* 19a */ u8 mUnk_19a;
    /* 19b */

    bool func_ov031_0217bd80();
    bool func_ov031_0217cec0();
};
