#pragma once

#include "Actor/Navi/ActorNaviBase.hpp"

class ActorNavi : public ActorNaviBase {
public:
    /* 294 */ ModelRender mUnk_294;
    /* 2f0 */ void *mUnk_2f0;
    /* 2f4 */ unk8 mUnk_2f4[0x40];
    /* 334 */ Vec3p mUnk_334;
    /* 340 */ unk16 mUnk_340;
    /* 342 */ unk8 mUnk_342[0x2];
    /* 344 */ u32 mUnk_344;
    /* 348 */ unk32 mUnk_348;
    /* 34c */ unk8 mUnk_34c[0x38];
    /* 384 */ Mat3p mUnk_384;
    /* 3a8 */ unk8 mUnk_3a8[0xC];
    /* 3b4 */ EquipHammer *mHammer;
    /* 3b8 */ unk32 mUnk_3b8;
    /* 3bc */ unk32 mUnk_3bc;
    /* 3c0 */ u8 mUnk_3c0[0x8];
    /* 3c8 */

    void func_ov000_020b853c(void);

    bool func_ov059_0219933c(u32 param1);
    void func_ov059_0219a0ac();
    void func_ov059_0219aa08();
    void func_ov059_0219aba8(u32 param1);
    bool func_ov059_0219af14();
    bool func_ov059_0219afc4();
    void func_ov059_0219b020();
};
