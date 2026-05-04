#pragma once

#include "global.h"
#include "types.h"

#include "nds/g3d/sbc.h"
#include <nds/math.h>

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"

class ModelRender;

struct ModelRenderCommandsData {
    /* 00 */ u8 command;
    /* 04 */ G3d_RenderObject *unkStruct4;
    /* 08 */
};

class ItemModel;

class ModelRender : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ G3d_RenderObject renderObj;
    /* 58 */ G3d_BoneMtxStruct *unkBoneMatrixArray2;
    /* 5c */

    /* 00 */ virtual ~ModelRender();
    /* 08 */ virtual void *GetLcdcAddress();
    /* 0c */ virtual void Init_RenderObject(ItemModel *model);
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
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData);
    /* 40 */

    ModelRender(ItemModel *itemModel);
    G3d_BoneMtxStruct *UnkGetBoneMatrix(s32 index);
    s32 GetObjectIndex(char *objectName);
    s32 GetMaterialIndex(char *materialName);
    void InitBoneMatrixArrays(u32 idLength);
    void SetUnkBoneMatrixArray1(G3d_BoneMtxStruct *boneMatrix);
    void UnkInit_Struct4_Params(u8 param1, u8 param2);
    void func_ov000_020b413c(unk16 param1, Vec3p *param2);
};
