#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"

class ModelRender;

struct ModelRender_UnkBoneMatrixStruct {
    /* 00 */ unk8 mUnk_00[0x58];
};

struct ModelRender_UnkStruct_4 {
    /* 00 */ unk32 flags;
    /* 04 */ void *mLcdcAddr;
    /* 08 */ void *mUnk_08; // this attribute is related to UnkStruct_ov000_020c0c08
    /* 0c */ void *mUnkTransformFunc;
    /* 10 */ void *mUnk_10; // also related to UnkStruct_ov000_020c0c08
    /* 14 */ void *mUnkMaterialFunc;
    /* 18 */ void *mUnk_18; // also related to UnkStruct_ov000_020c0c08
    /* 1c */ void *mUnkVisibilityFunc;
    /* 20 */ void *mUnkFunc_20;
    /* 24 */ unk8 mUnk_24;
    /* 25 */ unk8 mUnk_25;
    /* 26 */ unk8 mUnk_26[2];
    /* 28 */ void *mUnk_28;
    /* 2c */ ModelRender *mUnk_2c; // pointer to self?
    /* 30 */ unk32 mUnk_30;
    /* 34 */ ModelRender_UnkBoneMatrixStruct *unkBoneMatrixArray1;
    /* 38 */ unk32 mUnk_38[3];
    /* 44 */ unk32 mUnk_44[2];
    /* 4c */ unk32 mUnk_4c[2];
    /* 54 */ ModelRender_UnkBoneMatrixStruct *unkBoneMatrixArray2;
};

struct ModelRenderCommandsData {
    /* 00 */ u8 command;
    /* 04 */ ModelRender_UnkStruct_4 *unkStruct4;
};

class ItemModel;

class ModelRender : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ ModelRender_UnkStruct_4 mUnk_04;
    /* 58 */ void *mUnk_58;
    /* 5c */ unk8 mUnk_5c;

    /* 00 */ virtual ~ModelRender();
    /* 08 */ virtual void *GetLcdcAddress();
    /* 0c */ virtual void Init_ModelRender_UnkStruct_4(ItemModel *model);
    /* 10 */ virtual void SetTransform(Vec3p *scale, Mat3p *rotation, Vec3p *translation);
    /* 14 */ virtual void SetRotationTranslation(Mat3p *rotation, Vec3p *translation);
    /* 18 */ virtual void SetTranslation(Vec3p *translation);
    /* 1c */ virtual void PushGeometryCommands();
    /* 20 */ virtual void ExecRenderCommands(); // Reads the NSBMD Render Commands and push instructions to the FIFO
    /* 24 */ virtual void vfunc_24(UnkStruct_ov000_020c0c08 *param1);
    /* 28 */ virtual void vfunc_28();
    /* 2c */ virtual void vfunc_2c();
    /* 30 */ virtual void vfunc_30();
    /* 34 */ virtual void vfunc_34();
    /* 38 */ virtual void vfunc_38();
    /* 3c */ virtual void vfunc_3c();
    /* 40 */

    ModelRender(ItemModel *itemModel);
    ModelRender_UnkBoneMatrixStruct *UnkGetBoneMatrix(s32 index);
    s32 GetObjectIndex(char *objectName);
    s32 GetMaterialIndex(char *materialName);
    void InitBoneMatrixArrays(u32 idLength);
    void SetUnkBoneMatrixArray1(ModelRender_UnkBoneMatrixStruct *boneMatrix);
    void func_ov000_020a9998(unk32 param1, unk32 param2);
    void func_ov000_020b413c(unk16 param1, Vec3p *param2);
};
