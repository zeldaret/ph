#pragma once

#include "global.h"
#include "types.h"

#include <nds/math.h>

#include "System/SysNew.hpp"
#include "Unknown/UnkStruct_ov000_020c0c08.hpp"

class ModelRender;

struct TransformationsStruct {
    /* 00 */ u32 flags;
    /* 04 */ unk8 mUnk_04[0x24];
    /* 28 */ Mat3p rotationMatrix;
    /* 4c */ Vec3p translationVector;
};

struct ModelRender_UnkBoneMatrixStruct {
    /* 00 */ unk8 mUnk_00[0x28];
    /* 28 */ Mat3p mUnk_28;
    /* 4c */ unk8 mUnk_4c[0xC];
    /* 58 */
};

struct ModelRender_UnkStruct_4 {
    /* 00 */ unk32 flags;
    /* 04 */ ItemModel *mLcdcAddr;
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
    /* 54 */
};

struct ModelRender_MaterialData {
    /* 00 */ u32 flags;
    /* 04 */ u32 dif_amb;
    /* 08 */ u32 spe_emi;
    /* 0c */ u32 polygon_attr;
    /* 10 */ u32 teximage_params;
    /* 14 */ u32 pltt_base;
    /* 18 */ u8 mUnk_18[0xc];
    /* 24 */ unk32 mUnk_24;
    /* 28 */ unk32 mUnk_28;
    /* 2c */ u16 width;
    /* 2e */ u16 height;
    /* 30 */ u8 mUnk_30[0x8];
    /* 38 */
};

// Struct containing data used to render an NSBMD model
struct ModelRenderCommandsData {
    /* 00 */ u8 *currentCommand;
    /* 04 */ ModelRender_UnkStruct_4 *unkStruct4;
    /* 08 */ u32 flags;
    /* 0c */ unk8 mUnk_0c[0x10];
    /* 1c */ void *mUnkFunc_1c;
    /* 20 */ unk8 mUnk_20[0x4];
    /* 24 */ void *mUnkFunc_24;
    /* 28 */ unk8 mUnk_28[0x68];
    /* 90 */ unk8 mUnk_90;
    /* 91 */ unk8 mUnk_91;
    /* 92 */ unk8 mUnk_92;
    /* 93 */ unk8 mUnk_93[0x1a];
    /* ad */ u8 currentMaterial;
    /* ae */ unk8 mUnk_ae[2];
    /* b0 */ ModelRender_MaterialData *unkMaterialDataPTR;
    /* b4 */ TransformationsStruct *transformations;
    /* b8 */ u32 *boneVisibilityPtr;
    /* bc */ unk8 mUnk_bc[0x18];
    /* d4 */ void *boneList;
    /* d8 */ void *materialList;
    /* dc */ void *meshList;
    /* e0 */ u32 modelUpScale;
    /* e4 */ u32 modelDownScale;
    /* e8 */ void *scalingHandler;
    /* ec */ void *transformationsHandler;
    /* f0 */ void *materialHandler;
    /* f4 */ ModelRender_MaterialData materialData;
    /* 12c */ unk8 mUnk_12c[0x5c];
    /* 188 */
};

class ModelRender : public SysObject {
public:
    /* 00 (vtable) */
    /* 04 */ ModelRender_UnkStruct_4 mUnk_04;
    /* 58 */ ModelRender_UnkBoneMatrixStruct *unkBoneMatrixArray2;
    /* 5c */

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
    /* 3c */ virtual void vfunc_3c(ModelRenderCommandsData *renderData);
    /* 40 */

    ModelRender(ItemModel *itemModel);
    ModelRender_UnkBoneMatrixStruct *UnkGetBoneMatrix(s32 index);
    s32 GetObjectIndex(char *objectName);
    s32 GetMaterialIndex(char *materialName);
    void InitBoneMatrixArrays(u32 idLength);
    void SetUnkBoneMatrixArray1(ModelRender_UnkBoneMatrixStruct *boneMatrix);
    void UnkInit_Struct4_Params(u8 param1, u8 param2);
    void func_ov000_020b413c(unk16 param1, Vec3p *param2);
};
