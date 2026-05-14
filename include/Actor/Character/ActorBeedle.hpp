#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Character/ActorItemSeller.hpp"

class ActorBeedle : public ActorItemSellerBase {
public:
    static ActorType gType;

    /* 000 (base) */
    /* 484 */ unk32 mUnk_484;
    /* 488 */ unk32 mUnk_488;
    /* 48c */ unk32 mUnk_48c;
    /* 490 */ bool mUnk_490;
    /* 491 */ PAD(0x491, 0x494);
    /* 494 */

    /* 000 (implicit dtor) */
    /* 008 */ virtual bool Init() override;
    /* 06c */ virtual bool vfunc_6c(unk32 param1) override;
    /* 070 */ virtual bool vfunc_70(unk32 param1) override;
    /* 0c4 */ virtual void vfunc_c4() override;
    /* 0d4 */ virtual unk32 vfunc_d4() override;
    /* 0d8 */ virtual unk8 vfunc_d8(ActorCharacterBase_vfunc_d8 *param1) override;
    /* 0dc */ virtual unk8 vfunc_dc(ActorCharacterBase_vfunc_d8 *param1) override;
    /* 0e0 */ virtual unk8 vfunc_e0(ActorCharacterBase_vfunc_d8 *param1) override;
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
    /* 11c */ virtual bool vfunc_11c() override;

    static ActorBeedle *Create();

    static unk32 func_ov031_021812e4(unk32 param1);
    static void func_ov031_0218132c(unk32 param1);
};
