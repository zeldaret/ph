#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Actor/ActorType.hpp"

class ActorShopItemBase : public Actor {
public:
    /* 000 (base) */
    /* 158 */ unk32 mUnk_158;
    /* 15c */ unk8 mUnk_15c;
    /* 15d */ unk8 mUnk_15d;
    /* 15e */ unk8 mUnk_15e;
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
    /* 160 */ unk32 mUnk_160;
    /* 164 */ unk32 mUnk_164;
    /* 168 */ unk16 mUnk_168;
    /* 16a */ unk16 mUnk_16a;
    /* 16c */ unk16 mUnk_16c;
    /* 16e */ unk16 mUnk_16e;
    /* 170 */ unk16 mUnk_170;
    /* 172 */ unk16 mUnk_172;
    /* 174 */ unk8 mUnk_174;
    /* 175 */ unk8 mUnk_175;
    /* 178 */

    /* 00 */ virtual ~ActorShopItem() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */ virtual unk32 vfunc_bc() = 0;
    /* c0 */ virtual unk32 vfunc_c0();
    /* c4 */ virtual void vfunc_c4();
    /* c8 */ virtual void vfunc_c8();
    /* cc */ virtual void vfunc_cc();
    /* d0 */ virtual unk32 vfunc_d0() = 0;
    /* d4 */ virtual void vfunc_d4();
    /* d8 */ virtual unk32 vfunc_d8();
    /* dc */ virtual unk32 vfunc_dc();
    /* e0 */ virtual unk32 vfunc_e0();
    /* e4 */

    ActorShopItem();

    void func_ov031_0217f0b4();
    void func_ov031_0217f114();
    void func_ov031_0217f120();
    unk32 func_ov031_0217f868();
};

class ActorShopItemDM : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemDM() override;
    /* 08 */ virtual bool Init() override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */ virtual unk32 vfunc_bc() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e0 */ virtual unk32 vfunc_e0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
    /* e4 */

    static ActorShopItemBombBag *Create();
};

class ActorShopItemB2 : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemB2() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
    /* e4 */

    static ActorShopItemB2 *Create();
};

struct ActorShopItemCollectable_Unk1 {
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e0 */ virtual unk32 vfunc_e0() override;
    /* e4 */

    static ActorShopItemTreasure *Create();
    ActorShopItemTreasure();

    unk32 func_ov031_02180248();
    unk32 func_ov031_02180260();
    unk32 func_ov031_02180278();
};

class ActorShopItemShipPart : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */ unk32 mUnk_178;
    /* 17c */ ActorShopItemCollectable_Unk1 *mUnk_17c;
    /* 180 */ unk32 mUnk_180;
    /* 184 */

    /* 00 */ virtual ~ActorShopItemShipPart() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* e0 */ virtual unk32 vfunc_e0() override;
    /* e4 */

    static ActorShopItemShipPart *Create();
    ActorShopItemShipPart();

    unk32 func_ov031_02180248();
    unk32 func_ov031_02180260();
    unk32 func_ov031_02180278();
};

class ActorShopItemGem : public ActorShopItem {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 178 */

    /* 00 */ virtual ~ActorShopItemGem() override;
    /* 08 */ virtual bool Init() override;
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
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
    /* bc */ virtual unk32 vfunc_bc() override;
    /* c4 */ virtual void vfunc_c4() override;
    /* d0 */ virtual unk32 vfunc_d0() override;
    /* e0 */ virtual unk32 vfunc_e0() override;
    /* e4 */

    static ActorShopItemPotion *Create();
};

class ActorShopItemUnk : public ActorShopItemBase {
public:
    /* 000 (base) */
    /* 160 */ unk32 mUnk_160;
    /* 164 */ unk8 mUnk_164;
    /* 168 */

    /* 00 */ virtual ~ActorShopItemUnk() override;
    /* 08 */ virtual bool Init() override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* bc */

    ActorShopItemUnk();
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
