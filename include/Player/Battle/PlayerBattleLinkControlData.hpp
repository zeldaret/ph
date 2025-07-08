#pragma once

#include "global.h"
#include "types.h"

#include "Item/ItemModelLoader.hpp"
#include "Player/PlayerControlData.hpp"
#include "Unknown/UnkStruct_02035064.hpp"

class PlayerBattleLinkControlData : public PlayerControlData {
public:
    /* 000 (base) */
    /* 1a0 */ s32 mUnk_1a0;
    /* 1a4 */ unk32 mUnk_1a4;
    /* 1a8 */ UnkStruct_02035064 mUnk_1a8;
    /* 230 */ unk32 mUnk_230;
    /* 234 */ unk32 mUnk_234;
    /* 238 */ ItemModelLoader *mUnk_238;
    /* 23c */ unk32 mUnk_23c;
    /* 240 */ unk32 mUnk_240;
    /* 244 */ u8 mUnk_244;
    /* 245 */ u8 mUnk_245;
    /* 246 */ u8 mUnk_246;
    /* 247 */ unk8 mUnk_247;
    /* 248 */

    /* 04 */ virtual ~PlayerBattleLinkControlData() override;
    /* 10 */ virtual unk32 GetCharacterId() override;
    /* 14 */ virtual u16 *vfunc_14(s32 param1) override;
    /* 18 */ virtual void vfunc_18() override;
    /* 20 */ virtual void vfunc_20() override;
    /* 2c */ virtual void vfunc_2c() override;
    /* 30 */ virtual void vfunc_30() override;
    /* 38 */ virtual void vfunc_38(s32 param1, s32 param2) override;
    /* 3c */ virtual void vfunc_3c(s32 param1, s32 param2) override;
    /* 40 */ virtual void vfunc_40(u16 *param1, Vec3p *param2, unk32 param3, char param4) override;
    /* 44 */ virtual void vfunc_44(unk32 param1, unk32 *param2, unk32 param3, unk16 param4) override;
    /* 4c */ virtual void vfunc_4c(unk32 param1, Vec3p *param2) override;
    /* 60 */ virtual void vfunc_60(unk32 param1, unk32 param2, s32 param3) override;
    /* 64 */ virtual void vfunc_64(u32 param1) override;
    /* 68 */ virtual void vfunc_68(unk32 param1, unk32 param2) override;
    /* 6c */ virtual void vfunc_6c(s32 param1, Vec3p *param2) override;
    /* 70 */ virtual void vfunc_70(s32 param1) override;
    /* 80 */ virtual void vfunc_80(s32 param1) override;
    /* 84 */

    PlayerBattleLinkControlData();
    void func_ov012_0211af70();
    bool func_ov012_0211b9c4(s32 param1, Vec3p *param2);
    void func_ov012_0211bb08(s32 param1);
};
