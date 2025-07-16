#include "Actor/Dungeon/ActorEventIcon.hpp"
#include "Player/PlayerBase.hpp"
#include "Save/AdventureFlags.hpp"

extern u32 **data_027e0fe0[];
extern void *data_027e0d3c;
extern "C" unk32 func_ov000_02079470(void *, Vec3p *, unk32, unk32, unk32 *, unk32 *, unk32, unk32);

#pragma section sbss begin
ActorType ActorEventIcon::gType = ActorType(ActorTypeId_EventIcon, (ActorCreateFunc) ActorEventIcon::Create, NULL);
#pragma section sbss end

ARM ActorEventIcon *ActorEventIcon::Create() {
    return new(*data_027e0fe0[0], 4) ActorEventIcon();
}

ARM ActorEventIcon::ActorEventIcon() :
    mUnk_158(0),
    mUnk_15c(0) {
    this->mHitbox.pos.x = 0;
    this->mHitbox.pos.y = 0x4000;
    this->mHitbox.pos.z = 0;
    this->mHitbox.size  = 0x4000;

    this->mUnk_08c.pos.x = 0;
    this->mUnk_08c.pos.y = 0x4000;
    this->mUnk_08c.pos.z = 0;
    this->mUnk_08c.size  = 0x4000;
}

ARM bool ActorEventIcon::Init() {
    switch (this->mUnk_144) {
        case 1:
        case 2:
            this->mUnk_15c = 0xFFFFFFF2;
            this->mUnk_160.func_020350b4(3, 3, 0x19, 0, 0);
            this->mUnk_160.func_020351b8(true, false, false, false);
            break;
        default:
            this->mUnk_15c = 0xFFFFFFF4;
            this->mUnk_160.func_020350b4(3, 0, 0x19, 0, 0);
            this->mUnk_160.func_020351b8(false, false, false, false);
            break;
    }

    this->func_ov000_02090774(0);
    return true;
}

ARM void ActorEventIcon::vfunc_14(u32 param1) {
    func_ov000_02090648(param1);
}

ARM void ActorEventIcon::vfunc_18(u32 param1) {
    func_ov000_02090648(param1);
}

ARM void ActorEventIcon::func_ov000_02090648(u32 param1) {
    if (!this->func_ov00_020c313c(param1)) {
        return;
    }

    this->mPrevPos = this->mPos;

    switch (this->mUnk_130) {
        case 0:
            switch (this->mUnk_140) {
                case 0:
                    if (Vec3p_Distance(&this->mPos, &gPlayerPos) <= 0x1000) {
                        this->func_ov000_02090774(1);
                        return;
                    }
                    break;
                case 1:
                    break;
                case 2:
                    if (this->mUnk_160.mUnk_5c.mUnk_08 >= 0x5A000 && Vec3p_Distance(&this->mPos, &gPlayerPos) > 0x1000) {
                        this->func_ov000_02090774(1);
                        return;
                    }
                    break;
                default:
                    break;
            }

            if (this->mUnk_160.mUnk_5c.mUnk_00 == 1) {
                if (this->mUnk_160.mUnk_5c.func_0202e58c() != 0) {
                    func_ov000_02090774(1);
                }
            } else {
                if (!gAdventureFlags->func_ov00_02097738()) {
                    this->mUnk_158++;
                }

                if (this->mUnk_158 >= 0x258) {
                    func_ov000_02090774(1);
                }
            }
            break;
        case 1:
            break;
        default:
            break;
    }

    this->mUnk_160.func_0203516c();
}

ARM bool ActorEventIcon::func_ov000_02090774(u32 param1) {
    this->mUnk_130 = param1;

    switch (this->mUnk_130) {
        case 0:
            this->mUnk_158 = 0;
            break;
        case 1:
            this->mAlive = false;
            break;
        default:
            break;
    }

    return true;
}

ARM void ActorEventIcon::vfunc_1c(u16 *param1) {
    unk32 iStack_c;
    unk32 iStack_10;

    if (((*param1 & 4) == 0) && ((*param1 & 8) == 0)) {
        return;
    }

    if (func_ov000_02079470(data_027e0d3c, &this->mPos, 0, 0, &iStack_c, &iStack_10, 0, 0) != 0) {
        switch (this->mUnk_144) {
            case 1:
                if (this->mUnk_160.mUnk_80 >= 8) {
                    iStack_10 -= 8;
                } else {
                    iStack_10 -= 0xe;
                }
                break;
            case 2:
                iStack_c++;

                if (this->mUnk_160.mUnk_80 >= 8) {
                    iStack_10 -= 0xb;
                } else {
                    iStack_10 -= 0x11;
                }
                break;
            default:
                iStack_10 += this->mUnk_15c;
                break;
        }

        this->mUnk_160.func_02034a1c(iStack_c, iStack_10, 0);
    }
}

ARM ActorEventIcon::~ActorEventIcon() {}
