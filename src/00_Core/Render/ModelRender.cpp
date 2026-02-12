#include "Render/ModelRender.hpp"
#include "DTCM/UnkStruct_027e037c.h"
#include "nds/g3d/sbc.h"

extern "C" void func_020189dc(G3d_RenderObject *unkStruct4, ItemModel *model);
extern "C" void func_02018c3c(G3d_RenderObject *unkStruct4, void *param2);
extern "C" void UnkInit_ModelRender_Struct4_Params(G3d_RenderObject *unkStruct4, void (*func)(ModelRenderCommandsData *),
                                                   unk32 param3, u8 param4, u8 param5);
extern "C" void CopySingle288(Mat3p *src, Mat3p *dest);
extern "C" void SetGeometryScale(Vec3p *scale);
extern "C" void SetGeometryTranslation(Vec3p *translation);
extern "C" void PushGeometryCommand(u32 command, void *data, s32 length);
extern "C" void func_ov000_020c0d70(UnkStruct_ov000_020c0c08 *param1, G3d_RenderObject *param2);
extern "C" void func_ov000_020b3ea8(void *param1);
extern "C" unk32 func_0201e388(void *param1, const char *param2);
extern "C" u8 *GetModelUnknownHeader(ModelRender *modelRender);
extern "C" Mat3p gGeomMatrix;
extern "C" Vec3p gGeomTranslation;
extern "C" Vec3p gGeomScale;
extern "C" const Mat4x3p *data_027e03c8;
extern "C" Vec3p gDefaultScale;
extern "C" Mat3p gDefaultMatrix;
extern "C" u32 *data_027e0ce0[];

THUMB ModelRender::ModelRender(ItemModel *itemModel) {
    this->unkBoneMatrixArray2 = NULL;
    this->Init_RenderObject(itemModel);
}

THUMB ModelRender::~ModelRender() {
    if (this->unkBoneMatrixArray2 != NULL) {
        SysObject::operator delete[](this->unkBoneMatrixArray2);
    }
    func_ov000_020b3ea8(this);
}

ARM void *ModelRender::GetLcdcAddress() {
    return renderObj.model;
}

void ModelRender::Init_RenderObject(ItemModel *model) {
    func_020189dc(&this->renderObj, model);
}

G3d_BoneMtxStruct *ModelRender::UnkGetBoneMatrix(s32 index) {
    if (this->unkBoneMatrixArray2 != NULL) {
        return &this->unkBoneMatrixArray2[index];
    }
    if (this->renderObj.cacheJntAnm != NULL) {
        return &this->renderObj.cacheJntAnm[index];
    }
    return NULL;
}

void ModelRender::SetTransform(Vec3p *scale, Mat3p *rotation, Vec3p *translation) {
    SetGeometryScale(scale);
    CopySingle288(rotation, &gGeomMatrix);
    data_027e037c.flags = data_027e037c.flags & 0xffffff5b;
    SetGeometryTranslation(translation);
    this->PushGeometryCommands();
    SetGeometryScale(&gDefaultScale);
    CopySingle288(&gDefaultMatrix, &gGeomMatrix);
    data_027e037c.flags = data_027e037c.flags & 0xffffff5b;
}

void ModelRender::SetRotationTranslation(Mat3p *rotation, Vec3p *translation) {
    CopySingle288(rotation, &gGeomMatrix);
    data_027e037c.flags = data_027e037c.flags & 0xffffff5b;
    SetGeometryTranslation(translation);
    this->PushGeometryCommands();
    CopySingle288(&gDefaultMatrix, &gGeomMatrix);
    data_027e037c.flags = data_027e037c.flags & 0xffffff5b;
}

void ModelRender::SetTranslation(Vec3p *translation) {
    SetGeometryTranslation(translation);
    this->PushGeometryCommands();
}

void ModelRender::PushGeometryCommands() {
    PushGeometryCommand(0x1c, &gGeomTranslation.x, 3);
    PushGeometryCommand(0x1a, &gGeomMatrix, 9);
    PushGeometryCommand(0x1b, &gGeomScale.x, 3);
    this->ExecRenderCommands();
    PushGeometryCommand(0x17, &data_027e03c8, 0xc);
}

void ModelRender::ExecRenderCommands() {
    G3d_Render(&this->renderObj);
}

void ModelRender::vfunc_24(UnkStruct_ov000_020c0c08 *param1) {
    func_ov000_020c0d70(param1, &this->renderObj);
}

void ModelRender::vfunc_28() {
    while (this->renderObj.jntAnim != NULL) {
        func_02018c3c(&this->renderObj, this->renderObj.jntAnim);
    }
    while (this->renderObj.matAnim != NULL) {
        func_02018c3c(&this->renderObj, this->renderObj.matAnim);
    }
    while (this->renderObj.mUnk_18 != NULL) {
        func_02018c3c(&this->renderObj, this->renderObj.mUnk_18);
    }
}

void ModelRender::vfunc_2c() {
    while (this->renderObj.jntAnim != NULL) {
        func_02018c3c(&this->renderObj, this->renderObj.jntAnim);
    }
}

void ModelRender::vfunc_34() {
    while (this->renderObj.mUnk_18 != NULL) {
        func_02018c3c(&this->renderObj, this->renderObj.mUnk_18);
    }
}

void ModelRender::vfunc_30() {
    while (this->renderObj.matAnim != NULL) {
        func_02018c3c(&this->renderObj, this->renderObj.matAnim);
    }
}

// An object is a subdivision of a model e.g.: link's arm, link's head, etc.
ARM s32 ModelRender::GetObjectIndex(char *objectName) {
    char *model      = (char *) GetLcdcAddress();
    void *objectList = model + 0x40;
    unk32 index      = func_0201e388(objectList, objectName);
    return index;
}

ARM s32 ModelRender::GetMaterialIndex(char *materialName) {
    char *model         = (char *) GetLcdcAddress();
    u32 materialsOffset = *(u32 *) ((u32) model + 8);
    void *materialList  = (void *) ((u32) model + materialsOffset + 4);
    unk32 index         = func_0201e388(materialList, materialName);
    return index;
}

THUMB void ModelRender::InitBoneMatrixArrays(u32 idLength) {
    u32 *id            = data_027e0ce0[1];
    u8 *unkPtr         = GetModelUnknownHeader(this);
    u8 boneMatrixCount = *(unkPtr + 3);

    G3d_BoneMtxStruct *boneMatrixArray = (G3d_BoneMtxStruct *) SysObject::operator new[](boneMatrixCount * 0x58, id, idLength);
    this->unkBoneMatrixArray2          = boneMatrixArray;
    this->renderObj.cacheJntAnm        = boneMatrixArray;
}

ARM void ModelRender::SetUnkBoneMatrixArray1(G3d_BoneMtxStruct *boneMatrix) {
    this->renderObj.cacheJntAnm = boneMatrix;
}

void ModelRender::vfunc_38() {
    this->renderObj.flag |= 3;
    G3d_Render(&this->renderObj);
    this->renderObj.flag &= 0xfffffffd;
}

void ModelRender::vfunc_3c(ModelRenderCommandsData *renderData) {}

void func_ov000_020a99c0(ModelRenderCommandsData *renderData) {
    ((ModelRender *) renderData->unkStruct4->modelRender)->vfunc_3c(renderData);
}

void ModelRender::UnkInit_Struct4_Params(u8 param1, u8 param2) {
    this->renderObj.modelRender = this;
    UnkInit_ModelRender_Struct4_Params(&this->renderObj, &func_ov000_020a99c0, 0, param1, param2);
}