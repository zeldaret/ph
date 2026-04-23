#include "Actor/Navi/ActorNaviBase.hpp"

#include "Physics/Cylinder.hpp"
#include "DTCM/UnkStruct_027e0e58.hpp"
#include "Item/ItemManager.hpp"
#include "Map/MapManager.hpp"
#include "Map/TilePos.hpp"
#include "Player/PlayerBase.hpp"
#include "Player/PlayerLinkBase.hpp"
#include "Unknown/UnkStruct_020e9360.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"

extern "C" u16 func_ov000_020b8790(s32);
extern "C" u16 func_ov000_020b87cc(s32);
extern bool func_ov000_02087e8c();
extern "C" bool func_0202b2e8(Vec3p *dst, Vec3p *target, q20 speed);
extern "C" bool Lerp(s32 *pValue, s32 dest, s32 factor, unk32 param4, u32 step);
extern "C" void Vec3p_RotateY(u32 angle, Vec3p *v);
extern "C" void func_ov000_020c0e24(UnkStruct_ov000_020c0c08 *self, s32 param2);
extern "C" void func_ov000_0207c1f8(UnkStruct_027e0e58 *self, ActorNaviBase_Unk1 *ref, u32 modelId, Vec3p *pos, s32 param5);
extern "C" void func_ov000_020b7e6c(ActorNaviBase_Unk1 *ref);
extern "C" void *func_0201e544(void *self, const char *name);
extern "C" void func_ov000_020c0cc8(UnkStruct_ov000_020c0c08 *self, void *param2, unk32 param3, unk32 param4);
extern char *data_ov000_020e678c[];
extern "C" void func_ov000_020b8830(ItemModel *model, u32 color1, u32 color2);
extern "C" void func_02019534(void *model, unk32 materialIdx, unk32 color);
extern "C" u32 func_ov000_020b3ec4(ActorNaviBase_Unk3 *unk);
extern ItemModel *data_ov000_020ee1f8;
extern Mat3p gDefaultMatrix;

static const u32 sFairyModelIds[FairyId_COUNT] = {0x24f, 0x251, 0x250};

struct ActorNaviBase_NameEntry {
    char name[16];
    u32 id;
};
static const ActorNaviBase_NameEntry sNaviNames[1] = {{"navi", 0}};

extern Vec3p data_ov000_020dc83c;
extern Vec3p data_ov000_020dc848;

ARM u16 ActorNaviBase::vfunc_c4() {
    if (mUnk_28d != 0) {
        return 0x6318;
    }
    return func_ov000_020b8790(GetFairyId());
}

ARM u16 ActorNaviBase::vfunc_c8() {
    if (mUnk_28d != 0) {
        return 0x739c;
    }
    return func_ov000_020b87cc(GetFairyId());
}

ARM unk32 ActorNaviBase::vfunc_30() {
    return 1;
}

ARM s32 ActorNaviBase::vfunc_b8() {
    return -1;
}

ARM void ActorNaviBase::GetOffsetPos(Vec3p *pos) {
    pos->x = mOffsetPos.x;
    pos->y = mOffsetPos.y;
    pos->z = mOffsetPos.z;
}

ARM unk32 ActorNaviBase::vfunc_38() {
    if (func_ov000_02087e8c()) {
        return 0x22;
    }
    return 0x20;
}

ARM void ActorNaviBase::vfunc_e4() {
    this->vfunc_e0();
}

ARM void ActorNaviBase::vfunc_84() {
    this->SetActive(5);
}

ARM void ActorNaviBase::func_ov000_020bad18() {
    mUnk_164 = 0;
    if (mUnk_130 == 7) {
        this->SetActive(5);
    }
}

ARM void ActorNaviBase::vfunc_80() {
    this->func_ov000_020ba4e4();
    this->SetActive(8);
}

ARM void ActorNaviBase::vfunc_d0() {
    Vec3p linkPos;
    GetLinkPos(&linkPos);
    switch (mUnk_130) {
        case 1:
            mOffsetPos.x = linkPos.x;
            mOffsetPos.y = linkPos.y;
            mOffsetPos.z = linkPos.z;
            mOffsetPos.y += 0x199a;
            break;
        case 6:
            mOffsetPos.x = linkPos.x;
            mOffsetPos.y = linkPos.y;
            mOffsetPos.z = linkPos.z;
            mOffsetPos.y += 0x800;
            break;
    }
}

ARM void ActorNaviBase::vfunc_d8() {}
ARM void ActorNaviBase::vfunc_ec() {}

ARM bool ActorNaviBase::vfunc_cc(unk32 *param1) {}
ARM void ActorNaviBase::func_ov000_020b8c50(unk32 param1) {
    Vec3p tmp = mPos;
    func_0202b2e8(&tmp, &mOffsetPos, param1);
    Vec3p_Sub(&tmp, &mPos, &mVel);
}

ARM void ActorNaviBase::func_ov000_020b8c98(unk32 param1, unk32 param2, unk32 param3) {
    mVel.x    = 0;
    mVel.y    = 0;
    mVel.z    = 0;
    Vec3p tmp = mPos;
    Lerp(&tmp.x, mOffsetPos.x, param1, param2, param3);
    Lerp(&tmp.y, mOffsetPos.y, 0x400, 0, 0x7FFFFFFF);
    Lerp(&tmp.z, mOffsetPos.z, param1, param2, param3);
    Vec3p_Sub(&tmp, &mPos, &mVel);
}

ARM void ActorNaviBase::vfunc_d4() {}
ARM void ActorNaviBase::SetActive(unk32 active) {
    if (mUnk_130 == 0 && active != 0) {
        u32 i;
        UnkStruct_027e0e58 *inst;
        ActorNaviBase_Unk1 *p;
        mVisible = true;
        mUnk_290 = 0;
        i        = 0;
        p        = &mUnk_218[0];
        do {
            if (p->mUnk_0 == 0) {
                inst = data_027e0e58;
                func_ov000_0207c1f8(inst, p, sFairyModelIds[GetFairyId()], &mPos, 2);
            }
            i++;
            p++;
        } while (i < 2);
        TeleportAboveLink();
    }
    switch (active) {
        case 0: {
            ActorNaviBase_Unk1 *end;
            ActorNaviBase_Unk1 *p;
            mVisible = false;
            p        = mUnk_218;
            end      = mUnk_218 + 2;
            if (p != end) {
                do {
                    func_ov000_020b7e6c(p);
                    p++;
                } while (p != end);
            }
            break;
        }
        case 1: {
            mUnk_280        = -1;
            mUnk_284        = -1;
            TilePos tilePos = gMapManager->func_ov00_02083a1c(&mPos);
            mUnk_288        = tilePos.x;
            mUnk_289        = tilePos.y;
            break;
        }
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 9:
            break;
        case 8:
            mUnk_28a = 0;
            break;
    }
    mActiveFrames = 0;
    mUnk_130      = active;
}
ARM void ActorNaviBase::TeleportAboveLink() {
    Vec3p linkPos;
    GetLinkPos(&linkPos);
    linkPos.y += 0x800;
    mPos.x     = linkPos.x;
    mPos.y     = linkPos.y;
    mPos.z     = linkPos.z;
    mPrevPos.x = linkPos.x;
    mPrevPos.y = linkPos.y;
    mPrevPos.z = linkPos.z;
}

ARM void ActorNaviBase::vfunc_e0() {}
ARM void ActorNaviBase::func_ov000_020b9770(s32 param1) {
    void *resource = func_0201e544(data_ov000_020e678c[8], sNaviNames[param1].name);
    func_ov000_020c0cc8(&mUnk_1d0, resource, 0, sNaviNames[param1].id);
    mUnk_168.vfunc_28();
    mUnk_168.vfunc_24(&mUnk_1d0);
}
ARM void ActorNaviBase::vfunc_e8() {}

ARM void ActorNaviBase::vfunc_14(u32 param1) {}

ARM void ActorNaviBase::vfunc_18(u32 param1) {}
ARM void ActorNaviBase::func_ov000_020b9fdc() {}

ARM void ActorNaviBase::func_ov000_020b9fe8() {}
ARM void ActorNaviBase::vfunc_20(bool param1) {}
ARM void ActorNaviBase::vfunc_10(u32 param1) {}

unk32 ActorNaviBase::func_ov000_020ba204(Vec3p *param1, Vec3p *param2, s32 param3) {}
ARM unk32 func_ov000_020ba350(unk32 param1) {}
ARM bool ActorNaviBase::vfunc_c0(Vec3p *param1) {}
ARM unk32 ActorNaviBase::func_ov000_020ba3b4() {}

ARM void ActorNaviBase::func_ov000_020ba414(Vec3p *param1) {}

ARM bool ActorNaviBase::func_ov000_020ba458() {}

ARM void ActorNaviBase::func_ov000_020ba4e4() {}

ARM void ActorNaviBase::func_ov000_020ba53c() {}
bool ActorNaviBase::vfunc_78() {}
ARM bool ActorNaviBase::vfunc_bc(unk32 param1, unk8 param2, s32 param3) {}
void ActorNaviBase::vfunc_74() {}
ARM void ActorNaviBase::func_ov000_020baca8(Vec3p *param1, unk32 param2) {}
bool ActorNaviBase::vfunc_90() {}
void ActorNaviBase::vfunc_94() {}
ARM void ActorNaviBase::func_ov000_020bb0ac() {}

ARM void ActorNaviBase::func_ov000_020bb0e0() {}
