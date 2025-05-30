#pragma once

#include "Actor/Navi/ActorNaviBase.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"

class UnkStruct_ov000_020b8110 : public UnkStruct_ov000_020beba8 {
public:
    /* 0 (base) */
    /* c */

    /* 00 */ virtual ~UnkStruct_ov000_020b8110() override;
    /* 08 */ virtual void vfunc_08(unk16 *param1) override;
    /* 14 */ virtual void vfunc_14(u16 *param1) override;
    /* 18 */ virtual void vfunc_18(s32 *param1) override;
    /* 1c */

    UnkStruct_ov000_020b8110();
};

class ActorNavi : public ActorNaviBase {
public:
    static ActorType gType;

    /* 000 (base) */
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
    /* 3b4 */ EquipHammer *mHammer;
    /* 3b8 */ unk32 mUnk_3b8;
    /* 3bc */ unk32 mUnk_3bc;
    /* 3c0 */ unk8 mUnk_3c0[0x8];
    /* 3c8 */

    /* 00 */ virtual ~ActorNavi() override;
    /* 08 */ virtual bool Init() override;
    /* 20 */ virtual void vfunc_20(bool param1) override;
    /* 8c */ virtual bool vfunc_8c() override;
    /* b4 */ virtual FairyId GetFairyId() override;
    /* b8 */ virtual s32 vfunc_b8() override;
    /* c0 */ virtual bool vfunc_c0(Vec3p *param1) override;
    /* c4 */ virtual void vfunc_c4() override;
    /* c8 */ virtual void vfunc_c8() override;
    /* cc */ virtual bool vfunc_cc(unk32 *param1) override;
    /* d0 */ virtual void vfunc_d0() override;
    /* d4 */ virtual void vfunc_d4() override;
    /* d8 */ virtual void vfunc_d8() override;
    /* dc */ virtual void SetActive(bool active) override;
    /* e0 */ virtual void vfunc_e0() override;
    /* e8 */ virtual void vfunc_e8() override;
    /* ec */ virtual void vfunc_ec() override;

    static ActorNavi *Create();
    void func_ov000_020b8200();
    void func_ov000_020b853c();

    ActorNavi();
};
