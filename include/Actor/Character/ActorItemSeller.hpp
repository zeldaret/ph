#pragma once

#include "Actor/ActorShopItem.hpp"
#include "global.h"
#include "types.h"

#include "Actor/ActorType.hpp"
#include "Actor/Character/ActorCharacter.hpp"

class ActorItemSellerBase : public ActorCharacter {
public:
    /* 000 (base) */
    /* 470 */ unk32 mUnk_470;
    /* 474 */ unk32 mUnk_474;
    /* 478 */ unk32 mUnk_478;
    /* 47c */ unk32 mUnk_47c;
    /* 480 */ bool mUnk_480;
    /* 481 */ PAD(0x481, 0x484);
    /* 484 */

    /* 000 */ virtual ~ActorItemSellerBase() override;
    /* 008 */ virtual bool Init() override;
    /* 020 */ virtual void vfunc_20(bool param1) override;
    /* 03c */ virtual bool CollidesWithLink() override;
    /* 040 */ virtual bool IsHitboxTouched(bool param1) override;
    /* 068 */ virtual void vfunc_68(unk32 param1, UnkStruct_020397f8 *param2) override;
    /* 08c */ virtual bool vfunc_8c() override;
    /* 0c0 */ virtual bool vfunc_c0() override;
    /* 0c4 */ virtual void vfunc_c4() override;
    /* 0d4 */ virtual unk32 vfunc_d4() override;
    /* 0f4 */ virtual unk32 GetPromptMessage()           = 0;
    /* 0f8 */ virtual unk32 GetPurchaseMessage()         = 0;
    /* 0fc */ virtual unk32 GetNotEnoughMoneyMessage()   = 0;
    /* 100 */ virtual unk32 GetGoodbyeMessage()          = 0;
    /* 104 */ virtual unk32 GetInventoryFullMessage()    = 0;
    /* 108 */ virtual void vfunc_108()                   = 0;
    /* 10c */ virtual void vfunc_10c(bool param1)        = 0;
    /* 110 */ virtual void vfunc_110()                   = 0;
    /* 114 */ virtual ShopItem GetShopItem(s32 position) = 0;
    /* 118 */ virtual bool vfunc_118()                   = 0;
    /* 11c */ virtual bool vfunc_11c();
    /* 120 */

    ActorItemSellerBase();

    static ActorItemSellerBase *GetCurrentSeller();

    void func_ov031_0217d588();
    void func_ov031_0217d5c0();
    void func_ov031_0217d5c4();
    void func_ov031_0217d5e8();
    void func_ov031_0217d610();
    void func_ov031_0217d62c();
    void func_ov031_0217d638();
    bool func_ov031_0217d6ac();
    void func_ov031_0217d6d0();
    void func_ov031_0217d760();
    void func_ov031_0217d784();
    void func_ov031_0217d7ac();
    void func_ov031_0217d830();
    void func_ov031_0217d858();
    void func_ov031_0217d890();
    void func_ov031_0217d8d0();
    void func_ov031_0217d8dc();
    void func_ov031_0217d93c();
    void func_ov031_0217d974();

    void func_ov031_0217da20(unk32 param1);
};

class ActorItemSeller : public ActorItemSellerBase {
    /* 000 (base) */
    /* 484 */

    /* 000 (implicit dtor) */
    /* 008 */ virtual bool Init() override;
    /* 0d4 */ virtual unk32 vfunc_d4() override;
    /* 0f4 */ virtual unk32 GetPromptMessage() override;
    /* 0f8 */ virtual unk32 GetPurchaseMessage() override;
    /* 0fc */ virtual unk32 GetNotEnoughMoneyMessage() override;
    /* 100 */ virtual unk32 GetGoodbyeMessage() override;
    /* 104 */ virtual unk32 GetInventoryFullMessage() override;
    /* 108 */ virtual void vfunc_108() override;
    /* 10c */ virtual void vfunc_10c(bool param1) override;
    /* 110 */ virtual void vfunc_110() override;
    /* 114 */ virtual ShopItem GetShopItem(s32 position) override;
    /* 118 */ virtual bool vfunc_118() override;
    /* 120 */
};

namespace ActorItemSeller1 {
    extern ActorType gType;
    ActorItemSeller *Create();
} // namespace ActorItemSeller1

namespace ActorItemSeller2 {
    extern ActorType gType;
    ActorItemSeller *Create();
} // namespace ActorItemSeller2

namespace ActorItemSeller3 {
    extern ActorType gType;
    ActorItemSeller *Create();
} // namespace ActorItemSeller3
