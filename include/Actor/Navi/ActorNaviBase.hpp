#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Player/EquipHammer.hpp"
#include "Render/ModelRender.hpp"
#include "Unknown/UnkStruct_ov000_020b7d74.hpp"
#include "Unknown/UnkStruct_ov000_020d18f4.hpp"

typedef s32 FairyId;
enum FairyId_ {
    FairyId_None    = -1,
    FairyId_Courage = 0,
    FairyId_Power   = 1,
    FairyId_Wisdom  = 2,
    FairyId_COUNT   = 3,
};

class ActorNaviBase_Unk1 : public UnkStruct_ov000_020b7d74 {
public:
    ActorNaviBase_Unk1();
};

class ActorNaviBase_Unk2 : public UnkStruct_ov000_020c0c08 {
public:
    /* 00 (base) */
    /* 24 */ UnkStruct_ov000_020c0c08_04 mUnk_24;
    /* 44 */

    /* 00 */ virtual ~ActorNaviBase_Unk2() override;
    /* 08 */

    inline ActorNaviBase_Unk2(ItemModel *model) :
        UnkStruct_ov000_020c0c08(&mUnk_24, model) {}
    inline ActorNaviBase_Unk2(NsAnimation *param2, ItemModel *model) :
        UnkStruct_ov000_020c0c08(&mUnk_24, model) {
        this->func_ov000_020c0c44(param2);
    }
};

class ActorNaviBase_Unk3 : public ModelRender {
public:
    /* 00 */ virtual ~ActorNaviBase_Unk3() {}
    /* 3c */ virtual void vfunc_3c() override;
    /* 40 */

    ActorNaviBase_Unk3(ItemModel *param1);
};

class ActorNaviBase : public Actor {
public:
    /* 000 (base) */
    /* 158 */ Vec3p mOffsetPos;
    /* 164 */ unk32 mUnk_164;
    /* 168 */ ActorNaviBase_Unk3 mUnk_168;
    /* 1c4 */ unk8 mUnk_1c4[0xc];
    /* 1d0 */ ActorNaviBase_Unk2 mUnk_1d0;
    /* 214 */ unk16 mUnk_214;
    /* 216 */ unk8 mUnk_216[0x2];
    /* 218 */ ActorNaviBase_Unk1 mUnk_218[2];
    /* 220 */ unk8 mUnk_220[0x2];
    /* 222 */ unk16 mUnk_222;
    /* 224 */ UnkStruct_ov000_020d18f4 mUnk_224;
    /* 280 */ unk32 mUnk_280;
    /* 284 */ unk32 mUnk_284;
    /* 288 */ unk8 mUnk_288;
    /* 288 */ unk8 mUnk_289;
    /* 28a */ unk16 mUnk_28a;
    /* 28c */ unk8 mUnk_28c;
    /* 28d */ unk8 mUnk_28d;
    /* 28e */ unk8 mUnk_28e;
    /* 28e */ unk8 mUnk_28f;
    /* 290 */ unk8 mUnk_290;
    /* 291 */ unk8 mUnk_291;
    /* 294 */

    /* 00 */ virtual ~ActorNaviBase() override;
    /* 08 */ virtual bool Init() override;
    /* 10 */ virtual void vfunc_10(u32 param1) override;
    /* 14 */ virtual void vfunc_14(u32 param1) override;
    /* 18 */ virtual void vfunc_18(u32 param1) override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* 30 */ virtual unk32 vfunc_30() override;
    /* 34 */ virtual void GetOffsetPos(Vec3p *pos) override;
    /* 38 */ virtual unk32 vfunc_38() override;
    /* 74 */ virtual void vfunc_74() override;
    /* 78 */ virtual bool vfunc_78() override;
    /* 80 */ virtual void vfunc_80() override;
    /* 84 */ virtual void vfunc_84() override;
    /* 90 */ virtual bool vfunc_90() override;
    /* 94 */ virtual void vfunc_94() override;
    /* b4 */ virtual FairyId GetFairyId() = 0;
    /* b8 */ virtual s32 vfunc_b8();
    /* bc */ virtual bool vfunc_bc(unk32 param1, unk8 param2, s32 param3);
    /* c0 */ virtual bool vfunc_c0(Vec3p *param1);
    /* c4 */ virtual u16 vfunc_c4();
    /* c8 */ virtual u16 vfunc_c8();
    /* cc */ virtual bool vfunc_cc(unk32 *param1);
    /* d0 */ virtual void vfunc_d0();
    /* d4 */ virtual void vfunc_d4();
    /* d8 */ virtual void vfunc_d8();
    /* dc */ virtual void SetActive(unk32 active);
    /* e0 */ virtual void vfunc_e0();
    /* e4 */ virtual void vfunc_e4();
    /* e8 */ virtual void vfunc_e8();
    /* ec */ virtual void vfunc_ec();
    /* f0 */

    void func_ov000_020b8c50(unk32);
    void func_ov000_020b8c98(unk32 param1, unk32 param2, unk32 param3);
    void TeleportAboveLink();
    void func_ov000_020b9770(s32 param1);
    void func_ov000_020b9fdc();
    void func_ov000_020b9fe8();
    unk32 func_ov000_020ba204(Vec3p *param1, Vec3p *param2, s32 param3);
    unk32 func_ov000_020ba3b4();
    void func_ov000_020ba414(Vec3p *param1);
    bool func_ov000_020ba458();
    void func_ov000_020ba4e4();
    void func_ov000_020ba53c();
    void func_ov000_020baca8(Vec3p *param1, unk32 param2);
    void func_ov000_020bad18();
    static void func_ov000_020bb0ac();
    static void func_ov000_020bb0e0();

    ActorNaviBase();
};
