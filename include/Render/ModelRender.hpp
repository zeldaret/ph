#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"

class ItemModel;

class ModelRender : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ u32 mUnk_04;
    /* 08 */ void *mLcdcAddr;
    /* 0c */ s32 mUnk_0c;
    /* 10 */ unk32 mUnk_10;
    /* 14 */ s32 mUnk_14;
    /* 18 */ unk32 mUnk_18;
    /* 1c */ s32 mUnk_1c;
    /* 20 */ unk8 mUnk_20[0x38];
    /* 58 */ void *mUnk_58;
    /* 5c */

    /* 00 */ virtual ~ModelRender();
    /* 08 */ virtual void *GetLcdcAddress();
    /* 0c */ virtual void vfunc_0c(ItemModel *model);
    /* 10 */ virtual void SetTransform(Vec3p *scale, Mat3p *rotation, Vec3p *translation);
    /* 14 */ virtual void SetRotationTranslation(Mat3p *rotation, Vec3p *translation);
    /* 18 */ virtual void SetTranslation(Vec3p *translation);
    /* 1c */ virtual void PushGeometryCommands();
    /* 20 */ virtual void vfunc_20();
    /* 24 */ virtual void vfunc_24(UnkStruct_ov000_020c0c08 *param1);
    /* 28 */ virtual void vfunc_28();
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30();
    /* 34 */ virtual void vfunc_34();
    /* 38 */ virtual void vfunc_38();
    /* 3c */ virtual void vfunc_3c();
    /* 40 */

    ModelRender(unk32 param1);
    void *func_ov000_020a9624(s32 param1);
    void func_ov000_020a98e8(unk32 param1);
    void func_ov000_020a990c(unk32 param1);
    void func_ov000_020a9938(unk32 param1);
    void func_ov000_020a9960(unk32 param1);
    void func_ov000_020a9998(unk32 param1, unk32 param2);
    void func_ov000_020a99c0();
    void func_ov000_020b413c(unk16 param1, Vec3p *param2);
};
