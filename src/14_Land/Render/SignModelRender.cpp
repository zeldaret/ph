#include "Render/SignModelRender.hpp"

extern "C" void func_02018cb8(ModelRender_UnkStruct_4 *param_1, void (*param_2)(ModelRenderCommandsData *));
extern "C" void ApproachAngle_thunk(u16 *src, s16 dst, u32 param3);
extern "C" unk32 func_0201e388(void *param1, const char *param2);

void func_ov014_0212d564(ModelRenderCommandsData *renderData);
void func_ov014_0212d534(ModelRenderCommandsData *renderData);
void func_ov014_0212d54c(ModelRenderCommandsData *renderData);

SignModelRender::SignModelRender(ItemModel *itemModel) :
    ModelRender(itemModel),
    transparency(0),
    xRotationAngle(0),
    yRotationAngle(0),
    impactAngle(0) {
    position.x            = 0;
    position.y            = 0;
    position.z            = 0;
    acceleration.x        = 0;
    acceleration.y        = 0;
    acceleration.z        = 0;
    this->mUnk_04.mUnk_2c = this;
    func_02018cb8(&this->mUnk_04, &func_ov014_0212d564);
}

void SignModelRender::SetImpactDirection(Vec3p *dir) {
    Vec3p tempVec = *dir;
    if (Vec3p_TryNormalize(&tempVec)) {
        Vec3p_Scale(&tempVec, FLOAT_TO_Q20(0.04));
    }

    q20 tempz = tempVec.z;
    q20 tempx = tempVec.x;

    this->acceleration.x = tempx;
    this->acceleration.y = FLOAT_TO_Q20(0.15);
    this->acceleration.z = tempz;
    this->impactAngle    = FX_Atan2Idx(dir->x, dir->z);
    this->transparency   = 0;
}

bool SignModelRender::CalculateBrokenSignState() {
    this->acceleration.y -= FLOAT_TO_Q20(0.05);
    Vec3p_Add(&this->position, &this->acceleration, &this->position);
    if (this->position.y <= -FLOAT_TO_Q20(0.8)) {
        this->acceleration.x = 0;
        this->acceleration.y = 0;
        this->acceleration.z = 0;
        this->position.y     = -FLOAT_TO_Q20(0.8);
        this->transparency += 1;
    } else {
        ApproachAngle_thunk((u16 *) &this->yRotationAngle, this->impactAngle, 1000);
    }
    ApproachAngle_thunk((u16 *) &this->xRotationAngle, -FLOAT_TO_Q20(4), 3000);
    return 0x1e <= this->transparency;
}

void SignModelRender::UpdateBrokenPiecePosition(ModelRenderCommandsData *renderData) {
    if (renderData->currentCommand[1] == func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "kanbanB")) {
        u32 flag    = renderData->transformations->flags;
        u32 newFlag = flag & ~4;
        if (this->xRotationAngle != 0) {
            newFlag = flag & ~2;
        }
        renderData->transformations->flags = newFlag;

        (renderData->transformations->translationVector).y = (this->position).y + FLOAT_TO_Q20(0.8);
        (renderData->transformations->translationVector).x = (this->position).x;
        (renderData->transformations->translationVector).z = (this->position).z;

        if (this->xRotationAngle != 0) {
            Mat3p_InitXRotation(&renderData->transformations->rotationMatrix, SIN((u16) this->xRotationAngle),
                                COS((u16) this->xRotationAngle));
            Mat3p rotMatrix;
            Mat3p_InitYRotation(&rotMatrix, SIN((u16) this->yRotationAngle), COS((u16) this->yRotationAngle));
            Mat3p_Multiply(&renderData->transformations->rotationMatrix, &rotMatrix,
                           &renderData->transformations->rotationMatrix);
        }
    }
}

void SignModelRender::SetTransparencyAfterDamage(ModelRenderCommandsData *renderData) {
    if (this->transparency != 0) {
        ItemModel *itemPTR = renderData->unkStruct4->mLcdcAddr;
        u32 matIndex       = func_0201e388((void *) ((int) itemPTR + itemPTR->materialsOffset + 4), "kanban_mat");
        s32 currentMaterial;
        ModelRender_MaterialData *materialPtr = renderData->unkMaterialDataPTR;
        if ((renderData->flags & 8) != 0) {
            currentMaterial = (s32) renderData->currentMaterial;
        } else {
            currentMaterial = -1;
        }
        if (matIndex == currentMaterial) {
            materialPtr->polygon_attr = materialPtr->polygon_attr & 0xffe0ffff | (0x1f - this->transparency) << 16;
        }
    }
}

void SignModelRender::func_ov014_0212d50c(ModelRenderCommandsData *renderData) {
    renderData->mUnkFunc_24 = (void *) &func_ov014_0212d534;
    renderData->mUnk_92     = 2;
    renderData->mUnkFunc_1c = (void *) &func_ov014_0212d54c;
    renderData->mUnk_90     = 2;
}

void func_ov014_0212d534(ModelRenderCommandsData *renderData) {
    ((SignModelRender *) renderData->unkStruct4->mUnk_2c)->UpdateBrokenPiecePosition(renderData);
}

void func_ov014_0212d54c(ModelRenderCommandsData *renderData) {
    ((SignModelRender *) renderData->unkStruct4->mUnk_2c)->SetTransparencyAfterDamage(renderData);
}

void func_ov014_0212d564(ModelRenderCommandsData *renderData) {
    ((SignModelRender *) renderData->unkStruct4->mUnk_2c)->func_ov014_0212d50c(renderData);
}

SignModelRender::~SignModelRender() {}