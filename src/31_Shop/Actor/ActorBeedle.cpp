#include "Actor/ActorManager.hpp"
#include "Actor/ActorShopItem.hpp"
#include "Actor/Character/ActorItemSeller.hpp"
#include "DTCM/UnkStruct_027e0ffc.hpp"
#include "Unknown/UnkStruct_027e0dbc.hpp"

extern "C" {
s32 func_ov003_020f3d9c(UnkStruct_027e0dbc *);
void func_ov003_020f3da4(UnkStruct_027e0dbc *);
void func_ov003_020f3db0(UnkStruct_027e0dbc *);
void *func_ov000_020c4588(void *);
unk32 func_0201e388(void *, const char *);
void func_02019570(void *, unk32, unk32);
bool HasFreebieCard();
bool func_ov031_0217bd88();
}

extern const ActorCharacter_1d8_230 data_ov031_02181ad4;
extern const unk32 data_ov031_02181ac8[];
extern const unk32 data_ov031_02181abc[];
extern const char data_ov031_02181b10[];
extern unk32 data_027e0fec;

ActorBeedle *ActorBeedle::Create() {}

bool ActorBeedle::Init() {
    mUnk_1d8.func_ov014_02145a74(0x9f, 0x9f);
    mUnk_1d8.mUnk_230 = &data_ov031_02181ad4;

    if (*((u8 *) gActorManager + 0x29) != 0) {
        mUnk_470 = 1;
        func_ov014_021451f0(data_ov031_02181ac8);
        s32 value = func_ov003_020f3d9c(&data_027e0dbc);
        if (value < 0) {
            func_ov003_020f3db0(&data_027e0dbc);
        } else if (value >= 9) {
            func_ov003_020f3da4(&data_027e0dbc);
        }
    } else {
        mUnk_470 = 0;
        func_ov014_021451f0(data_ov031_02181abc);
        void *model = func_ov000_020c4588((u8 *) data_027e0fec + 0x22c8);
        unk32 index = func_0201e388((u8 *) model + *(u32 *) ((u8 *) model + 8) + 4, data_ov031_02181b10);
        func_02019570(model, index, 0);
    }

    *((u32 *) ((u8 *) this + 0x484)) = data_027e0dbc.GetUnk_24()->mUnk_0b;
    *((u8 *) this + 0x490)           = 0;
    return ActorItemSellerBase::Init();
}
void ActorBeedle::vfunc_c4() {
    ActorItemSellerBase::vfunc_c4();
    if (!mUnk_1d8.UnkFunc1(4)) {
        return;
    }

    UnkStruct_0202e1a0 state = mUnk_1d8.mUnk_10->mUnk_0c;
    if (state.func_0202e310(0x5000) || state.func_0202e310(0x12000) || state.func_0202e310(0x1f000) ||
        state.func_0202e310(0x2c000) || state.func_0202e310(0x39000) || state.func_0202e310(0x46000) ||
        state.func_0202e310(0x53000)) {
        data_027e0ffc.func_ov000_020ceacc(0x427, &mPos, 0);
    }
}
static unk32 func_ov031_02180e44(unk32 param1, unk32 param2);
unk32 ActorBeedle::vfunc_114(unk32 param1) {}
unk32 ActorBeedle::vfunc_d4() {
    if (mUnk_474 == 4 || mUnk_474 == 6) {
        return func_ov031_02180e44(6, 10);
    }
    if (mUnk_470 == 1) {
        return func_ov031_02180e44(6, 11);
    }
    *((unk32 *) ((u8 *) this + 0x484)) = data_027e0dbc.GetUnk_24()->mUnk_0b;
    return func_ov031_02180e44(6, 6);
}

static unk32 func_ov031_02180e44(unk32 param1, unk32 param2) {
    return (param1 << 16) | param2;
}

unk32 ActorBeedle::GetPromptMessage() {}
unk32 ActorBeedle::GetPurchaseMessage() {}
unk32 ActorBeedle::GetNotEnoughMoneyMessage() {
    return mUnk_470 == 1 ? 0x110097 : 0x110115;
}
unk32 ActorBeedle::GetGoodbyeMessage() {}
unk32 ActorBeedle::GetInventoryFullMessage() {}
ARM unk32 ActorBeedle::vfunc_d8(unk32 param1) {
    unk32 sellerType = func_ov031_021812e4(*(unk32 *) ((u8 *) this + 0x484));
    unk32 selection  = func_ov031_021812e4(data_027e0dbc.GetUnk_24()->mUnk_0b);

    switch (*(u16 *) (param1 + 2)) {
        case 0x0F:
            return (s8) HasFreebieCard();
        case 0x13:
            if (selection >= 4) {
                return 2;
            }
            UnkStruct_ov031_02183e80::GetInstance();
            return (s8) (func_ov031_0217bd88() == 0);
        case 0x27:
            switch (selection) {
                case 0:
                    return 0;
                case 1:
                    return sellerType != selection ? 1 : 2;
                case 2:
                    return sellerType != selection ? 3 : 4;
                case 3:
                    return sellerType != selection ? 5 : 6;
                case 4:
                    return 7;
            }
            break;
        case 0x2B:
            break;
        default:
            goto return_zero;
    }

    switch (data_027e0dbc.func_ov003_020f3d74(*(u16 *) (param1 + 2))) {
        case 0:
            return 8;
        case 1:
            return 0;
        case 2:
            return 1;
        case 3:
            return 2;
        case 4:
            return 3;
        case 5:
            return 4;
        case 6:
            return 5;
        case 7:
            return 6;
        case 8:
            return 7;
        default:
            return 0;
    }

return_zero:
    return 0;
}
unk32 ActorBeedle::vfunc_dc(unk32 param1) {}
unk32 ActorBeedle::vfunc_e0(unk32 param1) {}
bool ActorBeedle::vfunc_70() {}
bool ActorBeedle::vfunc_6c() {}
void ActorBeedle::vfunc_108() {
    this->vfunc_ec(3);
}
void ActorBeedle::vfunc_10c(bool param1) {}
void ActorBeedle::vfunc_110() {}

unk32 ActorBeedle::func_ov031_021812e4(unk32 param1) {
    if (param1 < 0) {
        param1 = *((unk32 *) ((u8 *) ActorItemSellerBase::GetCurrentSeller() + 0x484));
    }
    if (param1 < 0x14) {
        return 0;
    }
    if (param1 < 0x32) {
        return 1;
    }
    if (param1 < 0x64) {
        return 2;
    }
    return param1 < 0xc8 ? 3 : 4;
}
void ActorBeedle::func_ov031_0218132c(unk32 param1) {}

bool ActorBeedle::vfunc_11c() {
    if (ActorItemSellerBase::GetCurrentSeller()->mUnk_470 != 0) {
        return false;
    }
    return *((u32 *) ((u8 *) this + 0x484)) != data_027e0dbc.GetUnk_24()->mUnk_0b;
}
bool ActorBeedle::vfunc_118() {
    *((u8 *) this + 0x490) = 0;
    return data_027e0e28.func_ov018_02160a54(3);
}
ActorBeedle::~ActorBeedle() {}
