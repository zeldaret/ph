#pragma once

#include "types.h"

#include "Actor/Actor.hpp"
#include "Map/TilePos.hpp"
#include "Player/EquipItem.hpp"
#include "Render/ModelRender.hpp"
#include "Unknown/UnkStruct_ov000_020beba8.hpp"

class EquipBombchu_Unk_02198d00 : public UnkStruct_ov000_020beba8 {
public:
    /* 0 (base) */
    /* 0c */ unk8 mUnk_0c[4];
    /* 10 */ TilePos mUnk_10;
    /* 12 (padding) */
    /* 14 */ Vec3p mUnk_14;
    /* 20 */

    /* 08 */ virtual bool vfunc_08(UnkStruct_ov000_020beba8_08 *param1) override;
    /* 0c */ virtual void vfunc_0c(unk16 *param1) override;
    /* 10 */ virtual bool vfunc_10(s32 *param1) override;
    /* 14 */ virtual bool vfunc_14(u16 *param1, s32 param2) override;
    /* 1c */

    inline EquipBombchu_Unk_02198d00() :
        UnkStruct_ov000_020beba8(3) {}
};

class EquipBombchu : public EquipItem {
public:
    static ModelRender gModelRenderBombchu;
    static ModelRender gModelRenderBombchuPt;

    /* 00 (base) */
    /* 09 */ u8 mUnk_09[3];
    /* 0c */ ActorRef mBombchuRef;
    /* 14 */ unk32 mUnk_14;
    /* 18 */ s32 mUnk_18;
    /* 1c */ TilePos *mUnk_1c;
    /* 20 */ Vec3p mUnk_20;
    /* 2c */ Vec3p mUnk_2c;
    /* 38 */ Vec3p mUnk_38;
    /* 44 */ s16 mUnk_44;
    /* 46 */ bool mUnk_46;
    /* 47 */ bool mUnk_47;
    /* 48 */ bool mUnk_48;
    /* 49 */ unk8 mUnk_49[3];
    /* 4c */

    /* 00 */ virtual void vfunc_00() override;
    /* 04 */ virtual ~EquipBombchu() override;
    /* 0c */ virtual ItemFlag GetId() const override;
    /* 14 */ virtual bool IsUsable(unk32 param1) const override;
    /* 18 */ virtual void vfunc_18() override;
    /* 1c */ virtual void vfunc_1c() override;
    /* 30 */ virtual void vfunc_30() override;
    /* 34 */ virtual void vfunc_34(unk16 *param1) override;
    /* 38 */ virtual void vfunc_38(unk32 param1) override;
    /* 50 */

    EquipBombchu();
    void func_ov014_0213eba4();
    void func_ov014_0213ec40();
    void func_ov014_0213ec64();
    Actor *func_ov014_0213ed74() const;
    void *func_ov014_0213ed94(s32 param1);
    void func_ov014_0213eda0();

    void func_ov058_02199228();
    void func_ov058_0219926c();
    bool CheckUsable(unk32 param1) const;
    Actor *func_ov058_02199400();
    bool func_ov058_02199498(Vec3p *vec);
    unk32 func_ov058_02199ef0(TilePos param1);
    unk32 func_ov058_02199fd8(TilePos param1);
    unk32 func_ov058_0219a084(TilePos param1);
    bool func_ov058_0219a3b4(TilePos param1);
};
