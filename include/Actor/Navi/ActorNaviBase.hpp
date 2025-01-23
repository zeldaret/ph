#pragma once

#include "global.h"
#include "types.h"

#include "Actor/Actor.hpp"
#include "Render/ModelRender.hpp"

class ActorNaviBase_Unk1 {};

class ActorNaviBase : public Actor {
    /* 000 (base) */
    /* 158 */ Vec3p mUnk_158;
    /* 164 */ unk32 mUnk_164;
    /* 168 */ unk8 mUnk_168[0x68];
    /* 1d0 */ void *mUnk_1d0;
    /* 1d4 */ unk8 mUnk_1d4[0x30];
    /* 214 */ unk16 mUnk_214;
    /* 216 */ unk8 mUnk_216[0xc];
    /* 222 */ unk16 mUnk_222;
    /* 224 */ unk8 mUnk_224[0x18];
    /* 24c */ unk32 mUnk_24c;
    /* 250 */ unk32 mUnk_250;
    /* 254 */ unk32 mUnk_254;
    /* 258 */ unk32 mUnk_258;
    /* 25c */ unk32 mUnk_25c;
    /* 260 */ unk32 mUnk_260;
    /* 264 */ unk8 mUnk_264[0x1c];
    /* 280 */ unk32 mUnk_280;
    /* 284 */ unk32 mUnk_284;
    /* 288 */ unk8 mUnk_288[0x2];
    /* 28a */ unk16 mUnk_28a;
    /* 28c */ unk8 mUnk_28c[0x8];
    /* 294 */ ModelRender mUnk_294;
    /* 2f0 */ void *mUnk_2f0;
    /* 2f4 */ unk8 mUnk_2f4[0x40];
    /* 334 */ unk32 mUnk_334;
    /* 338 */ unk32 mUnk_338;
    /* 33c */ unk32 mUnk_33c;
    /* 340 */ unk16 mUnk_340;
    /* 342 */ unk8 mUnk_342[0x2];
    /* 344 */ unk32 mUnk_344;
    /* 348 */ unk32 mUnk_348;
    /* 34c */ unk8 mUnk_34c[0x68];
    /* 3b4 */ unk32 mUnk_3b4;
    /* 3b8 */ unk32 mUnk_3b8;
    /* 3bc */ unk32 mUnk_3bc;
    /* 3c0 */ unk8 mUnk_3c0[0x8];
    /* 3c8 */

    /* 00 */ ~ActorNaviBase() override;
    /* 08 */ bool vfunc_08() override;
    /* 10 */ void vfunc_10(u32 param1) override;
    /* 14 */ void vfunc_14(u32 param1) override;
    /* 18 */ void vfunc_18(u32 param1) override;
    /* 20 */ void vfunc_20(bool param1) override;
    /* 30 */ unk32 vfunc_30() override;
    /* 34 */ void GetOffsetPos(Vec3p *pos) override;
    /* 38 */ unk32 vfunc_38() override;
    /* 74 */ void vfunc_74() override;
    /* 78 */ bool vfunc_78() override;
    /* 80 */ void vfunc_80() override;
    /* 84 */ void vfunc_84() override;
    /* 90 */ bool vfunc_90() override;
    /* 94 */ void vfunc_94() override;
    /* a0 */ bool TrySetTransform(Transform *transform) override;
    /* b0 */ void SetTransform(Transform *transform) override;
    /* b4 */ virtual void vfunc_b4() = 0;
    /* b8 */ virtual s32 vfunc_b8();
    /* bc */ virtual bool vfunc_bc(unk32 param1, unk8 param2, s32 param3);
    /* c0 */ virtual bool vfunc_c0(Vec3p *param1);
    /* c4 */ virtual void vfunc_c4();
    /* c8 */ virtual void vfunc_c8();
    /* cc */ virtual bool vfunc_cc(unk32 *param1);
    /* d0 */ virtual void vfunc_d0();
    /* d4 */ virtual void vfunc_d4();
    /* d8 */ virtual void vfunc_d8();
    /* dc */ virtual void SetActive(bool active);
    /* e0 */ virtual void vfunc_e0();
    /* e4 */ virtual void vfunc_e4();
    /* e8 */ virtual void vfunc_e8();
    /* ec */ virtual void vfunc_ec();
    /* f0 */

    void func_ov000_020b8c50();
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
};
