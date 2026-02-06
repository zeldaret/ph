#include "Render/FlowerModelRender.hpp"

extern "C" unk32 func_0201e388(void *param1, const char *param2);

void func_ov014_0212e234();

FlowerModelRender::FlowerModelRender(ItemModel *itemModel, unk32 param2, unk32 param3) :
    ModelRender(itemModel),
    mUnk_5c(param3),
    mUnk_60(param2),
    mUnk_64(INT_TO_Q20(1)) {
    this->func_ov014_0212e234();
}

void FlowerModelRender::func_ov014_0212e234() {
    if (this->mUnk_60 != 0) {
        this->UnkInit_Struct4_Params(2, 2);
    } else {
        this->UnkInit_Struct4_Params(6, 2);
    }
}

#pragma readonly_strings on
void FlowerModelRender::vfunc_3c(ModelRenderCommandsData *renderData) {
    u32 boneIndex;
    u32 visibilityIndex;

    switch (this->mUnk_60) {
        case 1:
            if (this->mUnk_5c == 1) {
                boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "base");
            } else {
                boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "Fbomb_h");
            }

            if ((renderData->flags & 4) != 0) {
                visibilityIndex = renderData->boneVisibilityIndex;
            } else {
                visibilityIndex = -1;
            }

            if (boneIndex == visibilityIndex) {
                *renderData->boneVisibilityPtr = 0;
            }
            break;

        case 2:
            if (this->mUnk_5c == 1) {
                boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "seed");
            } else {
                boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "Fbomb_f");
            }
            if ((renderData->flags & 4) != 0) {
                visibilityIndex = renderData->boneVisibilityIndex;
            } else {
                visibilityIndex = -1;
            }
            if (boneIndex == visibilityIndex) {
                *renderData->boneVisibilityPtr = 0;
            }
            break;

        default:
            if (this->mUnk_5c == 1) {
                boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "seed");
            } else {
                boneIndex = func_0201e388(&renderData->unkStruct4->mLcdcAddr->boneList, "Fbomb_f");
            }

            if ((renderData->flags & 0x10) != 0) {
                visibilityIndex = renderData->boneMatrixIndex;
            } else {
                visibilityIndex = -1;
            }

            if (boneIndex == visibilityIndex) {
                TransformationsStruct *tf = renderData->transformations;
                u32 flags                 = tf->flags;
                flags &= ~1;
                if (this->mUnk_64 != INT_TO_Q20(1)) {
                    flags &= ~4;
                }
                tf->flags         = flags;
                tf->scaleVector.y = this->mUnk_64;
                tf->scaleVector.x = this->mUnk_64;
                tf->scaleVector.z = this->mUnk_64;
                if (this->mUnk_64 != INT_TO_Q20(1)) {
                    renderData->transformations->translationVector.y = MUL_Q20(this->mUnk_64, FLOAT_TO_Q20(0.2));
                    renderData->transformations->translationVector.x = 0;
                    renderData->transformations->translationVector.z = 0;
                }
            }
            break;
    }
}
#pragma readonly_strings reset

FlowerModelRender::~FlowerModelRender() {}