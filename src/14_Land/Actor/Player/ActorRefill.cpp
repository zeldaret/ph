#include "Actor/Player/ActorRefill.hpp"
#include "DTCM/UnkStruct_027e0d38.hpp"
#include "DTCM/UnkStruct_027e103c.hpp"
#include "Item/ItemManager.hpp"
#include "System/Random.hpp"

static char *sShipTypes[8] = {"anc", "bow", "hul", "can", "dco", "pdl", "fnl", "brg"};

extern u32 **data_027e0fe0[];
ARM ActorRefillBombs *ActorRefillBombs::Create() {
    return new(*data_027e0fe0[0], 4) ActorRefillBombs();
}
ActorType ActorRefillBombs::gType = ActorType(ActorTypeId_RefillBombs, (ActorCreateFunc) ActorRefillBombs::Create, NULL);

ARM ActorRefillBombchus *ActorRefillBombchus::Create() {
    return new(*data_027e0fe0[0], 4) ActorRefillBombchus();
}
ActorType ActorRefillBombchus::gType =
    ActorType(ActorTypeId_RefillBombchus, (ActorCreateFunc) ActorRefillBombchus::Create, NULL);

ARM ActorRefillArrows *ActorRefillArrows::Create() {
    return new(*data_027e0fe0[0], 4) ActorRefillArrows();
}
ActorType ActorRefillArrows::gType = ActorType(ActorTypeId_RefillArrows, (ActorCreateFunc) ActorRefillArrows::Create, NULL);

ARM ActorRefillTime *ActorRefillTime::Create() {
    return new(*data_027e0fe0[0], 4) ActorRefillTime();
}
ActorType ActorRefillTime::gType = ActorType(ActorTypeId_RefillTime, (ActorCreateFunc) ActorRefillTime::Create, NULL);

ARM ActorLSTM *ActorLSTM::Create() {
    return new(*data_027e0fe0[0], 4) ActorLSTM();
}
ActorType ActorLSTM::gType = ActorType(ActorTypeId_LSTM, (ActorCreateFunc) ActorLSTM::Create, NULL);

ARM ActorRefill::ActorRefill(unk32 param1) :
    mUnk_158(0),
    mUnk_15c(0x56),
    mUnk_160(param1),
    mUnk_164(0x1f) {}

ARM ActorRefill::~ActorRefill() {}

ARM bool ActorRefill::Init() {
    ItemManager *itemManager;

    if (this->GetAmmoItem() == ItemFlag_None) {
        if (data_027e0d38->func_ov000_02078b40() != 3) {
            return false;
        }
    } else {
        ItemManager *itemManager = gItemManager;
        ItemFlag item            = this->GetAmmoItem();
        if (!itemManager->HasItem(item)) {
            return false;
        }
    }
    mHitbox.pos.x      = 0;
    mHitbox.pos.y      = FLOAT_TO_Q20(0.3);
    mHitbox.pos.z      = 0;
    mHitbox.size       = FLOAT_TO_Q20(0.3);
    mUnk_08c.pos.x     = mHitbox.pos.x;
    mUnk_08c.pos.y     = mHitbox.pos.y;
    mUnk_08c.pos.z     = mHitbox.pos.z;
    mUnk_08c.size      = mHitbox.size;
    mUnk_0a4.mUnk_04.x = 0;
    mUnk_0a4.mUnk_04.y = FLOAT_TO_Q20(0.3);
    mUnk_0a4.mUnk_04.z = 0;
    mUnk_0a4.mUnk_10   = FLOAT_TO_Q20(1.3);
    mUnk_09c.mUnk_0 &= ~0xa4;
    mUnk_09c.mUnk_3 = 1;
    mMaxFall        = mUnk_08c.size + -1;
    this->func_ov014_02135364(0);
    return true;
}

extern unk32 data_ov000_020eec9c;
extern "C" void func_ov000_020d7ad4(unk32 *param1, unk32 param2);
ARM void ActorRefill::vfunc_14(u32 param1) {
    s32 temp_r0_4;
    s32 temp_r6;
    s8 var_r0;
    u32 temp_r0;
    u32 temp_r0_3;
    u32 temp_r1;
    Vec3p *temp_r0_2;

    if (this->func_ov00_020c313c(param1) != 0) {
        this->IncreaseActiveFrames();
        temp_r0 = mUnk_130;
        switch (temp_r0) {
            case 0:
                this->ApplyGravity();
                temp_r0_2 = &mPos;
                Vec3p_Add(temp_r0_2, &mVel, temp_r0_2);
                this->func_01fffd04(0);
                if (mUnk_110 || mUnk_112 || mUnk_113) {
                    mVel.x = 0;
                    mVel.z = 0;
                }
                if (mUnk_111) {
                    this->func_ov014_02135364(1);
                } else if (this->func_ov00_020c2c0c()) {
                    this->func_ov014_02135364(4);
                } else if (this->func_ov00_020c2d54()) {
                    this->func_ov014_02135364(5);
                }
                break;
            case 1:
            case 2:
            case 4:
            case 5:
                if (this->CollidesWithPlayer(PlayerCollide_PickupFlags) != 0) {
                    if (this->GetAmmoItem() == -1) {
                        data_027e103c->func_ov000_020cfbf0(mUnk_158 * 60, 1, 0);
                    } else {
                        ItemManager *itemManager = gItemManager;
                        itemManager->GiveAmmo(this->GetAmmoItem(), mUnk_158);
                    }
                    func_ov000_020d7ad4(&data_ov000_020eec9c, 0x100);
                    this->func_ov014_02135364(3);
                } else {
                    temp_r0_3 = mUnk_130;
                    switch (temp_r0_3) {
                        case 0:
                        case 3: break;
                        case 1:
                            if (this->func_ov00_020c2c0c()) {
                                this->func_ov014_02135364(4);
                            } else if (this->func_ov00_020c2d54()) {
                                this->func_ov014_02135364(5);
                            } else if (mActiveFrames >= 180) {
                                this->func_ov014_02135364(2);
                            }
                            break;
                        case 2:
                            if (mActiveFrames % 8 < 4) {
                                mUnk_164 = 0;
                            } else {
                                mUnk_164 = 31;
                            }
                            if (this->func_ov00_020c2c0c()) {
                                this->func_ov014_02135364(4);
                            } else if (this->func_ov00_020c2d54()) {
                                this->func_ov014_02135364(5);
                            } else if (mActiveFrames >= 60) {
                                this->func_ov014_02135364(3);
                            }
                            break;
                        case 4:
                            if (!this->func_ov00_020c2c70()) {
                                this->func_ov014_02135364(1);
                            }
                            break;
                        case 5:
                            if (!this->func_ov00_020c2de4()) {
                                this->func_ov014_02135364(1);
                            }
                            break;
                    }
                }
                break;
        }
        this->KillInBounds();
    }
    mUnk_0a4.func_ov000_0207a1c8(param1, &mPos);
}

ARM bool ActorRefill::func_ov014_02135364(unk32 param1) {
    mUnk_130      = param1;
    mUnk_164      = 31;
    mActiveFrames = 0;
    switch (mUnk_130) {
        case 0:
        case 2: break;
        case 1:
            mVel.x = 0;
            mVel.y = 0;
            mVel.z = 0;
            break;
        case 3: this->Kill(); break;
    }
    return true;
}

extern "C" void func_0202bc38(bool param1, Vec3p *pos, unk32 param2, Actor_UnkStruct_012 *param3, unk32 param4);
extern u32 data_ov000_020e9370[];
extern "C" void func_ov005_02102c2c(u32 *param_1, int param_2, Vec3p *param_3, int param_4, int param_5, u32 param_6,
                                    int param_7, char param_8, char param_9, char param_10);
ARM void ActorRefill::vfunc_20(bool param1) {
    bool var_r0;

    if (param1) {
        var_r0 = mUnk_0a4.mUnk_01;
    } else {
        var_r0 = mUnk_0a4.mUnk_00;
    }
    if (var_r0 && mUnk_164 != 0) {
        Actor_UnkStruct_012 sp18;
        sp18.mUnk_04 = 5;
        sp18.mUnk_08 = 2;
        sp18.mUnk_0c = 2;
        sp18.mUnk_14 = 0x800;
        sp18.mUnk_18 = 0x1000;
        sp18.mUnk_02 = mUnk_164;
        func_0202bc38(param1, &mPos, mUnk_15c, &sp18, 0);
        func_ov005_02102c2c(&data_ov000_020e9370[0], 0, &mPos, 0x400, 0x400, 0, mUnk_164, 0, 0, 1);
    }
}

extern unk32 *data_027e0e58;
extern "C" void func_ov000_0207c1b0(unk32 *param1, unk32 param2, Vec3p *param3, unk32 param4, unk32 param5, unk32 param6);
ARM void ActorRefill::func_ov014_02135474() {
    s32 iVar1 = mUnk_130;
    if (iVar1 != 4 && iVar1 != 5) {
        func_ov000_0207c1b0(data_027e0e58, 0x241, &mPos, 2, 0, 0);
        func_ov000_0207c1b0(data_027e0e58, 0x242, &mPos, 2, 0, 0);
        mAlive = false;
    }
}

ARM ActorRefillBombs::ActorRefillBombs() :
    ActorRefill(0) {
    mUnk_158 = 3;
    mUnk_15c = 0x2e;
}

ARM ActorRefillBombs::~ActorRefillBombs() {}

ARM ItemFlag ActorRefillBombs::GetAmmoItem() {
    return ItemFlag_BombBag;
}

ARM ActorRefillBombchus::ActorRefillBombchus() :
    ActorRefill(1) {
    mUnk_158 = 3;
    mUnk_15c = 0x2f;
}

ARM ActorRefillBombchus::~ActorRefillBombchus() {}

ARM ItemFlag ActorRefillBombchus::GetAmmoItem() {
    return ItemFlag_BombchuBag;
}

ARM ActorRefillArrows::ActorRefillArrows() :
    ActorRefill(2) {
    mUnk_158 = 5;
    mUnk_15c = 0x2d;
}

ARM ActorRefillArrows::~ActorRefillArrows() {}

ARM ItemFlag ActorRefillArrows::GetAmmoItem() {
    return ItemFlag_Bow;
}

ARM ActorRefillTime::ActorRefillTime() :
    ActorRefill(3) {
    mUnk_158 = 5;
    mUnk_15c = 0x44;
}

ARM ActorRefillTime::~ActorRefillTime() {}

ARM bool ActorRefillTime::Init() {
    if (!ActorRefill::Init()) {
        return false;
    }
    switch (mUnk_020.mUnk_00[0]) {
        case 2: mUnk_158 = 5; break;
        case 4: mUnk_158 = 15; break;
        case 5: mUnk_158 = 30; break;
        default:
        case 0:
        case 1:
        case 3:
            s32 temp_ip = gRandom.Next(10);
            if (temp_ip >= 9) {
                mUnk_158 = 30;
            } else if (temp_ip >= 6) {
                mUnk_158 = 15;
            } else {
                mUnk_158 = 5;
            }
            break;
    }
    switch (mUnk_158) {
        case 15: mUnk_15c = 0x45; break;
        case 30: mUnk_15c = 0x46; break;
        default: mUnk_15c = 0x44; break;
    }
    return true;
}

ARM ItemFlag ActorRefillTime::GetAmmoItem() {
    return ItemFlag_None;
}

ARM ActorLSTM::ActorLSTM() :
    ActorRefill(3) {
    mUnk_158 = -5;
    mUnk_15c = 0x47;
}

ARM ActorLSTM::~ActorLSTM() {}

ARM bool ActorLSTM::Init() {
    if (!ActorRefill::Init()) {
        return false;
    }
    switch (mUnk_020.mUnk_00[0]) {
        case 2: mUnk_158 = -5; break;
        case 4: mUnk_158 = -15; break;
        case 5: mUnk_158 = -30; break;
        default:
        case 0:
        case 1:
        case 3:
            s32 temp_ip = gRandom.Next(10);
            if (temp_ip >= 9) {
                mUnk_158 = -30;
            } else if (temp_ip >= 6) {
                mUnk_158 = -15;
            } else {
                mUnk_158 = -5;
            }
            break;
    }
    switch (mUnk_158) {
        case -15: mUnk_15c = 0x48; break;
        case -30: mUnk_15c = 0x49; break;
        default: mUnk_15c = 0x47; break;
    }
    return true;
}

ARM ItemFlag ActorLSTM::GetAmmoItem() {
    return ItemFlag_None;
}
