#pragma once

#include "global.h"
#include "types.h"

#include "Map/MapBase.hpp"
#include "Render/ModelRender.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"

class MapOverworld_Unk1 : public UnkStruct_ov000_020c0c08 {
public:
    /* 00 (base) */
    /* 24 */

    MapOverworld_Unk1(u32 param1, ItemModel *param2, unk32 param3);
};

class MapOverworld : public MapBase {
public:
    /* 000 (base) */
    /* 1b0 */ void *mUnk_1b0;
    /* 1b4 */ unk8 mUnk_1b4;
    /* 1b5 */ unk8 mUnk_1b5;
    /* 1b6 */ unk8 mUnk_1b6;
    /* 1b7 */ unk8 mUnk_1b7;
    /* 1b8 */ u8 mUnk_1b8;
    /* 1b9 */ unk8 mUnk_1b9;
    /* 1ba */ unk8 mUnk_1ba;
    /* 1bb */ unk8 mUnk_1bb;
    /* 1bc */ s32 mUnk_1bc;
    /* 1c0 */ ModelRender *mUnk_1c0;
    /* 1c4 */ void *mUnk_1c4;
    /* 1c8 */ void *mUnk_1c8;
    /* 1cc */ unk8 mUnk_1cc;
    /* 1cd */ unk8 mUnk_1cd;
    /* 1ce */ unk8 mUnk_1ce[0x2];
    /* 1d0 */ unk32 mUnk_1d0;
    /* 1d4 */ unk32 mUnk_1d4;
    /* 1d8 */ s16 mUnk_1d8;
    /* 1da */ s16 mUnk_1da;
    /* 1dc */

    /* 00 */ virtual ~MapOverworld() override;
    /* 08 */ virtual void vfunc_08(u32 param_2, u32 param_3, Course *param_4) override;
    /* 14 */ virtual void vfunc_14() override;
    /* 1c */ virtual void vfunc_1c(bool param_2) override;
    /* 20 */ virtual void vfunc_20(s32 param_2) override;
    /* 2c */ virtual void vfunc_2c() override;
    /* 4c */ virtual s32 vfunc_4c() override;
    /* 54 */ virtual unk32 vfunc_54() override;
    /* 58 */ virtual unk32 vfunc_58() override;
    /* 5c */ virtual unk32 vfunc_5c() override;
    /* 60 */ virtual unk32 vfunc_60() override;
    /* 64 */ virtual unk32 vfunc_64() override;
    /* 78 */ virtual unk32 *vfunc_78() override;
    /* 7c */ virtual unk32 vfunc_7c() override;
    /* 80 */ virtual unk32 vfunc_80() override;
    /* 94 */ virtual void vfunc_94() override;
    /* 98 */ virtual void vfunc_98() override;
    /* a4 */ virtual unk32 vfunc_a4() override;
    /* b0 */ virtual void vfunc_b0(unk32 param_2, unk32 param_3) override;
    /* bc */ virtual void vfunc_bc() override;
    /* c0 */ virtual void vfunc_c0() override;
    /* c4 */

    MapOverworld(u32 width, u32 height);
    void func_ov018_0215bfc8();
    u32 func_ov018_0215c34c();
    u32 func_ov018_0215c368();
    s32 func_ov018_0215c380(u8 *param1);
    void func_ov018_0215c650();
    void func_ov018_0215c6ac();
    void func_ov018_0215c6d0();
    void func_ov018_0215c9ac();
};
