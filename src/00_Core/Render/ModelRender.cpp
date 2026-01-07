#include "Render/ModelRender.hpp"
#include "DTCM/UnkStruct_027e037c.hpp"

extern "C" void func_020189dc(ModelRender_UnkStruct_4 *unkStruct4, ItemModel *model);
extern "C" void func_02018c3c(ModelRender_UnkStruct_4 *unkStruct4, void *param2);
extern "C" void func_02018c90(ModelRender_UnkStruct_4 *unkStruct4, void (*func)(ModelRenderCommandsData *), unk32 param3,
                              void *param4, unk32 param5);
extern "C" void ExecModelRenderCommands(ModelRender_UnkStruct_4 *unkStruct4);
extern "C" void CopySingle288(Mat3p *src, Mat3p *dest);
extern "C" void SetGeometryScale(Vec3p *scale);
extern "C" void SetGeometryTranslation(Vec3p *translation);
extern "C" void PushGeometryCommand(u32 command, void *data, s32 length);
extern "C" void func_ov000_020c0d70(UnkStruct_ov000_020c0c08 *param1, ModelRender_UnkStruct_4 *param2);
extern "C" void func_ov000_020b3ea8(void *param1);
extern "C" unk32 func_0201e388(void *param1, const char *param2);
extern "C" u8 *GetModelUnknownHeader(ModelRender *modelRender);
extern "C" Mat3p gGeomMatrix;
extern "C" Vec3p gGeomTranslation;
extern "C" Vec3p gGeomScale;
extern "C" UnkStruct_027e037c data_027e037c;
extern "C" void *data_027e03c8;
extern "C" Vec3p gDefaultScale;
extern "C" Mat3p gDefaultMatrix;
extern "C" u32 *data_027e0ce0[];

THUMB ModelRender::ModelRender(ItemModel *itemModel) {
    this->mUnk_04.unkBoneMatrixArray2 = NULL;
    this->Init_ModelRender_UnkStruct_4(itemModel);
}

THUMB ModelRender::~ModelRender() {
    if (this->mUnk_04.unkBoneMatrixArray2 != NULL) {
        SysObject::operator delete[](this->mUnk_04.unkBoneMatrixArray2);
    }
    func_ov000_020b3ea8(this);
}

ARM void *ModelRender::GetLcdcAddress() {
    return mUnk_04.mLcdcAddr;
}

void ModelRender::Init_ModelRender_UnkStruct_4(ItemModel *model) {
    func_020189dc(&this->mUnk_04, model);
}

ModelRender_UnkBoneMatrixStruct *ModelRender::UnkGetBoneMatrix(s32 index) {
    if (this->mUnk_04.unkBoneMatrixArray2 != NULL) {
        return &this->mUnk_04.unkBoneMatrixArray2[index];
    }
    if (this->mUnk_04.unkBoneMatrixArray1 != NULL) {
        return &this->mUnk_04.unkBoneMatrixArray1[index];
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
    ExecModelRenderCommands(&this->mUnk_04);
}

void ModelRender::vfunc_24(UnkStruct_ov000_020c0c08 *param1) {
    func_ov000_020c0d70(param1, &this->mUnk_04);
}

void ModelRender::vfunc_28() {
    while (this->mUnk_04.mUnk_10 != NULL) {
        func_02018c3c(&this->mUnk_04, this->mUnk_04.mUnk_10);
    }
    while (this->mUnk_04.mUnk_08 != NULL) {
        func_02018c3c(&this->mUnk_04, this->mUnk_04.mUnk_08);
    }
    while (this->mUnk_04.mUnk_18 != NULL) {
        func_02018c3c(&this->mUnk_04, this->mUnk_04.mUnk_18);
    }
}

void ModelRender::vfunc_2c() {
    while (this->mUnk_04.mUnk_10 != NULL) {
        func_02018c3c(&this->mUnk_04, this->mUnk_04.mUnk_10);
    }
}

void ModelRender::vfunc_34() {
    while (this->mUnk_04.mUnk_18 != NULL) {
        func_02018c3c(&this->mUnk_04, this->mUnk_04.mUnk_18);
    }
}

void ModelRender::vfunc_30() {
    while (this->mUnk_04.mUnk_08 != NULL) {
        func_02018c3c(&this->mUnk_04, this->mUnk_04.mUnk_08);
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

    ModelRender_UnkBoneMatrixStruct *boneMatrixArray =
        (ModelRender_UnkBoneMatrixStruct *) SysObject::operator new[](boneMatrixCount * 0x58, id, idLength);
    this->mUnk_04.unkBoneMatrixArray2 = boneMatrixArray;
    this->mUnk_04.unkBoneMatrixArray1 = boneMatrixArray;
}

ARM void ModelRender::SetUnkBoneMatrixArray1(ModelRender_UnkBoneMatrixStruct *boneMatrix) {
    this->mUnk_04.unkBoneMatrixArray1 = boneMatrix;
}

void ModelRender::vfunc_38() {
    this->mUnk_04.flags |= 3;
    ExecModelRenderCommands(&this->mUnk_04);
    this->mUnk_04.flags &= 0xfffffffd;
}

void ModelRender::vfunc_3c() {}

void func_ov000_020a99c0(ModelRenderCommandsData *renderData) {
    renderData->unkStruct4->mUnk_2c->vfunc_3c();
}

void ModelRender::func_ov000_020a9998(unk32 param1, unk32 param2) {
    this->mUnk_04.mUnk_2c = this;
    func_02018c90(&this->mUnk_04, &func_ov000_020a99c0, 0, (void *) param1, param2);
}